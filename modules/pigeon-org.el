;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Org Mode                                                  ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; Set Agenda files
(setq org-agenda-files (list pigeon-agenda-dir))

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
(setq org-default-notes-file (concat pigeon-agenda-dir "/notes.org"))
(define-key global-map "\C-cc" 'org-capture)
(setq org-capture-templates
      '(("t"
         "todo"
         entry
         (file+headline (concat pigeon-agenda-dir "/todos.org") "TODOs")
         "* TODO %?"
         )
        ("s"
         "scheduled"
         entry
         (file org-default-notes-file)
         "* TODO %?\nSCHEDULED: %(format-time-string \"%<<%Y-%m-%d %a -0d>>\")\n"
         )
        ("d"
         "deadline"
         entry
         (file org-default-notes-file)
         "* TODO %?\nDEADLINE: %(format-time-string \"%<<%Y-%m-%d %a>>\")\n"
         )
        ("b"
         "break"
         entry
         (file (concat pigeon-agenda-dir "/breaks.org"))
         "* TODO %?\n"
         )
        ("h"
         "habit"
         entry
         (file (concat pigeon-agenda-dir "/habits/habits.org"))
         "* TODO %?\nSCHEDULED: %(format-time-string \"%<<%Y-%m-%d %a .+1d/3d>>\")\n:PROPERTIES:\n:STYLE: habit\n:END:\n"
         )
        ))

;; Set files to use for refile
(setq org-refile-targets '((org-agenda-files :maxlevel . 1)))

;; Provide feature
(provide 'pigeon-org)
