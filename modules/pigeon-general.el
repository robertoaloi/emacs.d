;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; General                                                  ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; Store backup files in a common place
(setq backup-directory-alist '(("." . "~/.emacs-backups")))

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

;; Save history between sessions
(savehist-mode 1)

;; Enable editing of remote files (via TRAMP)
;; This also simplifies editing files as root
;; C-x C-f /sudo::/path/to/file
(require 'tramp)

;; Set default browser
(setq browse-url-browser-function 'browse-url-generic
      browse-url-generic-program pigeon-default-browser)

;; Provide feature
(provide 'pigeon-general)
