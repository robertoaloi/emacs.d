;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Erlang DAP                                               ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(use-package dap-mode :ensure t)

(setq dap-inhibit-io nil)
(setq dap-print-io t)

(defun dap-erlang--populate-start-file-args (conf)
  "Populate CONF with the required arguments."
  (-> conf
      (dap--put-if-absent :dap-server-path '("els_dap"))
      (dap--put-if-absent :type "mix_task")
      (dap--put-if-absent :name "mix test")
      (dap--put-if-absent :request "launch")
      (dap--put-if-absent :task "test")
      (dap--put-if-absent :taskArgs (list "--trace"))
      (dap--put-if-absent :projectDir (lsp-find-session-folder (lsp-session) (buffer-file-name)))
      (dap--put-if-absent :cwd (lsp-find-session-folder (lsp-session) (buffer-file-name)))
      (dap--put-if-absent :requireFiles (list
                                         "test/**/test_helper.exs"
                                         "test/**/*_test.exs"))))

(dap-register-debug-provider "Erlang" 'dap-erlang--populate-start-file-args)
(dap-register-debug-template "Erlang Run Configuration"
                             (list :type "Erlang"
                                   :cwd nil
                                   :request "launch"
                                   :program "rebar3"
                                   :args "shell"
                                   :name "Erlang::Run"))

;; Provide feature
(provide 'pigeon-erlang-dap)
