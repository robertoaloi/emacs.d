;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Python                                                   ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; Activate python-mode
;; https://launchpad.net/python-mode
(add-to-list 'load-path pigeon-python-mode-path)
(setq py-install-directory pigeon-python-mode-path)
(require 'python-mode)

;; Enable flymake for python
(package-require 'flymake-python-pyflakes)
(add-to-list 'exec-path pigeon-python-pyflakes-path)
(require 'flymake-python-pyflakes)
(add-hook 'python-mode-hook 'flymake-python-pyflakes-load)

;; Provide feature
(provide 'pigeon-python)