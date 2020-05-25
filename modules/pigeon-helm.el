;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Helm                                                     ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; Activate Helm
(package-require 'helm)

(package-require 'helm-lsp)

;; Configure shortcuts
(global-set-key "\C-j" 'helm-imenu) ; Ctrl + j

;; Provide feature
(provide 'pigeon-helm)
