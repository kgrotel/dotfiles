;;; package -- mode line and header configuration

;;; Commentary:
;;; This is configration of for mood line and header

;;; Code:

(use-package mood-line

  ;; Enable mood-line
  :config
  (mood-line-mode)

  ;; Use pretty Fira Code-compatible glyphs
  ;; :custom
  ;; (mood-line-glyph-alist . mood-line-glyphs-fira-code)
  )

(custom-set-faces
 '(mode-line ((t (:box (:line-width (1 . 5) :style flat-button)))))
 '(mode-line-inactive ((t (:box (:line-width (1 . 5) :style flat-button))))))

;; (custom-set-faces
;;  '(mode-line ((t ( :box (:line-width 5 ))))))

(provide 'cfg-modeline)
;;; cfg-modeline.el ends here
