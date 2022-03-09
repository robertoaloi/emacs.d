;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Rust                                                     ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(use-package rust-mode
  :ensure
  :bind (:map rust-mode-map
              ("M-j" . lsp-ui-imenu)
              ("M-?" . lsp-find-references)
              ("C-c C-c l" . flycheck-list-errors)
              ("C-c C-c a" . lsp-execute-code-action)
              ("C-c C-c r" . lsp-rename)
              ("C-c C-c q" . lsp-workspace-restart)
              ("C-c C-c Q" . lsp-workspace-shutdown)
              ("C-c C-c s" . lsp-rust-analyzer-status)
              ("C-c C-c e" . lsp-rust-analyzer-expand-macro)
              ("C-c C-c d" . dap-hydra)
              ("C-c C-c h" . lsp-ui-doc-glance))
  :config
  (setq lsp-eldoc-enable-hover nil)
  (add-hook 'rust-mode-hook #'lsp)
  )

;; Projectile
(define-key projectile-mode-map (kbd "s-p") 'projectile-command-map)
(define-key projectile-mode-map (kbd "C-c p") 'projectile-command-map)
(projectile-mode +1)

;; Provide feature
(provide 'pigeon-rust)
