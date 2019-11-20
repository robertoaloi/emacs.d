;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Load Modules                                                       ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(add-to-list 'load-path (concat pigeon-root "modules"))

(dolist (file '(pigeon-general
                pigeon-org
                pigeon-ui
                pigeon-theme
                pigeon-clojure
                pigeon-erlang-lsp
                pigeon-git
                pigeon-groovy
                pigeon-helm
                pigeon-ido
                pigeon-json
                pigeon-markdown
                pigeon-python
                pigeon-sh
                pigeon-yaml
                ))
  (require file))
