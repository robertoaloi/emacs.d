;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Helm                                                     ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; Activate Helm
(use-package helm :ensure t)
(use-package helm-lsp :ensure t)

;; Configure shortcuts
(global-set-key "\C-j" 'helm-imenu) ; Ctrl + j

;; Provide feature
(provide 'pigeon-helm)
