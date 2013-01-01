(require 'erc)
(setq erc-modules '(
                    autoaway
                    autojoin
                    completion
                    irccontrols
                    smiley
                    spelling
                    ))

(load "~/.emacs.private")
(require 'erc-services)
(erc-services-mode 1)
(setq erc-prompt-for-nickserv-password nil)
(setq erc-nickserv-passwords
      `((freenode     (("michaelmartinez" . ,freenode-nickone-pass)))
        ))


(erc-update-modules)
(erc-autojoin-mode 1)
(erc-services-mode 1)
(erc-spelling-mode 1)
(setq erc-prompt-for-nickserv-password nil)

(setq erc-autojoin-channels-alist
      '(("freenode\\.net" . ("#python" "#emacs" "#evil-mode"))))

(erc :server "irc.freenode.net" :port 6667 :nick "yournick")

(setq erc-autojoin-timing 'ident)

(setq erc-current-nick-highlight-type 'nick)

(setq erc-prompt (lambda () (format "[%s]" (erc-current-nick))))

(setq erc-track-exclude-types '("NICK" "JOIN" "LEAVE" "QUIT" "PART"
                                "301"   ; away notice
                                "305"   ; return from awayness
                                "306"   ; set awayness
                                "324"   ; modes
                                "329"   ; channel creation date
                                "332"   ; topic notice
                                "333"   ; who set the topic
                                "353"   ; Names notice
                                ))


;; don't show any of this
(setq erc-hide-list '("JOIN" "PART" "QUIT" "NICK"))
