(scroll-bar-mode 0)

;;override zenburn as the default theme
(load-theme 'zenburn t)

;; this snippet makes emacs automagically indent
(define-key global-map (kbd "RET") 'newline-and-indent)

;; Set Global font to Source Code Pro
(set-face-attribute 'default nil :font "DejaVu Sans Mono-14")

;; Set C-c C-m to M-x so if I miss x it still fires
(global-set-key "\C-c\C-m" 'execute-extended-command)

;; Global white space mode
(setq prelude-whitespace t)

;; Need to get this file into its own directory
;; as nxhtml is a giant beast that has tons of options
(load "~/.emacs.d/vendor/nxhtml/autostart.el")

;; None of these worked set python3 as interpreter
;; running M-! which python returns: /usr/bin/python
;; running M-! which python3 returns: /usr/local/bin/python3
;;(setq python-python-command "/usr/local/bin/python3")
;;(setenv "PYTHONPATH" "/usr/local/bin/python3")


;; You can also do as I do and keep them in a seperate folder:
(add-to-list 'load-path "~/.emacs.private")
;;Load the password file but don't complain if it doesn't exist
;; use 'noerror inside parens once its loaded
(load "real-passwords" 'noerror)

;; These are sample passwords for a simple private file

;;Bip server
;;(setq bip-username "YourBipUsername")
;;(setq bip-password "Username:Password:Network")
;;Twitter
;;(setq twit-user "YourTwitterUsername")
;;(setq twit-pass "YourTwitterPassword")
;;Gmail - don't forget to setup a site specific pass for emacs gnus
;;(setq gmail-user "YourGmailUsername")
;;(setq gmail-pass "YourGmailPassword")
