;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Org Mode                                                  ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; Global Key Bindings
(global-set-key "\C-cl" 'org-store-link)
(global-set-key "\C-ca" 'org-agenda)
(global-set-key "\C-cc" 'org-capture)
(global-set-key "\C-cb" 'org-iswitchb)

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
(setq org-log-done 'time)

;; Provide feature
(provide 'pigeon-org)
