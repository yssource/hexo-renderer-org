(progn
  (setq org-export-allow-bind-keywords t)
  (goto-line 0)
  ;; (insert "${config.org.common}\n")
  ;; reload org setting https://lists.gnu.org/archive/html/emacs-orgmode/2014-01/msg00648.html
  (normal-mode)
  (unless (derived-mode-p "org-mode")
    (org-mode))
  ;; (org-html-export-as-html nil nil nil nil nil nil)
  (org-html-export-as-html nil nil nil nil nil)
  (message "+=+=output_begin=+=+%s+=+=output_begin=+=+" (buffer-string)))
