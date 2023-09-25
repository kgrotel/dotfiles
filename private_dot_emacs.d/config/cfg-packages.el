;;; package -- packages installation

;;; Comentary:
;;; This Installs globally needed tools

;;; Code:

;; Setuo Repositories
(require 'package) ;; Emacs builtin
(setq package-archives
'(
   ("org" . "https://orgmode.org/elpa/")
   ("gnu" . "https://elpa.gnu.org/packages/")
   ("melpa" . "https://melpa.org/packages/")
))
(package-initialize)

;; update packages list if we are on a new install
(unless package-archive-contents
  (package-refresh-contents))

(require 'use-package)             ;; Emacs builtin
(setq use-package-always-ensure t) ;; Always Ensure 

;;; use multicursor
(use-package multiple-cursors)
(global-set-key (kbd "C-d") 'mc/mark-next-like-this-word)
(global-set-key (kbd "C-c C-d") 'mc/mark-all-words-like-this)
(global-set-key (kbd "C-M-<up>") 'mc/mark-previous-lines)
(global-set-key (kbd "C-M-<down>") 'mc/mark-next-lines)
(global-set-key (kbd "C-M-d") 'mc/edit-lines)

;;; which-key integration
(use-package which-key
  :config 
  (which-key-mode))

;;; Install Magit
(use-package magit
  :custom
  (magit-diff-refine-hunk (quote all))
  :bind (("C-x g" . magit-status)
         ("C-x C-g" . magit-status)))

;;; Install Git Gutter
(use-package git-gutter
  :custom
  (git-gutter:update-interval 0.02)
  :hook
  (prog-mode . git-gutter-mode))

(setq-default left-fringe-width 15)

(use-package git-gutter-fringe
  :custom-face
  (git-gutter-fr:modified ((t (:foreground "cyan3"))))
  (git-gutter-fr:added ((t (:foreground "SeaGreen2"))))
  (git-gutter-fr:deleted ((t (:foreground "tomato2"))))
  :config
  (define-fringe-bitmap 'git-gutter-fr:added [7] nil nil '(center repeated))
  (define-fringe-bitmap 'git-gutter-fr:modified [7] nil nil '(center repeated))
  (define-fringe-bitmap 'git-gutter-fr:deleted [255 255 255 255] nil nil 'bottom)
  ;(define-fringe-bitmap 'git-gutter-fr:deleted [128 192 224 240] nil nil 'bottom)
  )

;; -------------------- ;;
;;       YASNIPPET      ;;
;; -------------------- ;;
(use-package yasnippet
  :config
  (yas-global-mode))


(use-package zenburn-theme
  :custom
  (zenburn-use-variable-pitch t)      ;; use variable-pitch fonts for some headings and titles
  (zenburn-scale-org-headlines t)     ;; scale headings in org-mode
  (zenburn-scale-outline-headlines t) ;; scale headings in outline-mode

  :config
  (load-theme 'zenburn t))

(provide 'cfg-packages)
;;; cfg-packages.el ends here
