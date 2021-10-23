;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Load Modules                                                       ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; Bootstrap packages

;; To manually refresh packages:
;; M-x package-refresh-contents
;; M-x list-packages
;; U (show available for upgrade)
;; x (mark for upgrade)
;; Profit!

(require 'package)
(setq package-enable-at-startup nil)
(add-to-list 'package-archives
             '("melpa" . "https://melpa.org/packages/"))
(package-initialize)

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(eval-when-compile
  (require 'use-package))

;; Load all other modules
(add-to-list 'load-path (concat pigeon-root "modules"))
(dolist (file '(pigeon-general
                pigeon-org
                pigeon-ui
                pigeon-theme
                pigeon-clojure
                pigeon-erlang-lsp
                pigeon-erlang-dap
                pigeon-elixir
                pigeon-git
                pigeon-groovy
                pigeon-helm
                pigeon-ido
                pigeon-json
                pigeon-markdown
                pigeon-pdf
                pigeon-python-lsp
                pigeon-sh
                pigeon-typescript
                pigeon-yaml
                pigeon-docker
                ))
  (require file))
