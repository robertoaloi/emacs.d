;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; PDF                                                      ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; Install PDF Tools
;; This slows down the init time significantly, so only run it once
(use-package pdf-tools :ensure t)
;; (pdf-tools-install)

(add-hook 'doc-view-mode-hook 'pdf-tools-install)

;; Provide feature
(provide 'pigeon-pdf)
