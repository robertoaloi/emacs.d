;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Erlang QuickCheck                                        ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; Define variables used in the current module
(defvar pigeon-erlang-eqc-version
  "1.42.1"
  "Version of Erlang QuickCheck installed")
(defvar pigeon-erlang-eqc-dir
  (concat pigeon-erlang-root-dir "/lib/erlang/lib/eqc-" pigeon-erlang-eqc-version)
  "Path to the Erlang QuickCheck application")

;; Configure EQC Emacs Mode
(add-to-list 'load-path (concat pigeon-erlang-eqc-dir "/emacs/"))
(autoload 'eqc-erlang-mode-hook "eqc-ext" "EQC Mode" t)
(add-hook 'erlang-mode-hook 'eqc-erlang-mode-hook)
(setq eqc-max-menu-length 30)
(setq eqc-root-dir pigeon-erlang-eqc-dir)

;; Do not warn for EQC xref issues
;; (EQC is compiled without debug_info)
(defun set-xref-error-whitelist ()
  (edts-project-set-attribute (eproject-root)
                              :xref-error-whitelist
                              '("eqc:" "eqc_gen:" "eqc_statem:")))
(add-hook 'after-init-hook 'my-after-init-hook)
(defun my-after-init-hook ()
  (add-hook 'edts-project-file-visit-hook 'set-xref-error-whitelist))

;; Provide feature
(provide 'pigeon-erlang-eqc)
