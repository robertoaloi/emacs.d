;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Theme                                                              ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; Load cyberpunk theme
(add-to-list 'custom-theme-load-path (concat pigeon-root "themes"))
(load-theme 'cyberpunk t)

;; Install rainbow package, to colour HEX specs
(package-require 'rainbow-mode)

;; Provide feature
(provide 'pigeon-theme)
