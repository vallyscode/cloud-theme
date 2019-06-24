;;; cloud-theme.el --- A light colored theme -*- lexical-binding: t -*-

;; Copyright (C) 2019 Valerii Lysenko

;; Author: Valerii Lysenko <vallyscode@gmail.com>
;; Maintainer: Valerii Lysenko <vallyscode@gmail.com>
;; Keywords: color theme
;; URL: https://github.com/vallyscode/cloud-theme
;; Version: 0.1
;; Package: cloud-theme
;; Package-Requires: ((emacs "24"))

;; This program is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <http://www.gnu.org/licenses/>.

;; This file is NOT part of GNU Emacs

;;; Commentary:

;; To use it, put the following in your Emacs configuration file:
;;
;; (use-package cloud-theme
;;   :ensure t
;;   :config
;;   (load-theme 'cloud t))
;;

;;; Code:

(deftheme cloud "Cloud light color theme")

(defgroup cloud nil "Cloud theme options."
  :group 'faces)

(let ((class '((class color) (min-colors 89))))
  (custom-theme-set-faces
   'cloud
   `(default ((,class (:background "#f2f2f2" :foreground "#454545"))))

   ;; highlight
   `(cursor ((,class (:background "#00638a" :foreground "#f2f2f2" ))))
   `(fringe ((,class (:background "#f2f2f2" :foreground "#454545"  ))))
   `(border ((,class (:foreground "#2f7e9d"))))
   `(vertical-border ((,class (:foreground "#2f7e9d"))))
   `(highlight ((,class (:background "#fffbc4"))))
   `(region ((,class (:background "#3389ab" :foreground "#f2f2f2"))))
   `(secondary-selection ((,class (:weight bold :background "#fffbc4"))))
   `(isearch ((,class (:foreground "#f2f2f2" :background "#008abd"))))
   `(isearch-fail ((,class (:weight bold :foreground "#f2f2f2" :background "#d0372d"))))
   `(query-replace ((,class (:inherit isearch))))
   `(lazy-highlight ((,class (:foreground "#454545" :background "#fffbc4")))) ; Isearch others (see `match').
   `(hl-line ((,class (:background "#ededed"))))
   `(shadow ((,class ((:foreground "#cccccc")))))
   `(match ((,class (:weight bold :background "#fffbc4"))))
   `(show-paren-match ((,class (:background "#cccccc" :foreground "#2f7e9d"))))
   `(show-paren-mismatch ((,class (:background "#cccccc" :foreground "#d0372d"))))
   `(trailing-whitespace ((,class (:foreground "#cccccc" :background "#fffbc4"))))

   ;; UI
   `(button ((,class (:underline t :foreground "#2f7e9d"))))
   `(help-argument-name ((,class (:foreground "#2f7e9d"))))
   `(info-menu-star ((,class (:foreground "#2f7e9d"))))
   `(next-error ((,class (:inherit error))))
   `(nobreak-space ((,class (:background "#b48cff"))))
   `(file-name-shadow ((,class (:foreground "#cccccc"))))

   ;; native line numbers from emacs 26
   `(line-number ((,class (:background "#f2f2f2" :foreground "#8c8c8c"))))
   `(line-number-current-line ((,class (:background "#f2f2f2" :foreground "#cc6d00"))))

   ;; linum
   `(linum ((,class (:background "#f2f2f2" :foreground "#8c8c8c"))))

   ;; hlinum
   `(linum-highlight-face ((,class (:background "#f2f2f2" :foreground "#8c8c8c"))))

   ;; font lock
   `(font-lock-builtin-face ((,class (:foreground "#7d57c2"))))
   `(font-lock-comment-delimiter-face ((,class (:weight normal :foreground "#919aa1"))))
   `(font-lock-comment-face ((,class (:slant italic :weight normal :foreground "#919aa1"))))
   `(font-lock-constant-face ((,class (:foreground "#008080"))))
   `(font-lock-doc-face ((,class (:slant italic :weight normal :foreground "#678f03"))))
   `(font-lock-function-name-face ((,class (:foreground "#454545"))))
   `(font-lock-keyword-face ((,class (:weight bold :foreground "#00638a"))))
   `(font-lock-preprocessor-face ((,class (:foreground "#7d57c2"))))
   `(font-lock-regexp-grouping-backslash ((,class (:weight bold :inherit nil))))
   `(font-lock-regexp-grouping-construct ((,class (:weight bold :inherit nil))))
   `(font-lock-string-face ((,class (:foreground "#678f03"))))
   `(font-lock-type-face ((,class (:weight bold :foreground "#008abd"))))
   `(font-lock-variable-name-face ((,class (:weight normal :foreground "#454545"))))
   `(font-lock-warning-face ((,class (:weight bold :foreground "#cc6d00"))))

   ;; mode line
   `(mode-line ((,class (:background "#2f7e9d" :foreground "#f2f2f2" :box (:line-width 1 :color "#2f7e9d")))))
   `(mode-line-inactive ((,class (:background "#cccccc" :foreground "#454545" :box (:line-width 1 :color "#cccccc")))))
   `(mode-line-buffer-id ((,class (:weight bold))))
   `(mode-line-emphasis ((,class (:foreground "#f2f2f2"))))
   `(mode-line-highlight ((,class (:foreground "#fffbc4"))))
   `(header-line ((,class (:background "#2f7e9d" :foreground "#f2f2f2" :box (:line-width 1 :color "#2f7e9d")))))

   ;; error/warning/success
   `(error ((,class (:weight bold :foreground "#d0372d"))))
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
   `(link ((,class (:underline t :foreground "#006c96"))))
   `(link-visited ((,class (:underline t :foreground "#6c4ca8"))))

   ;; dired
   `(dired-header ((,class (:weight bold :foreground "#2f7e9d" :background "#f2f2f2"))))
   `(dired-directory ((,class (:weight bold :foreground "#2f7e9d" :background "#f2f2f2"))))
   `(dired-ignored ((,class (:strike-through t :foreground "#D0372D"))))
   `(dired-mark ((,class (:foreground "#D0372D" :background "#f2f2f2"))))
   `(dired-marked ((,class (:foreground "#D0372D" :background "#ffdddd"))))
   `(dired-symlink ((,class (:foreground "#855dcf"))))

   ;; diff
   `(diff-added ((,class (:background "#ddffdd" :foreground "#22863a"))))
   `(diff-removed ((,class (:background "#ffdddd" :foreground "#d0372d"))))
   `(diff-changed ((,class (:background "#f8f1d3" :foreground "#bf7000"))))
   `(diff-refine-added ((,class (:background "#cceecc"))))
   `(diff-refine-removed ((,class (:background "#eecccc"))))
   `(diff-refine-changed ((,class (:background "#fce8c9"))))
   `(diff-header ((,class (:foreground "#8c8c8c" :background "#f2f2f2"))))
   `(diff-file-header ((,class (:foreground "#2f7e9d" :background "#f2f2f2"))))
   `(diff-hunk-header ((,class (:weight bold :foreground "#6f42c1" :background "#f2f2f2"))))
   `(diff-index ((,class (:foreground "#8c8c8c" :background "#f2f2f2"))))
   `(diff-indicator-added ((,class (:foreground "#22863a" :background "#ddffdd"))))
   `(diff-indicator-removed ((,class (:foreground "#d0372d" :background "#ffdddd"))))
   `(diff-indicator-changed ((,class (:foreground "#bf7000" :background "#f8f1d3"))))
   `(diff-nonexistent ((,class (:foreground "#454545"))))

   ;; ediff
   `(ediff-current-diff-A ((,class (:background "#ffdddd"))))
   `(ediff-current-diff-B ((,class (:background "#ddffdd"))))
   `(ediff-current-diff-C ((,class (:background "#f8f1d3"))))
   `(ediff-even-diff-A ((,class (:background "#cccccc"))))
   `(ediff-even-diff-B ((,class (:background "#cccccc"))))
   `(ediff-fine-diff-A ((,class (:background "#eecccc"))))
   `(ediff-fine-diff-B ((,class (:background "#cceecc"))))
   `(ediff-odd-diff-A ((,class (:background "#cccccc"))))
   `(ediff-odd-diff-B ((,class (:background "#cccccc"))))

   ;; company
   `(company-tooltip-common-selection ((,class (:weight normal :foreground "#f2f2f2"))))
   `(company-tooltip-selection ((,class (:weight normal :foreground "#f2f2f2" :background "#2f7e9d"))))
   `(company-tooltip-annotation-selection ((,class (:weight normal :foreground "eeeeee"))))
   `(company-tooltip-common ((,class (:weight bold))))
   `(company-tooltip ((,class (:foreground "#454545" :background "#cccccc"))))
   `(company-tooltip-annotation ((,class (:weight normal :foreground "#7d57c2"))))
   `(company-preview-common ((,class (:weight normal :foreground "#2f7e9d" :inherit hl-line))))
   `(company-scrollbar-bg ((,class (:background "#cccccc"))))
   `(company-scrollbar-fg ((,class (:background "#8c8c8c"))))

   ;; eldoc
   `(eldoc-highlight-function-argument ((,class (:foreground "#008abd" :weight bold))))

   ;; haskell
   `(haskell-pragma-face ((,class (:foreground "#7d57c2"))))
   `(haskell-keyword-face ((,class (:foreground "#2f7e9d"))))
   `(haskell-operator-face ((,class (:foreground "#d70087"))))
   `(haskell-type-face ((,class (:weight bold :foreground "#008abd"))))

   ;; which-function
   `(which-func ((,class (:foreground "#7d57c2"))))

   ;; undo-tree
   `(undo-tree-visualizer-current-face ((,class (:foreground "#cc6d00"))))
   `(undo-tree-visualizer-active-branch-face ((,class (:foreground "#b48cff"))))
   `(undo-tree-visualizer-default-face ((,class (:foreground "#6c4ca8"))))
   `(undo-tree-visualizer-register-face ((,class (:foreground "#678f03"))))
   `(undo-tree-visualizer-unmodified-face ((,class (:foreground "#6c7378"))))

   ;; grep
   `(grep-context-face ((,class (:foreground "#919aa1"))))
   `(grep-error-face ((,class (:foreground "#D0372d"))))
   `(grep-hit-face ((,class (:foreground "#2f7e9d"))))
   `(grep-match-face ((,class (:foreground nil :background nil :inherit match))))

   `(regex-tool-matched-face ((,class (:foreground nil :background nil :inherit match))))

   ;; compilation
   `(compilation-column-number ((,class (:foreground "#cc6d00"))))
   `(compilation-line-number ((,class (:foreground "#cc6d00"))))
   `(compilation-message-face ((,class (:foreground "#2f7e9d"))))
   `(compilation-mode-line-exit ((,class (:foreground "#2e994c"))))
   `(compilation-mode-line-fail ((,class (:foreground "#D0372d"))))
   `(compilation-mode-line-run ((,class (:foreground "#2f7e9d"))))

   ;; flycheck
   `(flycheck-info ((,class (:underline (:color "#2e994c" :style wave) :weight bold))))
   `(flycheck-warning ((,class (:underline (:color "#cc6d00" :style wave) :weight bold))))
   `(flycheck-error ((,class (:underline (:color "#D0372D" :style wave) :weight bold))))
   `(flycheck-fringe-info ((,class (:foreground "#2e994c"))))
   `(flycheck-fringe-warning ((,class (:foreground "#cc6d00"))))
   `(flycheck-fringe-error ((,class (:foreground "#D0372D"))))
   `(flycheck-warning ((,class (:underline (:color "#cc6d00" :style wave)))))
   `(flycheck-error ((,class (:underline (:color "#D0372D" :style wave)))))
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
   `(helm-visible-mark ((,class (:foreground "#D0372D" :background "#ffdddd"))))
   `(helm-buffer-directory ((,class (:foreground "#2f7e9d" :weight normal))))
   `(helm-buffer-file ((,class (:foreground "#454545"))))
   `(helm-buffer-not-saved ((,class (:foreground "#f4ad49"))))
   `(helm-buffer-process ((,class (:foreground "#D0372D"))))
   `(helm-buffer-saved-out ((,class (:foreground "#D0372D"))))
   `(helm-buffer-size ((,class (:foreground "#cc6d00"))))
   `(helm-candidate-number ((,class (:foreground "#f2f2f2" :background "#cc6d00"))))
   `(helm-ff-directory ((,class (:foreground "#2f7e9d" :weight bold))))
   `(helm-ff-executable ((,class (:foreground "#2e994c"))))
   `(helm-ff-file ((,class (:foreground "#454545"))))
   `(helm-ff-invalid-symlink ((,class (:foreground "#7d57c2" :background "#ffdddd"))))
   `(helm-ff-symlink ((,class (:foreground "#7d57c2"))))

   ;; which-key
   `(which-key-key-face ((,class (:foreground "#7d57c2" :weight bold))))
   `(which-key-special-key-face ((,class (:foreground "#d70087"  :weight bold :height 1.1))))
   `(which-key-command-description-face ((,class (:foreground "#454545" ))))
   `(which-key-group-description-face ((,class (:foreground "#2f7e9d"))))
   `(which-key-separator-face ((,class (:foreground "#919aa1"))))

   ;; rainbow delimiters
   `(rainbow-delimiters-depth-1-face ((,class (:foreground "#00638a"))))
   `(rainbow-delimiters-depth-2-face ((,class (:foreground "#7d57c2"))))
   `(rainbow-delimiters-depth-3-face ((,class (:foreground "#008080"))))
   `(rainbow-delimiters-depth-4-face ((,class (:foreground "#2e994c"))))
   `(rainbow-delimiters-depth-5-face ((,class (:foreground "#00638a"))))
   `(rainbow-delimiters-depth-6-face ((,class (:foreground "#7d57c2"))))
   `(rainbow-delimiters-depth-7-face ((,class (:foreground "#008080"))))
   `(rainbow-delimiters-depth-8-face ((,class (:foreground "#2e994c"))))
   `(rainbow-delimiters-depth-9-face ((,class (:foreground "#00638a"))))
   `(rainbow-delimiters-depth-10-face ((,class (:foreground "#7d57c2"))))
   `(rainbow-delimiters-depth-11-face ((,class (:foreground "#008080"))))
   `(rainbow-delimiters-depth-12-face ((,class (:foreground "#2e994c"))))

   ;; outline
   `(outline-1 ((,class (:height 1.3 :weight bold :foreground "#008abd"))))
   `(outline-2 ((,class (:height 1.2 :weight bold :foreground "#7d57c2"))))
   `(outline-3 ((,class (:height 1.1 :weight bold :foreground "#cc6d00"))))
   `(outline-4 ((,class (:height 1.0 :weight bold :foreground "#2e994c"))))
   `(outline-5 ((,class (:height 1.0 :weight bold :foreground "#00638a"))))
   `(outline-6 ((,class (:height 1.0 :weight bold :foreground "#D0372D"))))
   `(outline-7 ((,class (:height 1.0 :weight bold :foreground "#008080"))))
   `(outline-8 ((,class (:height 1.0 :weight bold :foreground "#6c7378"))))

   ;; org
   `(org-level-1 ((,class (:height 1.3 :weight bold :foreground "#008abd"))))
   `(org-level-2 ((,class (:height 1.2 :weight bold :foreground "#7d57c2"))))
   `(org-level-3 ((,class (:height 1.1 :weight bold :foreground "#cc6d00"))))
   `(org-level-4 ((,class (:height 1.0 :weight bold :foreground "#2e994c"))))
   `(org-level-5 ((,class (:height 1.0 :weight bold :foreground "#00638a"))))
   `(org-level-6 ((,class (:height 1.0 :weight bold :foreground "#D0372D"))))
   `(org-level-7 ((,class (:height 1.0 :weight bold :foreground "#008080"))))
   `(org-level-8 ((,class (:height 1.0 :weight bold :foreground "#6c7378"))))

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
   `(js2-error ((,class (:box (:line-width 1 :color "#D0372D") :background "#ffdddd"))))
   `(js2-warning ((,class (:underline "#cc6d00"))))
   `(js2-external-variable ((,class (:foreground "#D0372D"))))
   `(js2-function-param ((,class (:foreground "#008abd"))))
   `(js2-instance-member ((,class (:foreground "#2f7e9d"))))
   `(js2-jsdoc-html-tag-delimiter ((,class (:foreground "#D0372D"))))
   `(js2-jsdoc-html-tag-name ((,class (:foreground "#D0372D"))))
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
(provide 'cloud-theme)
;;; cloud-theme.el ends here
