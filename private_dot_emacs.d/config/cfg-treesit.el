;;; package --- emacs treesitter stuff

;;; Commentary:
;;; ny xonfig - probabaly shooutl add mot info here

;;; Code:

;;; Yaml Mode install
(use-package yaml-mode)

;; JSON Mode
(use-package json-mode)

;; Markdown Mode
(use-package markdown-mode)

;; Configure BuiltIn Tree-Sitter
(use-package treesit
  :ensure nil
  :commands (treesit-install-language-grammar my/treesit-install-all-languages)
  
  :init
  (setq treesit-language-source-alist
   '((bash . ("https://github.com/tree-sitter/tree-sitter-bash"))
     (json . ("https://github.com/tree-sitter/tree-sitter-json"))
     (markdown . ("https://github.com/ikatyang/tree-sitter-markdown"))
     (hcl . ("https://github.com/MichaHoffmann/tree-sitter-hcl"))
     (terraform . ("https://github.com/MichaHoffmann/tree-sitter-hcl"  "main"  "dialects/terraform/src"))
     (yaml . ("https://github.com/ikatyang/tree-sitter-yaml"))
     (python . ("https://github.com/tree-sitter/tree-sitter-python"))))
 ;; (setq treesit-load-name-override-list '((terraform "libtree-sitter-hcl" "tree_sitter_hcl")))
  
  :config
  (defun my/treesit-install-all-languages ()
    "Install all languages specified by `treesit-language-source-alist'."
    (interactive)
    (let ((languages (mapcar 'car treesit-language-source-alist)))
      (dolist (lang languages)
	      (treesit-install-language-grammar lang)
	      (message "`%s' parser was installed." lang)
	      (sit-for 0.75)))))

(setq major-mode-remap-alist
        '((yaml-mode . yaml-ts-mode)
	  (elisp-mode . elisp-ts-mode)
 	  (bash-mode . bash-ts-mode)
          (json-mode . json-ts-mode)
          (markdown-mode . markdown-ts-mode)))


(provide 'cfg-treesit)
;;; cfg-treesit.el ends here
