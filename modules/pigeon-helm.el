;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Helm                                                     ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; Activate Helm
(package-require 'helm)

(package-require 'helm-lsp)
;; Configure shortcuts
(global-set-key "\C-i" 'helm-imenu) ; Ctrl + i

;; Provide feature
(provide 'pigeon-helm)
