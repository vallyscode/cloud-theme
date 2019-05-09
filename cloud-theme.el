;;; cloud-theme.el --- A light colored theme -*- lexical-binding: t -*-
;;
;; Copyright (C) 2019 Valerii Lysenko
;;
;; Author: Valerii Lysenko <vallyscode@gmail.com>
;; Maintainer: Valerii Lysenko <vallyscode@gmail.com>
;; Keywords: color theme light
;; URL: https://github.com/vallyscode/cloud-theme
;; Version: 0.1
;;
;;; Commentary:
;;
;; Cloud is a light theme based on Material palette
;;
;;; Code:

(require 'haskell-extra-coloring)

(deftheme cloud "Cloud light color theme")

(defgroup cloud nil "Cloud theme options."
  :group 'faces)

(let ((class '((class color) (min-colors 89)))
      ;; #00638a
      ;; #008abc
      ;; #7c56c1
      ;; #5e8302
      ;; #388e3c
      ;; #22aa22
      ;; #ddffdd
      ;; #cceecc
      ;; #c00000
      ;; #e00000
      ;; #ffdddd
      ;; #eecccc
      ;; #c06600
      ;; #f38e00
      ;; #eec931
      ;; #eeeeee
      ;; #e0e0e0
      ;; #d0d0d0
      ;; #c0c0c0
      ;; #a0a0a0
      ;; #8c8c8c
      ;; #4d4d4d
      ;; #009688

      ;; #00afff
      ;; #8d66fe
      ;; #42c2f8
      ;; #ffdddd
      ;; #D0372D
      ;; #008080
      ;; #F38630
      ;; #eeeeee
      ;; #e5e5e5
      ;; #c0c0c0


      ;; #089ea1
      ;; #699bae
      ;; #8dd0eb
      ;; #5ec3eb
      ;; #3b9dc4
      ;; #3793B8
      ;; #005270
      ;; #20566B
      ;; #006c96
      ;; #00638a
      ;; #286a85
      ;; #2c7591
      ;; #2f7e9d
      ;; #2f7f9e
      ;; #2f7f9e
      ;; #3389ab
      ;; #008abc
      ;; #008abd
      ;; #0087bf
      ;; #1171AD
      ;; #075E94
      ;; #005173
      ;; #fffbc4
      ;; #f0f0d8
      ;; #a8b3ba
      ;; #919aa1
      ;; #81a18a
      ;; #74917d
      ;; #aebaa8
      ;; #b4efb4
      ;; #ededed
      ;; #838c91
      ;; #6c7378
      ;; #cccccc
      ;; #d1d1d1
      ;; #d4d4d4
      ;; #f2f2f2
      ;; #454545
      ;; #ad0000
      ;; #c70000
      ;; #ed0000
      ;; #ff1919
      ;; #ffdddd
      ;; #bf6600
      ;; #bf7000
      ;; #cc6d00
      ;; #ff9419
      ;; #f4ad49
      ;; #6c4ca8
      ;; #7d57c2
      ;; #7c56c1
      ;; #855dcf
      ;; #b48cff
      ;; #5e8203
      ;; #678f03
      ;; #7a9730
      ;; #a7cf42
      ;; #95cf04
      ;; #E67373
      ;; #FF9999
      ;; #993D3D
      ;; #2e994c
      ;; #73E693
      ;; #6DB347
      ;; #AFE9AF
      ;; #4E7F33
      ;; #6DB347
      ;; #CDFFB3
      )

  (custom-theme-set-faces
   'cloud
   `(default ((,class (:background "#f2f2f2" :foreground "#454545"))))

   ;; highlight
   `(cursor ((,class (:background "#2f7e9d" :foreground "#f2f2f2" ))))
   `(fringe ((,class (:background "#f2f2f2" :foreground "#454545"  ))))
   `(border ((,class (:foreground "#2f7e9d"))))
   `(vertical-border ((,class (:foreground "#2f7e9d"))))
   `(highlight ((,class (:background "#fffbc4"))))
   `(region ((,class (:background "#008abd" :foreground "#f2f2f2"))))
   `(secondary-selection ((,class (:weight bold :background "#fffbc4"))))
   `(isearch ((,class (:foreground "#f2f2f2" :background "#3389ab"))))
   `(isearch-fail ((,class (:weight bold :foreground "#f2f2f2" :background "#ff1919"))))
   `(query-replace ((,class (:inherit isearch))))
   `(lazy-highlight ((,class (:foreground "#454545" :background "#fffbc4")))) ; Isearch others (see `match').
   `(hl-line ((,class (:background "#ededed"))))
   `(shadow ((,class ((:foreground "#cccccc")))))
   `(match ((,class (:weight bold :background "#fffbc4"))))
   `(show-paren-match ((,class (:background "#cccccc" :foreground "#2f7e9d"))))
   `(show-paren-mismatch ((,class (:background "#cccccc" :foreground "#ed0000"))))
   `(trailing-whitespace ((,class (:foreground "#cccccc" :background "#fffbc4"))))

   ;; UI
   `(button ((,class (:underline t :foreground "#2f7e9d"))))
   `(help-argument-name ((,class (:foreground "#2f7e9d"))))
   `(info-menu-star ((,class (:foreground "#2f7e9d"))))
   `(next-error ((,class (:inherit error))))
   `(nobreak-space ((,class (:background "#cfd8dc"))))
   `(file-name-shadow ((,class (:foreground "#cccccc"))))

   ;; native line numbers from emacs 26
   `(line-number ((,class (:background "#f2f2f2" :foreground "#8c8c8c"))))
   `(line-number-current-line ((,class (:background "#f2f2f2" :foreground "#cc6d00"))))

   ;; linum
   `(linum ((,class (:background "#f2f2f2" :foreground "#8c8c8c"))))

   ;; hlinum
   `(linum-highlight-face ((,class (:background "#f2f2f2" :foreground "#8c8c8c"))))

   ;; font lock
   `(font-lock-builtin-face ((,class (:foreground "#855dcf"))))
   `(font-lock-comment-delimiter-face ((,class (:weight normal :foreground "#8c8c8c"))))
   `(font-lock-comment-face ((,class (:slant italic :weight normal :foreground "#8c8c8c"))))
   `(font-lock-constant-face ((,class (:foreground "#008080"))))
   `(font-lock-doc-face ((,class (:slant italic :weight normal :foreground "#678f03"))))
   `(font-lock-function-name-face ((,class (:foreground "#454545"))))
   `(font-lock-keyword-face ((,class (:weight bold :foreground "#2f7e9d"))))
   `(font-lock-preprocessor-face ((,class (:foreground "#855dcf"))))
   `(font-lock-regexp-grouping-backslash ((,class (:weight bold :inherit nil))))
   `(font-lock-regexp-grouping-construct ((,class (:weight bold :inherit nil))))
   `(font-lock-string-face ((,class (:foreground "#678f03"))))
   `(font-lock-type-face ((,class (:weight bold :foreground "#008abd"))))
   `(font-lock-variable-name-face ((,class (:weight normal :foreground "#454545"))))
   `(font-lock-warning-face ((,class (:weight bold :foreground "#f4ad49"))))

   ;; mode line
   `(mode-line ((,class (:background "#2f7e9d" :foreground "#f2f2f2" :box (:line-width 1 :color "#2f7e9d")))))
   `(mode-line-inactive ((,class (:background "#cccccc" :foreground "#454545" :box (:line-width 1 :color "#cccccc")))))
   `(mode-line-buffer-id ((,class (:weight bold))))
   `(mode-line-emphasis ((,class (:foreground "#f2f2f2"))))
   `(mode-line-highlight ((,class (:foreground "#fffbc4"))))
   `(header-line ((,class (:background "#2f7e9d" :foreground "#f2f2f2" :box (:line-width 1 :color "#2f7e9d")))))

   ;; error/warning/success
   `(error ((,class (:weight bold :foreground "#ed0000"))))
   `(warning ((,class (:weight bold :foreground "#cc6d00"))))
   `(success ((,class (:weight bold :foreground "#2e994c"))))

   ;; escape and prompt
   `(minibuffer-prompt ((,class (:weight bold :foreground "#2f7e9d"))))
   `(minibuffer-noticeable-prompt ((,class (:weight bold :foreground "#2f7e9d"))))
   `(escape-glyph ((,class (:weight bold :foreground "#b48cff"))))

   ;; whitespace
   `(whitespace-hspace ((,class (:foreground "#cccccc"))))
   `(whitespace-indentation ((,class (:background nil :foreground "#454545"))))
   `(whitespace-line ((,class (:foreground "#e67373" :background "#f2f2f2"))))
   `(whitespace-tab ((,class (:background nil :foreground "#454545"))))
   `(whitespace-trailing ((,class (:background nil :foreground "#e67373"))))
   `(window-divider ((,class (:background "#2f7e9d"))))
   `(window-divider-first-pixel ((,class (:background "#2f7e9d"))))
   `(window-divider-last-pixel ((,class (:background "#2f7e9d"))))

   ;; link
   `(link ((,class (:underline t :foreground "#008abd"))))
   `(link-visited ((,class (:underline t :foreground "#7d57c2"))))

   ;; dired
   `(dired-header ((,class (:weight bold :foreground "#008abd" :background "#f2f2f2"))))
   `(dired-directory ((,class (:weight bold :foreground "#008abd" :background "#f2f2f2"))))
   `(dired-ignored ((,class (:strike-through t :foreground "#e67373"))))
   `(dired-mark ((,class (:foreground "#e67373" :background "#f2f2f2"))))
   `(dired-marked ((,class (:foreground "#e67373" :background "#ffdddd"))))
   `(dired-symlink ((,class (:foreground "#855dcf"))))

   ;; diff
   `(diff-added ((,class (:background "#ddffdd" :foreground "#2e994c"))))
   `(diff-removed ((,class (:background "#ffdddd" :foreground "#c70000"))))
   `(diff-changed ((,class (:background "#008abd" :foreground "#2f7e9d"))))
   `(diff-refine-added ((,class (:background "#ddffdd"))))
   `(diff-refine-removed ((,class (:background "#ffdddd"))))
   `(diff-refine-changed ((,class (:background "#008abd"))))
   `(diff-header ((,class (:foreground "#8c8c8c" :background "#f2f2f2"))))
   `(diff-file-header ((,class (:foreground "#2f7e9d" :background "#f2f2f2"))))
   `(diff-indicator-added ((,class (:foreground "#2e994c" :background "#ddffdd"))))
   `(diff-indicator-removed ((,class (:foreground "#c70000" :background "#ffdddd"))))
   `(diff-indicator-changed ((,class (:foreground "#2f7e9d" :background "#008abd"))))
   `(diff-hunk-header ((,class (:foreground "#7d57c2" :background "#f2f2f2"))))
   `(diff-none ((,class (:foreground "#454545"))))

   ;; company
   `(company-tooltip-common-selection ((,class (:weight normal :foreground "#f2f2f2"))))
   `(company-tooltip-selection ((,class (:weight normal :foreground "#f2f2f2" :background "#2f7e9d"))))
   `(company-tooltip-annotation-selection ((,class (:weight normal :foreground "eeeeee"))))
   `(company-tooltip-common ((,class (:weight bold))))
   `(company-tooltip ((,class (:foreground "#454545" :background "#cccccc"))))
   `(company-tooltip-annotation ((,class (:weight normal :foreground "#7d57c2"))))
   `(company-preview-common ((,class (:weight normal :foreground "#008abd" :inherit hl-line))))
   `(company-scrollbar-bg ((,class (:background "#cccccc"))))
   `(company-scrollbar-fg ((,class (:background "#8c8c8c"))))

   ;; eldoc
   `(eldoc-highlight-function-argument ((,class (:foreground "#5e8203" :weight bold))))

   ;; haskell
   `(haskell-pragma-face ((,class (:foreground "#7d57c2"))))
   `(haskell-keyword-face ((,class (:foreground "#2f7e9d"))))
   `(haskell-operator-face ((,class (:foreground "#d70087"))))
   `(haskell-type-face ((,class (:weight bold :foreground "#008abd"))))

   ;; which-function
   `(which-func ((,class (:foreground "#7d57c2"))))

   ;; flycheck
   `(flycheck-info ((,class (:underline (:color "#2e994c" :style wave) :weight bold))))
   `(flycheck-warning ((,class (:underline (:color "#cc6d00" :style wave) :weight bold))))
   `(flycheck-error ((,class (:underline (:color "#ed0000" :style wave) :weight bold))))
   `(flycheck-fringe-info ((,class (:foreground "#2e994c"))))
   `(flycheck-fringe-warning ((,class (:foreground "#cc6d00"))))
   `(flycheck-fringe-error ((,class (:foreground "#ed0000"))))
   `(flycheck-warning ((,class (:underline (:color "#cc6d00" :style wave)))))
   `(flycheck-error ((,class (:underline (:color "#ed0000" :style wave)))))
   `(flycheck-error-list-line-number ((,class (:foreground "#7d57c2"))))

   ;; helm
   `(helm-M-x-key ((,class (:foreground "#2e994c"))))
   `(helm-action ((,class (:foreground "#454545"))))
   `(helm-header ((,class (:foreground "#f2f2f2" :background "#008abd"))))
   `(helm-moccur-buffer ((,class (:foreground "#454545" :background "#cfd8dc"))));;highlight moccur buffer name
   `(helm-source-header ((,class (:foreground "#454545" :background "#cfd8dc" :height 1.3 :bold t))))
   `(helm-match ((,class (:foreground "#454545" :background "#fffbc4"))))
   `(helm-selection ((,class (:background "#f2f2f2"))))
   `(helm-selection-line ((,class (:background "#f2f2f2"))))
   `(helm-separator ((,class (:foreground "#454545"))))
   `(helm-visible-mark ((,class (:foreground "#e57373" :background "#ffdddd"))))
   `(helm-buffer-directory ((,class (:foreground "#008abd" :weight bold))))
   `(helm-buffer-file ((,class (:foreground "#454545"))))
   `(helm-buffer-not-saved ((,class (:foreground "#f4ad49"))))
   `(helm-buffer-process ((,class (:foreground "#e57373"))))
   `(helm-buffer-saved-out ((,class (:foreground "#e57373"))))
   `(helm-buffer-size ((,class (:foreground "#f4ad49"))))
   `(helm-candidate-number ((,class (:foreground "#f2f2f2" :background "#008abd"))))
   `(helm-ff-directory ((,class (:foreground "#008abd" :weight bold))))
   `(helm-ff-executable ((,class (:foreground "#2e994c"))))
   `(helm-ff-file ((,class (:foreground "#454545"))))
   `(helm-ff-invalid-symlink ((,class (:foreground "#7d57c2" :background "#ffdddd"))))
   `(helm-ff-symlink ((,class (:foreground "#7d57c2"))))

   `(outline-1 ((,class (:height 1.0 :weight bold :foreground "#008abd"))))
   `(outline-2 ((,class (:inherit outline-1))))
   `(outline-3 ((,class (:inherit outline-1))))
   `(outline-4 ((,class (:inherit outline-1))))
   `(outline-5 ((,class (:inherit outline-1))))
   `(outline-6 ((,class (:inherit outline-1))))
   `(outline-7 ((,class (:inherit outline-1))))
   `(outline-8 ((,class (:inherit outline-1))))

   ;; org
   `(org-level-1 ((,class (:height 1.0 :weight bold :foreground "#008abd"))))
   `(org-level-2 ((,class (:height 1.0 :weight bold :foreground "#7d57c2"))))
   `(org-level-3 ((,class (:height 1.0 :weight bold :foreground "#ff9419"))))
   `(org-level-4 ((,class (:height 1.0 :weight bold :foreground "#678f03"))))
   `(org-level-5 ((,class (:height 1.0 :weight bold :foreground "#00afff"))))
   `(org-level-6 ((,class (:height 1.0 :weight bold :foreground "#089ea1"))))
   `(org-level-7 ((,class (:height 1.0 :weight bold :foreground "#E67373"))))
   `(org-level-8 ((,class (:height 1.0 :weight bold :foreground "#22aa22"))))

   `(org-block ((,class (:background "#f2f2f2"))))
   `(org-block-background ((,class (:background "#f2f2f2"))))
   `(org-block-begin-line ((,class (:underline nil :foreground "#454545" :background "#cfd8dc"))))
   `(org-block-end-line ((,class (:overline nil :foreground "#454545" :background "#cfd8dc"))))
   `(org-checkbox ((,class (:weight bold :foreground "#7d57c2" :background "#f2f2f2"))))
   `(org-code ((,class (:foreground "#006400" :background "#fdfff7"))))

   `(org-todo ((,class (:weight bold :box (:line-width 1 :color "#993d3d") :foreground "#993d3d" :background "#ffdddd"))))
   `(org-done ((,class (:weight bold :box (:line-width 1 :color "#2e994c") :foreground "#2e994c" :background "#ddffdd"))))
   `(org-headline-done ((,class (:height 1.0 :weight normal :strike-through t :foreground "#454545"))))
   `(org-date ((,class (:underline t :foreground "#7d57c2"))))
   `(org-document-title ((,class (:height 1.8 :weight bold :foreground "#454545"))))

   ;; highlight numbers
   `(highlight-numbers-number ((,class (:foreground "#d75f00"))))

   ;; js2
   `(js2-error ((,class (:box (:line-width 1 :color "#e67373") :background "#ffdddd"))))
   `(js2-warning ((,class (:underline "#f4ad49"))))
   `(js2-external-variable ((,class (:foreground "#e67373"))))
   `(js2-function-param ((,class (:foreground "#008abd"))))
   `(js2-instance-member ((,class (:foreground "#2f7e9d"))))
   `(js2-jsdoc-html-tag-delimiter ((,class (:foreground "#e67373"))))
   `(js2-jsdoc-html-tag-name ((,class (:foreground "#e67373"))))
   `(js2-jsdoc-tag ((,class (:weight normal :foreground "#7d57c2"))))
   `(js2-jsdoc-type ((,class (:foreground "#008abd"))))
   `(js2-jsdoc-value ((,class (:weight normal :foreground "#7d57c2"))))
   `(js2-magic-paren ((,class (:underline t))))
   `(js2-private-function-call ((,class (:foreground "#f38e00"))))
   `(js2-private-member ((,class (:foreground "#008abd"))))
   `(js2-object-property ((,class (:foreground "#009688"))))
   ))

;;;###autoload
(and load-file-name
     (boundp 'custom-theme-load-path)
     (add-to-list 'custom-theme-load-path
                  (file-name-as-directory
                   (file-name-directory load-file-name))))

(provide-theme 'cloud)

;;; cloud-theme.el ends here
