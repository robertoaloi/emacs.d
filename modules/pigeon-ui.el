;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; UI                                                       ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; Inhibit Splash Screen
(setq inhibit-splash-screen t)

;; Inhibit Bell Sound
(setq ring-bell-function 'ignore)

;; Enlarge and shrink windows
(global-set-key (kbd "C-S-<left>") 'enlarge-window-horizontally)
(global-set-key (kbd "C-S-<right>") 'shrink-window-horizontally)
(global-set-key (kbd "C-S-<down>") 'enlarge-window)
(global-set-key (kbd "C-S-<up>") 'shrink-window)

;; Answer `y/n` instead of `yes/no`
(defalias 'yes-or-no-p 'y-or-n-p)

;; Jump to other-window after splits
(defun split-window-vertically-and-other-window ()
  (interactive)
  (split-window-vertically)
  (other-window 1)
  )
(global-set-key (kbd "C-x 2") 'split-window-vertically-and-other-window)

(defun split-window-horizontally-and-other-window ()
  (interactive)
  (split-window-horizontally)
  (other-window 1)
  )
(global-set-key (kbd "C-x 3") 'split-window-horizontally-and-other-window)

;; Inhibit menu, tool and scroll bars
(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)

;; Provide feature
(provide 'pigeon-ui)
