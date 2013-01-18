(require 'ein)
;; Request is used to connect to the iPython Server
(require 'request)

;; This snippet was provided in this issue in Ein: https://github.com/tkf/emacs-ipython-notebook/issues/93
(defun ein:kernel-start (kernel notebook-id)
  "Start kernel of the notebook whose id is NOTEBOOK-ID."
  (run-with-idle-timer
   0.5  ; delay
   nil
   (lambda (kernel notebook-id)
     (unless (ein:$kernel-running kernel)
       (ein:query-singleton-ajax
        (list 'kernel-start (ein:$kernel-kernel-id kernel))
        (concat (ein:url (ein:$kernel-url-or-port kernel)
                         (ein:$kernel-base-url kernel))
                "?" (format "notebook=%s" notebook-id))
        :type "POST"
        :parser #'ein:json-read
        :success (cons #'ein:kernel--kernel-started kernel))))
   kernel notebook-id))

(setq ein:notebook-modes '(ein:notebook-mumamo-mode ein:notebook-python-mode))
(setq ein:use-auto-complete t)

(provide 'personal-ein)
