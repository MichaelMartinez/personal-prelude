;; ;; Org Definitions go here.

;; this sets outlines to automatically indent
(setq org-startup-indented t)
(require 'org-inlinetask)
(require 'org-install)
;; Set to the location of your Org files on your local system
;; ln -s ~/org ~/Dropbox/org - linked to enable mobile browsing
(setq org-directory "~/org")
;; Set to the name of the file where new notes will be stored
(setq org-mobile-inbox-for-pull "~/org/flagged.org")
;; Set to <your Dropbox root directory>/MobileOrg.
(setq org-mobile-directory "~/Dropbox/MobileOrg")
;; Keys for the basics
(global-set-key "\C-cl" 'org-store-link)
(global-set-key "\C-ca" 'org-agenda)
(global-set-key "\C-cb" 'org-iswitchb)
;; set the files for agenda
(setq org-agenda-files
      (list "~/org/todo.org"
            "~/org/flagged.org"
            "~/org/pythonemacs.org"
            "~/org/notes.org"))

;; Refile targets include this file and any file contributing to the agenda - up to 5 levels deep
(setq org-refile-targets (quote ((nil :maxlevel . 5) (org-agenda-files :maxlevel . 5))))
;; Targets start with the file name - allows creating level 1 tasks
(setq org-refile-use-outline-path (quote file))
;; Targets complete in steps so we start with filename, TAB shows the next level of targets etc
(setq org-outline-path-complete-in-steps t)
;; basics
;; set org mode publish properties
(setq org-publish-project-alist
      '(("html"
      :base-directory "~/org"
      :base-extension "org"
      :publishing-directory "~/blog/michaelmartinez.in/content/pages"
      :publishing-function org-publish-org-to-html)
        ("pdf"
      :base-directory "~/org"
      :base-extension "org"
      :publishing-directory "~/org/exports/"
      :publishing-function org-publish-org-to-pdf)
      ("all" :components ("html" "pdf"))))
;; Style property for org-publish-project-alist
;;:style "<link rel=\"stylesheet\"
;;href=\"org.css\"
;;type=\"text/css\"/>"
;; publish

;; flyspell mode for spell checking everywhere
(add-hook 'org-mode-hook 'turn-on-flyspell 'append)
;; spell

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
(org-babel-do-load-languages
 'org-babel-load-languages
 '((sh         . t)
   (emacs-lisp . t)
   (lisp       . t)
   (python     . t)))
(setq org-confirm-babel-evaluate nil)
(setq org-src-fontify-natively t)
(setq org-src-tab-acts-natively t)

;; babel

;; Org-export very, very generic markdown file
(load "~/.emacs.d/personal/orgmode/contrib/lisp/org-export-generic.el")
(load "~/.emacs.d/personal/orgmode/markdown.el")
;; md stuff

;; provide this file for the user
(provide 'personal-org)
