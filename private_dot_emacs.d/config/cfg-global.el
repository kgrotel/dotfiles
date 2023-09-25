;;; package -- global emacs settings

;;; Commentary:
;;; This is Basic configration of Emacs

;;; Code:

;; debug of something went wrong
; (setq debug-on-error t)

;; Disable the splash screen (to enable it agin, replace the t with 0)
(setq inhibit-splash-screen t)

;; shift selection mode enabled
(setq shift-selection-mode t)

;; Visual line mode everywhere, please
(global-visual-line-mode t)

;; set line spacing globally
(setq default-text-properties '(line-spacing 0.25 line-height 1.25))

;; Display line numbers only in prog-modes
(add-hook 'prog-mode-hook 'display-line-numbers-mode)
; (global-display-line-numbers-mode)

;; Minibuffer Settings
(setq read-buffer-completion-ignore-case t
     read-file-name-completion-ignore-case t
     completion-ignore-case t)

;; Disable Toolsbar
(tool-bar-mode -1)

;; Disable Scrollbars
(scroll-bar-mode -1)

;; Kill behaviour whole line 
(setq kill-whole-line t)

;; revert buffers if they change on disk
(global-auto-revert-mode t)
;; kept for future use, I think I do not want that
;;  (setq global-auto-revert-non-file-buffers nil)

(global-set-key "\M-8" (lambda () (interactive) (insert "{")))
(global-set-key "\M-9" (lambda () (interactive) (insert "}")))
(global-set-key "\M-5" (lambda () (interactive) (insert "[")))
(global-set-key "\M-6" (lambda () (interactive) (insert "]")))
(global-set-key "\M-n" (lambda () (interactive) (insert "~")))

;; Set C-c, C-x, C-v just to be in sync with the rest of the world
(cua-mode t)

;; Show the matching parenthesis
(show-paren-mode 1)

;; Syntactic close
;; https://github.com/emacs-berlin/syntactic-close
(global-set-key (kbd "C-]") 'syntactic-close)

;; C-a marks the whole buffer
(global-set-key (kbd "C-a") 'mark-whole-buffer)

;; dont create backup and autosave
(setq make-backup-files nil) ; stop creating backup~ files
(setq auto-save-default nil) ; stop creating #autosave# files

(global-unset-key (kbd "ESC <left>"))
(global-unset-key (kbd "ESC <right>"))

;; Windmove - move between windows use ALT
(windmove-default-keybindings 'meta)
(global-set-key (kbd "ESC <up>") 'windmove-up)
(global-set-key (kbd "ESC <down>") 'windmove-down)
(global-set-key (kbd "ESC <right>") 'windmove-right)
(global-set-key (kbd "ESC <left>") 'windmove-left)

;; Unset Shift-arrow keybindings
(global-unset-key (vector (list 'shift 'left)))
(global-unset-key (vector (list 'shift 'right)))
(global-unset-key (vector (list 'shift 'up)))
(global-unset-key (vector (list 'shift 'down)))


;; Reload config on F5
(defun reload-init-file ()
  (interactive)
  (load-file user-init-file))
(global-set-key (kbd "<f5>") 'reload-init-file)

;; dont use ls on mac
(when (string= system-type "darwin")       
  (setq dired-use-ls-dired nil))

(provide 'cfg-global)
;;; cfg-global.el ends here
