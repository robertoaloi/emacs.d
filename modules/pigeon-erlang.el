;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Erlang                                                   ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; Activate official erlang-mode
(package-require 'erlang)

;; Add Erlang to the path
(add-to-list 'exec-path pigeon-erlang-bin)

;; Activate EDTS (Erlang Development Tool Suite)
;; Ref: https://github.com/tjarvstrand/edts
(package-require 'edts)
(require 'edts-start)

;; Open documentation for erlang modules in a web browser
;; Original idea and code from @legoscia
(defvar browse-erlang-doc-history nil)
(defvar erlang-doc-root-dir pigeon-erlang-doc-root)
(defun browse-erlang-doc (module)
  "Open documentation for erlang module MODULE in a web browser."
  (interactive
   (let* ((files
           (append
            (file-expand-wildcards
             (concat erlang-doc-root-dir
                     "lib/*/doc/html/*.html"))))
          (completion-table
           (mapcar
            (lambda (file)
              (cons (file-name-sans-extension
                     (file-name-nondirectory file))
                    file))
            files))
          (module-name (completing-read "Search: "
                                        completion-table
                                        nil t nil
                                        'browse-erlang-doc-history)))
     (list (cdr (assoc module-name completion-table)))))
  (browse-url-of-file module))
(local-set-key (kbd "C-e d") 'browse-erlang-doc)

;; Provide feature
(provide 'pigeon-erlang)
