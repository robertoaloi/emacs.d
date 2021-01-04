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

;; Cut and paste using the clipboard
(setq x-select-enable-clipboard t)

;; Show line numbers
(add-hook 'prog-mode-hook 'linum-mode)
(setq linum-format "%4d \u2502")

;; Highlight line numbers
(use-package hlinum :ensure t)
(hlinum-activate)

;; Bind Ctrl + Arrow keys (so they work inside Tmux)
(global-set-key "\M-[1;5A"    'backward-paragraph) ; Ctrl + down
(global-set-key "\M-[1;5B"    'forward-paragraph)  ; Ctrl + up
(global-set-key "\M-[1;5C"    'forward-word)       ; Ctrl + right
(global-set-key "\M-[1;5D"    'backward-word)      ; Ctrl + left

;; Bind Option + Arrow keys
(global-set-key (kbd "<M-up>")    'backward-paragraph) ; Option + up
(global-set-key (kbd "<M-down>")  'forward-paragraph)  ; Option + down
(global-set-key (kbd "<M-right>") 'forward-word)       ; Option + right
(global-set-key (kbd "<M-left>")  'backward-word)      ; Option + left

;; Provide feature
(provide 'pigeon-ui)
