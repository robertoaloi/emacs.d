;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Elixir                                                   ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; Activate official package
(use-package elixir-mode :ensure t)

;; https://github.com/elixir-lsp/elixir-ls
(use-package lsp-mode
             :commands lsp
             :ensure t
             :diminish lsp-mode
             :hook
             (elixir-mode . lsp)
             :init
             (add-to-list 'exec-path "~/git/github/elixir-lsp/elixir-ls/rel"))

(add-hook 'elixir-mode-hook #'lsp)

;; Provide feature
(provide 'pigeon-elixir)
