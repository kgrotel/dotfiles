;;; package --- emacs configuration init.el

;;; Commentary:
;;; ny xonfig - probabaly shooutl add mot info here

;;; Code:

;;; loading configs
(add-to-list 'load-path "~/.emacs.d/config/")

(require 'cfg-global)
(require 'cfg-packages)
(require 'cfg-treesit)
(require 'cfg-completions)
(require 'cfg-modeline)
(require 'cfg-treemacs)
(require 'cfg-org-mode)
(require 'terraform-ts-mode)

(provide 'init)
;;; init.el ends here
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   '(zenburn-theme yasnippet yaml-mode which-key vertico treemacs-magit treemacs-icons-dired solarized-theme orderless multiple-cursors mood-line markdown-mode kind-icon json-mode git-gutter-fringe corfu cape)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(mode-line ((t (:box (:line-width (1 . 5) :style flat-button)))))
 '(mode-line-inactive ((t (:box (:line-width (1 . 5) :style flat-button))))))
