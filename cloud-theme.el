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

(deftheme cloud
  "Cloud light color theme")

(defgroup cloud nil
  "Cloud theme options."
  :group 'faces)

(let ((class '((class color) (min-colors 89)))
      (cloud-teal-1 "#009688")
      (cloud-teal-2 "#80cbc4")
      (cloud-orange-0 "#ff6d00")
      (cloud-orange-1 "#ff9800")
      (cloud-orange-2 "#ffb74d")
      (cloud-green-0 "#1b5e20")
      (cloud-green-1 "#388e3c")
      (cloud-green-2 "#81c784")
      (cloud-green-3 "#ddffdd")
      (cloud-green-6 "#cceecc")
      (cloud-green-4 "#22aa22")
      (cloud-green-5 "#335533")
      (cloud-green-7 "#336633")
      (cloud-bluegray-0 "#607d8b")
      (cloud-bluegray-2 "#b0bec5")
      (cloud-bluegray-3 "#cfd8dc")
      (cloud-yellow-0 "#fdd835")
      (cloud-yellow-1 "#fff176")
      (cloud-yellow-2 "#ffff8d")
      (cloud-yellow-3 "#ffffcc")
      (cloud-yellow-6 "#eeeebb")
      (cloud-yellow-4 "#aaaa11")
      (cloud-yellow-5 "#555522")
      (cloud-yellow-7 "#666622")
      (cloud-gray-0 "#424242")
      (cloud-gray-1 "#9e9e9e")
      (cloud-gray-2 "#bdbdbd")
      (cloud-gray-3 "#e0e0e0")
      (cloud-gray-4 "#eeeeee")
      (cloud-red-0 "#b71c1c")
      (cloud-red-1 "#e57373")
      (cloud-red-2 "#ef9a9a")
      (cloud-red-3 "#ffdddd")
      (cloud-red-6 "#eecccc")
      (cloud-red-4 "#aa2222")
      (cloud-red-5 "#553333")
      (cloud-red-7 "#663333")
      (cloud-blue-0 "#005073")
      (cloud-blue-x "#006699")
      (cloud-blue-1 "#107dac")
      (cloud-purple-0 "#673ab7")
      (cloud-purple-1 "#7e57c2")
      (cloud-purple-2 "#b39ddb")
      (cloudx "#d70087")
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
      )

  (custom-theme-set-faces
   'cloud
   `(default ((,class (:background "#eeeeee" :foreground "#4d4d4d"))))
   `(cursor ((,class (:background "#00638a" :foreground "#eeeeee" ))))

   ;; highlight
   `(fringe ((,class (:background "#eeeeee" :foreground "#4d4d4d"  ))))
   `(border ((,class (:foreground "#00638a"))))
   `(vertical-border ((,class (:foreground "##00638a"))))
   `(highlight ((,class (:background "#ffff8d"))))
   `(region ((,class (:background "#008abc" :foreground "#eeeeee"))))
   `(secondary-selection ((,class (:weight bold :background "#ffff8d"))))
   `(isearch ((,class (:foreground "#eeeeee" :background "#008abc"))))
   `(isearch-fail ((,class (:weight bold :foreground "#eeeeee" :background "#e00000"))))
   `(query-replace ((,class (:inherit isearch))))
   `(lazy-highlight ((,class (:foreground "#4d4d4d" :background "#ffff8d")))) ; Isearch others (see `match').
   `(hl-line ((,class (:background "#e0e0e0"))));; highlight current line
   `(shadow ((,class ((:foreground "#c0c0c0")))))
   `(match ((,class (:weight bold :background "#ffff8d"))))
   `(show-paren-match ((,class (:background "#c0c0c0" :foreground "#00638a"))))
   `(show-paren-mismatch ((,class (:background "#c0c0c0" :foreground "#c00000"))))
   `(trailing-whitespace ((,class (:foreground "#c0c0c0" :background "#fff176"))))

   ;; UI
   `(button ((,class (:underline t :foreground "#00638a"))))
   `(help-argument-name ((,class (:foreground "#00638a"))))
   `(info-menu-star ((,class (:foreground "#00638a"))))
   `(next-error ((,class (:inherit error))))
   `(nobreak-space ((,class (:background "#cfd8dc"))))
   `(file-name-shadow ((,class (:foreground "#c0c0c0"))))

   ;; native line numbers from emacs 26
   `(line-number ((,class (:background "#eeeeee" :foreground "#a0a0a0"))))
   `(line-number-current-line ((,class (:background "#eeeeee" :foreground "#c06600"))))

   ;; linum
   `(linum ((,class (:background "#eeeeee" :foreground "#a0a0a0"))))

   ;; hlinum
   `(linum-highlight-face ((,class (:background "#eeeeee" :foreground "#a0a0a0"))))

   ;; font lock
   `(font-lock-builtin-face ((,class (:foreground "#7c56c1"))))
   `(font-lock-comment-delimiter-face ((,class (:weight normal :foreground "#8c8c8c"))))
   `(font-lock-comment-face ((,class (:slant italic :weight normal :foreground "#a0a0a0"))))
   `(font-lock-constant-face ((,class (:foreground "#c00000"))))
   `(font-lock-doc-face ((,class (:foreground "#a0a0a0"))))
   `(font-lock-function-name-face ((,class (:foreground "#4d4d4d"))))
   `(font-lock-keyword-face ((,class (:weight bold :foreground "#00638a"))))
   `(font-lock-preprocessor-face ((,class (:foreground "#7c56c1"))))
   `(font-lock-regexp-grouping-backslash ((,class (:weight bold :inherit nil))))
   `(font-lock-regexp-grouping-construct ((,class (:weight bold :inherit nil))))
   `(font-lock-string-face ((,class (:foreground "#5e8302"))))
   `(font-lock-type-face ((,class (:weight bold :foreground "#008abc"))))
   `(font-lock-variable-name-face ((,class (:weight normal :foreground "#4d4d4d"))))
   `(font-lock-warning-face ((,class (:weight bold :foreground "#f38e00"))))

   ;; mode line
   `(mode-line ((,class (:background "#00638a" :foreground "#eeeeee" :box (:line-width 1 :color "#00638a")))))
   `(mode-line-inactive ((,class (:background "#d0d0d0" :foreground "#4d4d4d" :box (:line-width 1 :color "#d0d0d0")))))
   `(mode-line-buffer-id ((,class (:weight bold))))
   `(mode-line-emphasis ((,class (:foreground "#eeeeee"))))
   `(mode-line-highlight ((,class (:foreground "#ffff8d"))))
   `(header-line ((,class (:background "#00638a" :foreground "#eeeeee" :box (:line-width 1 :color "#00638a")))))

   ;; error/warning/success
   `(error ((,class (:weight bold :foreground "#e00000"))))
   `(warning ((,class (:weight bold :foreground "#f38e00"))))
   `(success ((,class (:weight bold :foreground "#388e3c"))))

   ;; escape and prompt
   `(minibuffer-prompt ((,class (:weight bold :foreground "#00638a"))))
   `(minibuffer-noticeable-prompt ((,class (:weight bold :foreground "#00638a"))))
   `(escape-glyph ((,class (:weight bold :foreground "#eec931"))))

   ;; whitespace
   `(whitespace-hspace ((,class (:foreground "#bdbdbd"))))
   `(whitespace-indentation ((,class (:background nil :foreground "#4d4d4d"))))
   `(whitespace-line ((,class (:foreground "#e00000" :background "#eeeeee"))))
   `(whitespace-tab ((,class (:background nil :foreground "#4d4d4d"))))
   `(whitespace-trailing ((,class (:background nil :foreground "#e00000"))))
   `(window-divider ((,class (:background "#00638a"))))
   `(window-divider-first-pixel ((,class (:background "#00638a"))))
   `(window-divider-last-pixel ((,class (:background "#00638a"))))

   ;; link
   `(link ((,class (:underline t :foreground "#008abc"))))
   `(link-visited ((,class (:underline t :foreground "#7c56c1"))))

   ;; dired
   `(dired-header ((,class (:weight bold :foreground "#008abc" :background "#eeeeee"))))
   `(dired-directory ((,class (:weight bold :foreground "#008abc" :background "#eeeeee"))))
   `(dired-ignored ((,class (:strike-through t :foreground "#c00000"))))
   `(dired-mark ((,class (:foreground "#c00000" :background "#eeeeee"))))
   `(dired-marked ((,class (:foreground "#c00000" :background "#ffdddd"))))
   `(dired-symlink ((,class (:foreground "#009688"))))

   ;; diff
   `(diff-added ((,class (:background "#ddffdd" :foreground "#22aa22"))))
   `(diff-removed ((,class (:background "#ffdddd" :foreground "#c00000"))))
   `(diff-changed ((,class (:background "#008abc" :foreground "#00638a"))))
   `(diff-refine-added ((,class (:background "#cceecc"))))
   `(diff-refine-removed ((,class (:background "#eecccc"))))
   `(diff-refine-changed ((,class (:background "#008abc"))))
   `(diff-header ((,class (:foreground "#8c8c8c" :background "#eeeeee"))))
   `(diff-file-header ((,class (:foreground "#00638a" :background "#eeeeee"))))
   `(diff-indicator-added ((,class (:foreground "#22aa22" :background "#ddffdd"))))
   `(diff-indicator-removed ((,class (:foreground "#c00000" :background "#ffdddd"))))
   `(diff-indicator-changed ((,class (:foreground "#00638a" :background "#008abc"))))
   `(diff-hunk-header ((,class (:foreground "#7c56c1" :background "#eeeeee"))))
   `(diff-none ((,class (:foreground "#4d4d4d"))))

   ;; company
   `(company-tooltip-common-selection ((,class (:weight normal :foreground "#eeeeee"))))
   `(company-tooltip-selection ((,class (:weight normal :foreground "#eeeeee" :background "#00638a"))))
   `(company-tooltip-annotation-selection ((,class (:weight normal :foreground "eeeeee"))))
   `(company-tooltip-common ((,class (:weight bold))))
   `(company-tooltip ((,class (:foreground "#4d4d4d" :background "#d0d0d0"))))
   `(company-tooltip-annotation ((,class (:weight normal :foreground "#7c56c1"))))
   `(company-preview-common ((,class (:weight normal :foreground "#008abc" :inherit hl-line))))
   `(company-scrollbar-bg ((,class (:background "#c0c0c0"))))
   `(company-scrollbar-fg ((,class (:background "#a0a0a0"))))

   ;; org
   `(outline-1 ((,class (:height 1.0 :weight bold :foreground "#008abc"))))
   `(outline-2 ((,class (:inherit outline-1))))
   `(outline-3 ((,class (:inherit outline-1))))
   `(outline-4 ((,class (:inherit outline-1))))
   `(outline-5 ((,class (:inherit outline-1))))
   `(outline-6 ((,class (:inherit outline-1))))
   `(outline-7 ((,class (:inherit outline-1))))
   `(outline-8 ((,class (:inherit outline-1))))

   ;; eldoc
   `(eldoc-highlight-function-argument ((,class (:foreground "#5e8302" :weight bold))))

   ;; haskell
   `(haskell-pragma-face ((,class (:foreground "#7c56c1"))))
   `(haskell-keyword-face ((,class (:foreground "#00638a"))))
   `(haskell-operator-face ((,class (:foreground "#d70087"))))
   `(haskell-type-face ((,class (:weight bold :foreground "#008abc"))))

   ;; which-function
   `(which-func ((,class (:foreground "#7c56c1"))))

   ;; flycheck
   `(flycheck-info ((,class (:underline (:color "#5e8302" :style wave) :weight bold))))
   `(flycheck-warning ((,class (:underline (:color "#f38e00" :style wave) :weight bold :background "#ffff8d"))))
   `(flycheck-error ((,class (:underline (:color "#c00000" :style wave) :weight bold :background "#ffdddd"))))
   `(flycheck-fringe-info ((,class (:foreground "#5e8302"))))
   `(flycheck-fringe-warning ((,class (:foreground "#f38e00"))))
   `(flycheck-fringe-error ((,class (:foreground "#c00000"))))
   `(flycheck-warning ((,class (:underline (:color "#f38e00" :style wave)))))
   `(flycheck-error ((,class (:underline (:color "#c00000" :style wave)))))
   `(flycheck-error-list-line-number ((,class (:foreground "#7c56c1"))))

   ;; helm
   `(helm-M-x-key ((,class (:foreground "#388e3c"))))
   `(helm-action ((,class (:foreground "#4d4d4d"))))
   `(helm-header ((,class (:foreground "#eeeeee" :background "#107dac"))))
   `(helm-moccur-buffer ((,class (:foreground "#4d4d4d" :background "#cfd8dc"))));;highlight moccur buffer name
   `(helm-source-header ((,class (:foreground "#4d4d4d" :background "#cfd8dc" :height 1.3 :bold t))))
   `(helm-match ((,class (:foreground "#4d4d4d" :background "#fff59d"))))
   `(helm-selection ((,class (:background "#e4e4e4"))))
   `(helm-selection-line ((,class (:background "#e4e4e4"))))
   `(helm-separator ((,class (:foreground "#4d4d4d"))))
   `(helm-visible-mark ((,class (:foreground "#c00000" :background "#ffdddd"))))
   `(helm-buffer-directory ((,class (:foreground "#008abc" :weight bold))))
   `(helm-buffer-file ((,class (:foreground "#4d4d4d"))))
   `(helm-buffer-not-saved ((,class (:foreground "#f38e00"))))
   `(helm-buffer-process ((,class (:foreground "#e57373"))))
   `(helm-buffer-saved-out ((,class (:foreground "#c00000"))))
   `(helm-buffer-size ((,class (:foreground "#f38e00"))))
   `(helm-candidate-number ((,class (:foreground "#eeeeee" :background "#008abc"))))
   `(helm-ff-directory ((,class (:foreground "#008abc" :weight bold))))
   `(helm-ff-executable ((,class (:foreground "#5e8302"))))
   `(helm-ff-file ((,class (:foreground "#4d4d4d"))))
   `(helm-ff-invalid-symlink ((,class (:foreground "#7c56c1" :background "#ffdddd"))))
   `(helm-ff-symlink ((,class (:foreground "#7c56c1"))))

   ;; org
   `(org-level-1 ((,class (:weight bold :foreground "#107dac"))))
   `(org-level-2 ((,class (:inherit org-level-1))))
   `(org-level-3 ((,class (:inherit org-level-1))))
   `(org-level-4 ((,class (:inherit org-level-1))))
   `(org-level-5 ((,class (:inherit org-level-1))))
   `(org-level-6 ((,class (:inherit org-level-1))))
   `(org-level-7 ((,class (:inherit org-level-1))))
   `(org-level-8 ((,class (:inherit org-level-1))))


   ;; js2
   `(js2-error ((,class (:box (:line-width 1 :color "#c00000") :background "#ffdddd"))))
   `(js2-warning ((,class (:underline "#f38e00"))))
   `(js2-external-variable ((,class (:foreground "#e00000"))))
   `(js2-function-param ((,class (:foreground "#008abc"))))
   `(js2-instance-member ((,class (:foreground "#00638a"))))
   `(js2-jsdoc-html-tag-delimiter ((,class (:foreground "#e00000"))))
   `(js2-jsdoc-html-tag-name ((,class (:foreground "#e00000"))))
   `(js2-jsdoc-tag ((,class (:weight normal :foreground "#7c56c1"))))
   `(js2-jsdoc-type ((,class (:foreground "#008abc"))))
   `(js2-jsdoc-value ((,class (:weight normal :foreground "#7c56c1"))))
   `(js2-magic-paren ((,class (:underline t))))
   `(js2-private-function-call ((,class (:foreground "#f38e00"))))
   `(js2-private-member ((,class (:foreground "#008abc"))))
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
