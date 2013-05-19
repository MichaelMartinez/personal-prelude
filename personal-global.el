(scroll-bar-mode 0)
;; Smooth scrolling
(setq redisplay-dont-pause t
      scroll-margin 1
      scroll-step 1
      scroll-conservatively 10000
      scroll-preserve-screen-position 1)

;;override zenburn as the default theme
(load-theme 'molokai t)

;; this snippet makes emacs automagically indent
(define-key global-map (kbd "RET") 'newline-and-indent)

;; Set Global font to Source Code Pro
(set-face-attribute 'default nil :font "Source Code Pro-14")

;; Set C-c C-m to M-x so if I miss x it still fires
(global-set-key "\C-c\C-m" 'execute-extended-command)

;; Global white space mode
(setq prelude-whitespace t)


;; Jedi for Python setup as described: http://tkf.github.com/emacs-jedi/#configuration
(setq jedi:setup-keys t)
(add-hook 'python-mode-hook 'jedi:setup)
(require 'jedi)
(add-hook 'ein:connect-mode-hook 'ein:jedi-setup)
;; This is required to get jedi to work
(require 'epc)
(provide 'personal-global)
