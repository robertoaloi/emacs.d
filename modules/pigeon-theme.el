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

;; Customize whitespace colours
;; Source: https://www.emacswiki.org/emacs/WhiteSpace
(set-face-attribute 'whitespace-trailing nil
                    :background "pink"
                    :foreground nil)
(set-face-attribute 'whitespace-line nil
                    :background "pink"
                    :foreground nil)
(set-face-attribute 'whitespace-empty nil
                    :background "pink"
                    :foreground nil)

;; Provide feature
(provide 'pigeon-theme)
