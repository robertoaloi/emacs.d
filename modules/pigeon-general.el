;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; General                                                  ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; Store backup files in a common place
(setq backup-directory-alist `(("." . "~/.emacs-backups")))

;; Inhibit tabs
(setq-default indent-tabs-mode nil)

;; Set `tab-width` to two spaces
(setq-default tab-width 2)

;; Show trailing whitespaces
(setq-default show-trailing-whitespace t)

;; Highlight lines longer than 80 characters
(require 'whitespace)
(setq-default whitespace-style '(face trailing lines empty indentation::space))
(setq-default whitespace-line-column 80)
(global-whitespace-mode 1)
(whitespace-mode 1)

;; Highlight current line
(global-hl-line-mode t)
(set-face-background hl-line-face "gray13")

;; Show line numbers
(global-linum-mode 1)

;; Provide feature
(provide 'pigeon-general)
