;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Theme                                                              ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; Install and configure the Solarized Theme

;; make the fringe stand out from the background
(setq solarized-distinct-fringe-background t)

;; Don't change the font for some headings and titles
(setq solarized-use-variable-pitch nil)

;; make the modeline high contrast
(setq solarized-high-contrast-mode-line t)

;; Use less bolding
;; (setq solarized-use-less-bold t)

;; ;; Use more italics
;; (setq solarized-use-more-italic t)

;; ;; Use less colors for indicators such as git:gutter, flycheck and similar
(setq solarized-emphasize-indicators nil)

;; Don't change size of org-mode headlines (but keep other size-changes)
(setq solarized-scale-org-headlines nil)

;; Avoid all font-size changes
(setq solarized-height-minus-1 1.0)
(setq solarized-height-plus-1 1.0)
(setq solarized-height-plus-2 1.0)
(setq solarized-height-plus-3 1.0)
(setq solarized-height-plus-4 1.0)

(package-require 'solarized-theme)
(load-theme 'solarized-light t)

;; Install rainbow package, to colour HEX specs
(package-require 'rainbow-mode)

;; Install rainbow-delimiters package, to ease matching parentheses
(package-require 'rainbow-delimiters)
(add-hook 'prog-mode-hook 'rainbow-delimiters-mode)

;; Set the font and its size
(set-face-attribute 'default nil :font "Monaco-16")

;; Set global shortcuts to increase/decrease font size
(global-set-key (kbd "M-+") 'text-scale-increase)
(global-set-key (kbd "M--") 'text-scale-decrease)

;; Define functions to switch between light and dark themes
(defun dark ()
    "Switch to the dark version of the current theme."
    (interactive)
    (load-theme 'solarized-dark t))
(defun light ()
    "Switch to light version of the current theme."
    (interactive)
    (load-theme 'solarized-light t))

;; provide feature
(provide 'pigeon-theme)
