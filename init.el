;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Load Modules                                                       ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(add-to-list 'load-path (concat pigeon-root "modules"))

(dolist (file '(pigeon-packages
                pigeon-general
                pigeon-ui
                pigeon-theme
                pigeon-erlang
                pigeon-git))
  (require file))
