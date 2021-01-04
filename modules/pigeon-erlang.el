;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Erlang                                                   ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; Define variables used in the current module
(defvar pigeon-erlang-root-dir
  "~/otp/21.3.8.6+kred1"
  "Path to the Erlang installation path")
(defvar pigeon-erlang-doc-root
  "~/otp-docs/18.3"
  "Path to the local Erlang OTP documentation (HTTP format)")

(setq edts-api-server-start-retry-interval 1.0)

;; Activate official erlang-mode
(use-package erlang :ensure t)

;; Add Erlang to the path
(add-to-list 'exec-path (concat pigeon-erlang-root-dir "/bin"))

;; Disable proxy for EDTS
;; (add-to-list 'url-proxy-services '("no_proxy" . "0:4587"))

;; Activate EDTS (Erlang Development Tool Suite)
;; Ref: https://github.com/tjarvstrand/edts
(use-package edts :ensure t)
(require 'edts-start)

;; Disable Auto Highlighting, since it conflicts with my Key Bindings
(add-hook 'edts-mode-hook 'disable-auto-highlighting-hook)
(defun disable-auto-highlighting-hook ()
  (auto-highlight-symbol-mode -1))

;; Open documentation for erlang modules in a web browser
;; Original idea and code from @legoscia
(defvar browse-erlang-doc-history nil)
(defvar erlang-doc-root-dir pigeon-erlang-doc-root)
(defun browse-erlang-doc (module)
  "Open documentation for erlang module MODULE in a web browser."
  (interactive
   (let* ((files
           (append
            (file-expand-wildcards
             (concat erlang-doc-root-dir
                     "/lib/*/doc/html/*.html"))))
          (completion-table
           (mapcar
            (lambda (file)
              (cons (file-name-sans-extension
                     (file-name-nondirectory file))
                    file))
            files))
          (module-name (completing-read "Search: "
                                        completion-table
                                        nil t nil
                                        'browse-erlang-doc-history)))
     (list (cdr (assoc module-name completion-table)))))
  (browse-url-of-file module))
(local-set-key (kbd "C-e d") 'browse-erlang-doc)

;; Set 2 spaces for indentation
(setq erlang-indent-level 2)

;; When using `M-x rgrep`, exclude some Erlang-specific directories
(setq grep-find-ignored-directories
      (append grep-find-ignored-directories '("_build" "ebin")))

;; Provide feature
(provide 'pigeon-erlang)
