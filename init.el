;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Load Modules                                                       ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(setq pigeon-root "~/Personal/emacs.d/")
(add-to-list 'load-path (concat pigeon-root "modules"))

(dolist (file '(pigeon-packages
                pigeon-general
                pigeon-ui
                pigeon-theme))
  (require file))
