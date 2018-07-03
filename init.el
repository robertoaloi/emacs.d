;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Load Modules                                                       ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(add-to-list 'load-path (concat pigeon-root "modules"))

(dolist (file '(pigeon-general
                pigeon-org
                pigeon-ui
                pigeon-theme
                pigeon-clojure
                pigeon-erlang
                pigeon-erlang-eqc
                ;; pigeon-erlang-lsp
                pigeon-elixir
                pigeon-git
                pigeon-ido
                pigeon-java
                pigeon-markdown
                pigeon-python
                pigeon-sh
                pigeon-yaml))
  (require file))
