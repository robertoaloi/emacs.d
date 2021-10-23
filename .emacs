(setq pigeon-root "/Users/robert.aloi/git/github/robertoaloi/emacs.d/")
(load (concat pigeon-root "init.el"))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(dap-auto-configure-mode t)
 '(dap-default-terminal-kind "external")
 '(dap-external-terminal '("iterm"))
 '(dap-inhibit-io nil)
 '(dap-mode t nil (dap-mode))
 '(dap-print-io t)
 '(dap-tooltip-mode t)
 '(dap-ui-controls-mode t nil (dap-ui))
 '(dap-ui-many-windows-mode t)
 '(dap-ui-mode t nil (dap-ui))
 '(package-selected-packages
   '(company-quickhelp hlinum company dockerfile-mode yaml-mode tide typescript-mode lsp-python-ms pdf-tools json-mode smex ido-vertical-mode helm-lsp helm groovy-mode magit dap-mode yasnippet which-key use-package solarized-theme rainbow-mode rainbow-delimiters lsp-ui lsp-origami exec-path-from-shell erlang clojure-mode))
 '(safe-local-variable-values
   '((st-rulers .
                [70])
     (indent-tabs-mode . 1)
     (allout-layout . t))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(company-tooltip-selection ((t (:background "#00736f" :foreground "#69CABF" :weight bold))))
 '(lsp-ui-doc-background ((t :background "#073642"))))
