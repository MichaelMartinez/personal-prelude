;;; Require
(require 'auto-complete)
;; Various configurations
(require 'auto-complete-config)
(ac-config-default)

(setq
 ac-auto-start 2
 ac-override-local-map nil
 ac-use-menu-map t
 ac-set-trigger-key "TAB")
;; Default settings
(define-key ac-menu-map "\C-n" 'ac-next)
(define-key ac-menu-map "\C-p" 'ac-previous)

;; making it a bit faster
(setq
 ac-delay 5
 ac-auto-show-menu 0.4
 ac-quick-help-delay 0.5)
;; using a dictionary (emtpy now)
(add-to-list 'ac-dictionary-directories"~/.emacs.d/elpa/auto-complete-20121203.832/dict")

(provide 'personal-auto-complete)
