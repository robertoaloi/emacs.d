;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; General                                                  ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; Define variables used in the current module
(defvar pigeon-backup-dir
  "~/.emacs-backups"
  "Directory where all emacs backup files will be stored")
(defvar pigeon-default-browser
  "google-chrome"
  "Default Browser")

;; Store backup files in a common place
(setq backup-directory-alist `((".*" . ,pigeon-backup-dir)))
(setq auto-save-file-name-transforms `((".*" ,pigeon-backup-dir t)))

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

;; Save history between sessions
(savehist-mode 1)

;; Enable editing of remote files (via TRAMP)
;; This also simplifies editing files as root
;; C-x C-f /sudo::/path/to/file
(require 'tramp)

;; Set default browser
(setq browse-url-browser-function 'browse-url-generic
      browse-url-generic-program pigeon-default-browser)

;; Require grep so that other modules can override ignored dirs
(require 'grep)

;; Define a function to kill all other buffers
(defun kill-other-buffers ()
    "Kill all other buffers."
    (interactive)
    (mapc 'kill-buffer
          (delq (current-buffer)
                (remove-if-not 'buffer-file-name (buffer-list)))))

;; Don't wrap lines in grep-mode.
;; This avoids that the grep command takes a big portion of the buffer.
;; To temporarily switch to wrapped lines: M-x toggle-truncate-lines
;; Source: https://stackoverflow.com/questions/16122801
(defun my-grep-mode-hook ()
  (setq truncate-lines t))
(add-hook 'grep-mode-hook 'my-grep-mode-hook)

;; Provide feature
(provide 'pigeon-general)
