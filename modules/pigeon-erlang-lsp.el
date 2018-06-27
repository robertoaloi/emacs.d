;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Erlang LSP                                               ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; Set 2 spaces for indentation
(setq erlang-indent-level 2)

;; Language Server Protocol Tests
(package-require 'lsp-mode)

;; Enable code completion
(package-require 'company-lsp)

;; Enable and Configure Quick Help
(package-require 'company-quickhelp)
(eval-after-load 'company
  '(define-key company-active-map
     (kbd "C-c h")
     #'company-quickhelp-manual-begin))

;; Enable diagnostics
;; (package-require 'exec-path-from-shell)
;; (exec-path-from-shell-initialize)
(package-require 'flycheck)
(package-require 'lsp-ui)

;; Connect to an already started language server
(lsp-define-tcp-client
 lsp-erlang-mode
 "erlang"
 (lambda () default-directory)
 '("/usr/local/opt/coreutils/libexec/gnubin/false")
 "localhost"
 9000)

;; Hooks for code completion
(add-hook 'erlang-mode-hook 'company-mode)
(add-hook 'erlang-mode-hook (lambda ()
                              (push 'company-lsp company-backends)
                              )
          )
(add-hook 'erlang-mode-hook 'lsp-erlang-mode-enable)
(add-hook 'erlang-mode-hook 'company-quickhelp-mode)

;; Hooks for diagnostics
(add-hook 'lsp-mode-hook 'lsp-ui-mode)
(add-hook 'erlang-mode-hook 'flycheck-mode)

;; Provide feature
(provide 'pigeon-erlang-lsp)
