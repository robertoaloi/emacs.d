;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Markdown                                                 ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; Activate official markdown-mode
(package-require 'markdown-mode)

(add-hook 'markdown-mode-hook 'turn-on-auto-fill)

;; Provide feature
(provide 'pigeon-markdown)
