;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Erlang DAP                                               ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(use-package dap-mode :ensure t)

(setq dap-inhibit-io nil)
(setq dap-print-io t)

;; Register the Erlang provider
(defun dap-erlang--populate-start-file-args (conf)
  "Populate CONF with the required arguments."
  (-> conf
    (plist-put :dap-server-path '("els_dap"))
    (plist-put :projectDir (lsp-find-session-folder (lsp-session) (buffer-file-name)))
    (plist-put :cwd (lsp-find-session-folder (lsp-session) (buffer-file-name)))
    ))
(dap-register-debug-provider "erlang" 'dap-erlang--populate-start-file-args)

;; Provide feature
(provide 'pigeon-erlang-dap)
