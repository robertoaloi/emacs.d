;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; GIT                                                      ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; Install magit
;; https://magit.vc
(package-require 'magit)

;; Create a global shortcut for magit-status
(global-set-key (kbd "C-x g") 'magit-status)

;; Blame author of a specific line
(defun blame ()
  "Shows the git-person-to-blame for the current line"
  (interactive)
  (let ((current-line (number-to-string (line-number-at-pos))))
    (setq blame-output (shell-command-to-string
                        (concat "git blame "
                                "-L " current-line "," current-line
                                " " (buffer-file-name))))
    (message blame-output)
    )
  )

;; Provide feature
(provide 'pigeon-git)
