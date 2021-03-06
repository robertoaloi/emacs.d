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

(use-package solarized-theme :ensure t
  :custom-face
  (company-tooltip-selection ((t (:background "#00736f" :foreground "#69CABF" :weight bold))))
  (lsp-ui-doc-background ((t :background "#073642"))))
(load-theme 'solarized-dark t)

;; Install rainbow package, to colour HEX specs
(use-package rainbow-mode :ensure t)

;; Install rainbow-delimiters package, to ease matching parentheses
(use-package rainbow-delimiters :ensure t)
(add-hook 'prog-mode-hook 'rainbow-delimiters-mode)

;; Set the font and its size
(set-face-attribute 'default nil :font "Monaco-16")

;; Set global shortcuts to increase/decrease font size
(global-set-key (kbd "M-+") 'text-scale-increase)
(global-set-key (kbd "M--") 'text-scale-decrease)

;; provide feature
(provide 'pigeon-theme)
