(scroll-bar-mode 0)
;; Smooth scrolling
(setq redisplay-dont-pause t
      scroll-margin 1
      scroll-step 1
      scroll-conservatively 10000
      scroll-preserve-screen-position 1)

;;override zenburn as the default theme
(load-theme 'zenburn t)

;; this snippet makes emacs automagically indent
(define-key global-map (kbd "RET") 'newline-and-indent)

;; Set Global font to Source Code Pro
(set-face-attribute 'default nil :font "Source Code Pro-14")

;; Set C-c C-m to M-x so if I miss x it still fires
(global-set-key "\C-c\C-m" 'execute-extended-command)

;; Global white space mode
(setq prelude-whitespace t)

;; Need to get this file into its own directory
;; as nxhtml is a giant beast that has tons of options
(load "~/.emacs.d/personal/vendor/nxhtml/autostart.el")

(provide 'personal-global)
