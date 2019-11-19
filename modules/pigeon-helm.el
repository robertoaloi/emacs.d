;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Helm                                                     ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; Activate Helm
(package-require 'helm)

;; Configure shortcuts
(global-set-key "\C-i" 'helm-imenu) ; Ctrl + i

;; Provide feature
(provide 'pigeon-helm)
