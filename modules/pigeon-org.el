;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Org Mode                                                 ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; Set Agenda files
(setq org-agenda-files (list pigeon-agenda-home-dir pigeon-agenda-work-dir))

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
      '(("t" "Todo")
        ("th"
         "Todo at Home"
         entry
         (file+headline
          (concat pigeon-agenda-home-dir "/todos.org") "Home")
         "* TODO %?"
         )
        ("tw"
         "Todo at Work"
         entry
         (file+headline
          (concat pigeon-agenda-work-dir "/todos.org") "Work")
         "* TODO %?"
         )
        ("s" "Scheduled")
        ("sh"
         "Scheduled at Home"
         entry
         (file+headline
          (concat pigeon-agenda-home-dir "/scheduled.org") "Home")
         "* TODO %?\nSCHEDULED: %(format-time-string \"%<<%Y-%m-%d %a -0d>>\")\n"
         )
        ("sw"
         "Scheduled at Work"
         entry
         (file+headline
          (concat pigeon-agenda-work-dir "/scheduled.org") "Work")
         "* TODO %?\nSCHEDULED: %(format-time-string \"%<<%Y-%m-%d %a -0d>>\")\n"
         )
        ("d" "Deadline")
        ("dh"
         "Deadline at Home"
         entry
         (file+headline
          (concat pigeon-agenda-home-dir "/deadlines.org") "Home")
         "* TODO %?\nDEADLINE: %(format-time-string \"%<<%Y-%m-%d %a>>\")\n"
         )
        ("dw"
         "Deadline at Work"
         entry
         (file+headline
          (concat pigeon-agenda-work-dir "/deadlines.org") "Work")
         "* TODO %?\nDEADLINE: %(format-time-string \"%<<%Y-%m-%d %a>>\")\n"
         )
        ("b" "Breaks")
        ("bh"
         "Break at Home"
         entry
         (file+headline
          (concat pigeon-agenda-home-dir "/breaks.org") "Home")
         "* TODO %?\n"
         )
        ("bw"
         "Break at Work"
         entry
         (file+headline
          (concat pigeon-agenda-work-dir "/breaks.org") "Work")
         "* TODO %?\n"
         )
        ("h" "Habit")
        ("hh"
         "Habit at Home"
         entry
         (file+headline
          (concat pigeon-agenda-home-dir "/habits.org") "Home")
         "* TODO %?\nSCHEDULED: %(format-time-string \"%<<%Y-%m-%d %a .+1d/3d>>\")\n:PROPERTIES:\n:STYLE: habit\n:END:\n"
         )
        ("hw"
         "Habit at Work"
         entry
         (file+headline
          (concat pigeon-agenda-work-dir "/habits.org") "Work")
         "* TODO %?\nSCHEDULED: %(format-time-string \"%<<%Y-%m-%d %a .+1d/3d>>\")\n:PROPERTIES:\n:STYLE: habit\n:END:\n"
         )
        ))

;; Set files to use for refile
(setq org-refile-targets '((org-agenda-files :maxlevel . 1)))

;; Provide feature
(provide 'pigeon-org)
