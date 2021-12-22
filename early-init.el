;; Avoid the "Package cl is deprecated" warning in Emacs 27
;; Source: https://github.com/kiwanami/emacs-epc/issues/35
(setq byte-compile-warnings '(cl-functions))
