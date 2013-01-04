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

;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Key maps
;;;;;;;;;;;;;;;;;;;;;;;;;;
(define-key evil-normal-state-map "\C-e" 'move-end-of-line)
(define-key evil-motion-state-map "\C-e" 'evil-end-of-line)
(define-key evil-insert-state-map "\C-e" 'evil-end-of-line)

;; Use s-[h, j, k, l] for window navigation
(define-key evil-normal-state-map "\C-h" 'windmove-left) ;; move left around split
(define-key evil-normal-state-map "\C-l" 'windmove-right) ;; move right around split
;; Use C-j and C-k for scrolling 5 lines up/down
(define-evil-motion-key (read-kbd-macro "C-j") (lambda () (interactive) (evil-scroll-line-down 5) (evil-next-line 5))) (define-evil-motion-key (read-kbd-macro "C-k") (lambda () (interactive) (evil-scroll-line-up 5) (evil-previous-line 5)))

;; Evil Leader stuff
 (evil-leader/set-key
;;   "e" '
;;   "E" '
;;   "o" '
;;   "O" '
   "b" 'prelude-rename-file-and-buffer
;;   "B" '
   "G" 'prelude-google
   "w" 'save-buffer
   "W" 'save-some-buffers
   "k" 'kill-current-buffer
   "K" 'kill-buffer-and-window
;;   "<" '
   "d" 'dired-jump
   "D" 'prelude-duplicate-current-line-or-region
   "I" 'prelude-indent-blockquote-and-copy-to-clipboard
   "i" 'prelude-indent-region-or-buffer
   "m" 'compile

   "n" 'split-window-horizontally
   "c" 'delete-window
   "N" 'make-frame-command
   "C" 'delete-frame

   "g" 'magit-status
;;   "h" '

;;   "s" '
;;   ";" '

;;   "." 'evil-ex
   )


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
