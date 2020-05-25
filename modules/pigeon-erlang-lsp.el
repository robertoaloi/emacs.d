;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Erlang LSP                                               ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; Activate official erlang-mode
(package-require 'erlang)

;; Set 2 spaces for indentation
(setq erlang-indent-level 2)

;; Include the Language Server Protocol Clients
(package-require 'lsp-mode)

;; Customize prefix for key-bindings
(setq lsp-keymap-prefix "C-l")

;; Alternatively load a patched version of `lsp-mode`
;; (add-to-list 'load-path "/Users/robert.aloi/git/github/emacs-lsp/lsp-mode")
;; (require 'lsp-mode)

;; Include the Yasnippet templating system
(package-require 'yasnippet)
(yas-global-mode t)

;; Enable logging for lsp-mode
(setq lsp-log-io t)

;; Enable code completion
(package-require 'company-lsp)
(push 'company-lsp company-backends)

;; Show line and column numbers
(add-hook 'erlang-mode-hook 'linum-mode)
(add-hook 'erlang-mode-hook 'column-number-mode)

;; Enable diagnostics
(package-require 'exec-path-from-shell)
(exec-path-from-shell-initialize)

;; LSP-UI
(package-require 'lsp-ui)
(setq lsp-ui-sideline-enable t)
(setq lsp-ui-doc-enable t)
(setq lsp-ui-doc-position 'bottom)

(add-hook 'erlang-mode-hook #'lsp)

;; Override the default erlang-compile-tag to use completion-at-point
(eval-after-load 'erlang
  '(define-key erlang-mode-map (kbd "C-M-i") #'company-lsp))

;; Better contrast for tooltips
(customize-tooltip-selection-face)
(dark)

;; LSP Origami Mode (for folding ranges)
(package-require 'lsp-origami)
(add-hook 'origami-mode-hook #'lsp-origami-mode)
(add-hook 'erlang-mode-hook #'origami-mode)

;; Enable Code Lenses
(setq lsp-lens-auto-enable t)

;; Which-key integration
(package-require 'which-key)
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

;; Provide feature
(provide 'pigeon-erlang-lsp)
