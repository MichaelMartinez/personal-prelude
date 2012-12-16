;; ;; Org Definitions go here.

;; this sets outlines to automatically indent
(setq org-startup-indented t)
(require 'org-inlinetask)
;; Set to the location of your Org files on your local system
(setq org-directory "~/DropBox/org")
;; Set to the name of the file where new notes will be stored
(setq org-mobile-inbox-for-pull "~/DropBox/org/flagged.org")
;; Set to <your Dropbox root directory>/MobileOrg.
(setq org-mobile-directory "~/Dropbox/MobileOrg")

;; org-todo settings

;; I need more todo keywords than present by default
;; keys mentioned in brackets are hot-keys for the States
;; ! indicates insert timestamp
;; @ indicates insert note
;; / indicates entering the state
(setq org-todo-keywords
      (quote ((sequence "TODO(t!/!)" "WORKING(w!/!)" "IN-REVIEW(i!/!)"
                        "REDO(R@/!)" "WAITING(a@/!)"
                        "|" "DONE(d!/@)" "DELEGATED(e@/!)")
              (sequence "PROJECT(p)" "BUG(b!/@)" "FEATURE(f!/!)" "MAINT(m!/!)"
                        "|" "SOMEDAY(s)" "CANCELLED(c@/!)"
                        "RESTRUCTURED(r@/!)"))))


(setq org-todo-keyword-faces
      (quote (("TODO" :foreground "red" :weight bold)
              ("WORKING" :foreground "orange" :weight bold)
              ("IN-REVIEW" :foreground "orange" :weight bold)
              ("WAITING" :foreground "lightblue" :weight bold)
              ("REDO" :foreground "magenta" :weight bold)
              ("DONE" :foreground "lightgreen" :weight bold)
              ("DELEGATED" :foreground "lightgreen" :weight bold)
              ("PROJECT" :foreground "lightblue" :weight bold)
              ("BUG" :foreground "red" :weight bold)
              ("FEATURE" :foreground "red" :weight bold)
              ("MAINT" :foreground "red" :weight bold)
              ("SOMEDAY" :foreground "magenta" :weight bold)
              ("CANCELLED" :foreground "lightgreen" :weight bold)
              ("RESTRUCTURED" :foreground "lightgreen" :weight bold))))
