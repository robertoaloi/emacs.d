;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Org Mode                                                 ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; Define variables used in the current module
(defvar pigeon-agenda-home-dir
  "~/agenda-home"
  "Path to the directory containing your home agenda")
(defvar pigeon-agenda-work-dir
  "~/agenda-work"
  "Path to the directory containing your work agenda")

;; Set Agenda files
(setq org-agenda-files (list pigeon-agenda-home-dir pigeon-agenda-work-dir))

;; Set the default view to 'daily'
;; Source: https://orgmode.org/manual/Weekly_002fdaily-agenda.html
(setq org-agenda-span 'day)

;; Enable habit tracking
(setq org-modules '(org-habit))

;; Global Key Bindings
(global-set-key "\C-cl" 'org-store-link)
(global-set-key "\C-ca" 'org-agenda)
(global-set-key "\C-cc" 'org-capture)

;; A cleaner outline view
(setq org-startup-indented t)

;; C-a and C-e should play nice with headlines
(setq org-special-ctrl-a/e t)

;; Show everything by default
(setq org-startup-folded 'showall)

;; Insert a new entry with same level as current heading,
;; without splitting the current line
(setq org-M-RET-may-split-line nil)

;; Add time information when a task is completed
;; Needed for habits, too
(setq org-log-done 'time)

;; Ensure org-todo-yesterday works as expected
(setq org-use-effective-time t)

;; Capture settings
(define-key global-map "\C-cc" 'org-capture)
(setq org-capture-templates
      `(("t" "Todo")
        ("th"
         "Todo at Home"
         entry
         (file+headline
          ,(concat pigeon-agenda-home-dir "/todos.org") "Home")
         "* TODO %?"
         )
        ("tw"
         "Todo at Work"
         entry
         (file+headline
          ,(concat pigeon-agenda-work-dir "/todos.org") "Work")
         "* TODO %?"
         )
        ("s" "Scheduled")
        ("sh"
         "Scheduled at Home"
         entry
         (file+headline
          ,(concat pigeon-agenda-home-dir "/scheduled.org") "Home")
         "* TODO %?\nSCHEDULED: %(format-time-string \"%<<%Y-%m-%d %a -0d>>\")\n"
         )
        ("sw"
         "Scheduled at Work"
         entry
         (file+headline
          ,(concat pigeon-agenda-work-dir "/scheduled.org") "Work")
         "* TODO %?\nSCHEDULED: %(format-time-string \"%<<%Y-%m-%d %a -0d>>\")\n"
         )
        ("d" "Deadline")
        ("dh"
         "Deadline at Home"
         entry
         (file+headline
          ,(concat pigeon-agenda-home-dir "/deadlines.org") "Home")
         "* TODO %?\nDEADLINE: %(format-time-string \"%<<%Y-%m-%d %a>>\")\n"
         )
        ("dw"
         "Deadline at Work"
         entry
         (file+headline
          ,(concat pigeon-agenda-work-dir "/deadlines.org") "Work")
         "* TODO %?\nDEADLINE: %(format-time-string \"%<<%Y-%m-%d %a>>\")\n"
         )
        ("b" "Breaks")
        ("bh"
         "Break at Home"
         entry
         (file+headline
          ,(concat pigeon-agenda-home-dir "/breaks.org") "Home")
         "* TODO %?\n"
         )
        ("bw"
         "Break at Work"
         entry
         (file+headline
          ,(concat pigeon-agenda-work-dir "/breaks.org") "Work")
         "* TODO %?\n"
         )
        ("h" "Habit")
        ("hh"
         "Habit at Home"
         entry
         (file+headline
          ,(concat pigeon-agenda-home-dir "/habits.org") "Home")
         "* TODO %?\nSCHEDULED: %(format-time-string \"%<<%Y-%m-%d %a .+1d/3d>>\")\n:PROPERTIES:\n:STYLE: habit\n:END:\n"
         )
        ("hw"
         "Habit at Work"
         entry
         (file+headline
          ,(concat pigeon-agenda-work-dir "/habits.org") "Work")
         "* TODO %?\nSCHEDULED: %(format-time-string \"%<<%Y-%m-%d %a .+1d/3d>>\")\n:PROPERTIES:\n:STYLE: habit\n:END:\n"
         )
        ))

;; Set files to use for refile
(setq org-refile-targets '((org-agenda-files :maxlevel . 1)))

;; Configure the default timeclock report tables
;; Based on: https://emacs.stackexchange.com/questions/8228
(defun pigeon-org-clocktable-notodo (ipos tables params)
  (cl-loop for tbl in tables
           for entries = (nth 2 tbl)
           do (cl-loop for entry in entries
                       for headline = (nth 1 entry)
                       do (setq headline (replace-regexp-in-string "TODO \\|DONE " "* " headline))
                       do (setcar (nthcdr 1 entry) headline)))
  (org-clocktable-write-default ipos tables params))
(setq org-agenda-clockreport-parameter-plist
      '(:link t :maxlevel 2 :fileskip0 t :indent nil :formatter pigeon-org-clocktable-notodo))

;; Insert state change notes and time stamps into a drawer.
;; t represents the default drawer, "LOGBOOK"
(setq org-log-into-drawer t)

;; active Babel languages
(org-babel-do-load-languages
 'org-babel-load-languages
 '((shell . t)))

;; Configure some shortcuts for frequent tags
;; SOURCES:
;; http://sachachua.com/blog/2008/01/tagging-in-org-plus-bonus-code-for-timeclocks-and-tags/
;; https://orgmode.org/manual/Setting-tags.html
(setq org-tag-alist '(("meeting" . ?m)))

;; Ensure the emacs-server is started
(server-start)

;; Add org-protocol to the list of org-modules
(setq org-modules (cons 'org-protocol org-modules))

;; Provide feature
(provide 'pigeon-org)
