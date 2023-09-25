;;; package -- org mode configuration

;;; Commentary:
;;; herer we setup org-mode and mermaid for creating readd me maybe more

;;; Code:

(use-package org-mode
  :ensure nil
  :init
   ;; active Babel languages
   (org-babel-do-load-languages
     'org-babel-load-languages
     '((plantuml . t)
       ))
  :hook
  (org-babel-after-execute . org-redisplay-inline-images)

  :custom
  (org-directory (expand-file-name "~/org"))
  (org-default-notes-file (concat org-directory "/motes.org"))
  (org-agenda-files '("~/org" "~/project/nordlb/_org"))
  
  (org-todo-keywords                '((sequence "TODO" "IN-PROGRESS" "WAITING" "DONE")))
  (org-edit-src-content-indentation 0)
  (org-plantuml-jar-path            "~/.emacs.d/external/plantuml-1.2023.10.jar")
  (org-confirm-babel-evaluate        nil)
  ;; Fix for including SVGs
  (org-latex-pdf-process
   '("%latex -shell-escape -interaction nonstopmode -output-directory %o %f"
     "bibtex %b"
     "%latex -shell-escape -interaction nonstopmode -output-directory %o %f"
     "%latex -shell-escape -interaction nonstopmode -output-directory %o %f"))
  )


(provide 'cfg-org-mode)
;;; cfg-org-mode.el ends here
