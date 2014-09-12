;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Packages                                                 ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; Use packages
(require 'package)
(add-to-list 'package-archives
             '("elpa" . "http://elpa.gnu.org/packages/") t)
(add-to-list 'package-archives
             '("melpa" . "http://melpa.milkbox.net/packages/") t)
(add-to-list 'package-archives
             '("marmalade" . "http://marmalade-repo.org/packages/") t)
(package-initialize)

;; Install a package only if it's not already installed
(defun package-require (pkg &optional require-name)
  "Install a package only if it's not already installed."
  (when (not (package-installed-p pkg))
    (package-install pkg))
  (if require-name
      (require require-name)
    (require pkg)))

;; Provide feature
(provide 'pigeon-packages)
