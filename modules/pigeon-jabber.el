;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Jabber                                                   ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; Activate official Jabber client
(package-require 'jabber)

;; Do not show avatars in Jabber roster
(setq jabber-chat-buffer-show-avatar nil)

;; Simplify Jabber roster
(setq jabber-roster-line-format " %c %j")

;; Provide feature
(provide 'pigeon-jabber)
