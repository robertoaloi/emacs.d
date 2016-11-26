;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Markdown                                                 ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; Activate official markdown-mode
(package-require 'markdown-mode)

;; Turn on automatic refill
(add-hook 'markdown-mode-hook 'refill-mode)

;; Enable spell-checking via ispell
;; Require the `ispell` OS package to be installed.
(add-hook 'markdown-mode-hook 'flyspell-mode)

;; Provide feature
(provide 'pigeon-markdown)
