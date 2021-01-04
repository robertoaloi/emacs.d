;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Erlang LSP                                               ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; Activate official erlang-mode
(use-package erlang :ensure t)

;; Set 2 spaces for indentation
(setq erlang-indent-level 2)

;; Include the Language Server Protocol Clients
(use-package lsp-mode :ensure t)

;; Customize prefix for key-bindings
(setq lsp-keymap-prefix "C-l")

;; Alternatively load a patched version of `lsp-mode`
;; (add-to-list 'load-path "/Users/robert.aloi/git/github/emacs-lsp/lsp-mode")
;; (require 'lsp-mode)

;; Include the Yasnippet templating system
(use-package yasnippet :ensure t)
(yas-global-mode t)

;; Enable logging for lsp-mode
(setq lsp-log-io t)

;; Show line and column numbers
(add-hook 'erlang-mode-hook 'linum-mode)
(add-hook 'erlang-mode-hook 'column-number-mode)

;; Enable diagnostics
(use-package exec-path-from-shell :ensure t)
(exec-path-from-shell-initialize)

;; LSP-UI
(use-package lsp-ui :ensure t)
(setq lsp-ui-sideline-enable t)
(setq lsp-ui-doc-enable t)
(setq lsp-ui-doc-position 'bottom)

(add-hook 'erlang-mode-hook #'lsp)

;; Shortcut for finding modules (via LSP symbols)
(eval-after-load 'erlang
  '(define-key erlang-mode-map (kbd "C-l") #'helm-lsp-workspace-symbol)
  )

;; LSP Origami Mode (for folding ranges)
(use-package lsp-origami :ensure t)
(add-hook 'origami-mode-hook #'lsp-origami-mode)
(add-hook 'erlang-mode-hook #'origami-mode)

;; Enable Code Lenses
(setq lsp-lens-auto-enable t)

;; Which-key integration
(use-package which-key :ensure t)
(add-hook 'erlang-mode-hook 'which-key-mode)
(with-eval-after-load 'lsp-mode
  (add-hook 'lsp-mode-hook #'lsp-enable-which-key-integration))

(add-to-list 'display-buffer-alist
             `(,(rx bos "*Flycheck errors*" eos)
              (display-buffer-reuse-window
               display-buffer-in-side-window)
              (side            . bottom)
              (reusable-frames . visible)
              (window-height   . 0.33)))

;; Completions
(use-package company :ensure t)
;; Activate completion with 2 characters (default is 3)
;; (setq company-minimum-prefix-length 2)

;; Provide feature
(provide 'pigeon-erlang-lsp)
