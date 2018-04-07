;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Theme                                                              ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; Install Tomorrow themes and activate the day one
(package-require 'color-theme-sanityinc-tomorrow)
(load-theme 'sanityinc-tomorrow-day t)

;; Install rainbow package, to colour HEX specs
(package-require 'rainbow-mode)

;; Install rainbow-delimiters package, to ease matching parentheses
(package-require 'rainbow-delimiters)
(add-hook 'prog-mode-hook 'rainbow-delimiters-mode)

;; Set the font and its size
(set-face-attribute 'default nil :font "Monaco-16")

;; Provide feature
(provide 'pigeon-theme)
