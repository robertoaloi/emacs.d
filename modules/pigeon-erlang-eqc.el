;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Erlang QuickCheck                                        ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; Configure EQC Emacs Mode
(add-to-list 'load-path (concat pigeon-erlang-eqc-dir "emacs/"))
(autoload 'eqc-erlang-mode-hook "eqc-ext" "EQC Mode" t)
(add-hook 'erlang-mode-hook 'eqc-erlang-mode-hook)
(setq eqc-max-menu-length 30)
(setq eqc-root-dir pigeon-erlang-eqc-dir)

;; Provide feature
(provide 'pigeon-erlang-eqc)
