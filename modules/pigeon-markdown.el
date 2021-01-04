;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Markdown                                                 ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; Activate official markdown-mode
(use-package markdown-mode :ensure t)

;; Enable spell-checking via ispell
;; Require the `ispell` OS package to be installed.
(add-hook 'markdown-mode-hook 'flyspell-mode)

;; Provide feature
(provide 'pigeon-markdown)
