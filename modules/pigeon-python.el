;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Python                                                   ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; Define variables used in the current module
(defvar pigeon-python-pyflakes-path
  "/usr/local/bin"
  "Path to the Python Pyflakes executable")

;; Activate python-mode
;; https://launchpad.net/python-mode
(use-package python-mode :ensure t)

;; Enable flymake for python
(use-package flymake-python-pyflakes :ensure t)
(add-to-list 'exec-path pigeon-python-pyflakes-path)
(require 'flymake-python-pyflakes)
(add-hook 'python-mode-hook 'flymake-python-pyflakes-load)

;; Provide feature
(provide 'pigeon-python)
