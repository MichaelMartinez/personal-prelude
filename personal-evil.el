(require 'evil)
(evil-mode 1)
(require 'evil-leader)
(setq evil-leader/leader ","
      evil-leader/in-all-states t)
(setq evil-normal-state-tag (propertize "N" 'face '((:background "green" :foreground "black")))
      evil-emacs-state-tag (propertize "E" 'face '((:background "orange" :foreground "black")))
      evil-insert-state-tag (propertize "I" 'face '((:background "red")))
      evil-motion-state-tag (propertize "M" 'face '((:background "blue")))
      evil-visual-state-tag (propertize "V" 'face '((:background "grey80" :foreground "black")))
      evil-operator-state-tag (propertize "O" 'face '((:background "purple"))))

(define-key evil-normal-state-map "\C-e" 'move-end-of-line)
(define-key evil-motion-state-map "\C-e" 'evil-end-of-line)
(define-key evil-insert-state-map "\C-e" 'evil-end-of-line)


(define-key evil-insert-state-map "j" #'mam/maybe-exit)

(evil-define-command mam/maybe-exit ()
  :repeat change
  (interactive)
  (let ((modified (buffer-modified-p)))
    (insert "j")
    (let ((evt (read-event (format "Insert %c to exit insert state" ?j)
               nil 0.5)))
      (cond
       ((null evt) (message ""))
       ((and (integerp evt) (char-equal evt ?j))
    (delete-char -1)
    (set-buffer-modified-p modified)
    (push 'escape unread-command-events))
       (t (setq unread-command-events (append unread-command-events
                          (list evt))))))))

(provide 'personal-evil)
