;;; cloud-theme.el --- A light theme based on Material palette

;; Copyright (C) 2019 Valerii Lysenko

;; Author: Valerii Lysenko <vallyscode@gmail.com>
;; Keywords: faces theme
;; URL: https://github.com/vallyscode/cloud-theme
;; Version: 0.1

;;; Commentary:

;; Cloud light theme based on Material palette

;;; Code:

(require 'haskell-extra-coloring)

(deftheme cloud
  "Cloud light color theme")

(let ((class '((class color) (min-colors 89)))
      (cloud-teal-0 "#00796b")
      (cloud-teal-1 "#009688")
      (cloud-teal-2 "#80cbc4")
      (cloud-orange-0 "#ff6d00")
      (cloud-orange-1 "#ff9800")
      (cloud-orange-2 "#ffb74d")
      (cloud-green-0 "#1b5e20")
      (cloud-green-1 "#388e3c")
      (cloud-green-2 "#81c784")
      (cloud-bluegray-0 "#607d8b")
      (cloud-bluegray-2 "#b0bec5")
      (cloud-bluegray-3 "#cfd8dc")
      (cloud-yellow-0 "#fdd835")
      (cloud-yellow-1 "#fff176")
      (cloud-yellow-2 "#ffff8d")
      (cloud-gray-0 "#424242")
      (cloud-gray-1 "#9e9e9e")
      (cloud-gray-2 "#bdbdbd")
      (cloud-gray-3 "#e0e0e0")
      (cloud-gray-4 "#eeeeee")
      (cloud-red-0 "#b71c1c")
      (cloud-red-1 "#e57373")
      (cloud-red-2 "#ef9a9a")
      (cloud-blue-0 "#005073")
      (cloud-blue-x "#006699")
      (cloud-blue-1 "#107dac")
      (cloud-purple-0 "#673ab7")
      (cloud-purple-1 "#7e57c2")
      (cloud-purple-2 "#b39ddb")
      (cloud-x "#d70087")
      )

  (custom-theme-set-faces
   'cloud

   ;; Base
   `(bold ((,class (:weight bold))))
   `(bold-italic ((,class (:weight bold :slant italic))))
   `(default ((,class (:foreground "#424242" :background "#eeeeee"))))
   `(error ((,class (:foreground "#e57373"))))
   `(warning ((,class (:foreground "#ff9800"))))
   `(success ((,class (:foreground "#388e3c"))))
   `(escape-glyph ((,class (:weight bold :foreground "#fdd835"))))

   ;; font lock faces
   `(font-lock-builtin-face ((,class (:foreground "#7e57c2"))))
   `(font-lock-comment-delimiter-face ((,class (:weight normal :foreground "#9e9e9e"))))
   `(font-lock-comment-face ((,class (:slant italic :weight normal :foreground "#9e9e9e"))))
   `(font-lock-constant-face ((,class (:foreground "#b71c1c"))))
   `(font-lock-doc-face ((,class (:foreground "#9e9e9e"))))
   `(font-lock-function-name-face ((,class (:foreground "#424242"))))
   `(font-lock-keyword-face ((,class (:weight bold :foreground "#005073"))))
   `(font-lock-preprocessor-face ((,class (:foreground "#673ab7"))))
   `(font-lock-regexp-grouping-backslash ((,class (:weight bold :inherit nil))))
   `(font-lock-regexp-grouping-construct ((,class (:weight bold :inherit nil))))
   `(font-lock-string-face ((,class (:foreground "#388e3c"))))
   `(font-lock-type-face ((,class (:weight bold :foreground "#107dac"))))
   `(font-lock-variable-name-face ((,class (:weight normal :foreground "#424242"))))
   `(font-lock-warning-face ((,class (:weight bold :foreground "#ff9800"))))

   ;; haskell
   `(haskell-pragma-face ((,class (:foreground "#673ab7"))))
   `(haskell-keyword-face ((,class (:foreground "#005073"))))
   `(haskell-operator-face ((,class (:foreground "#d70087"))))
   `(haskell-type-face ((,class (:weight bold :foreground "#107dac"))))

   ;; UI
   `(button ((,class (:underline t :foreground "#006699"))))
   `(cursor ((,class (:foreground "#eeeeee" :background "#006699"))))
   `(fringe ((,class (:background "#eeeeee"))))
   `(header-line ((,class (:background "#006699" :foreground "#eeeeee" :box (:line-width 1 :color "#006699")))))
   `(help-argument-name ((,class (:foreground "#006699"))))
   `(highlight ((,class (:background "#fff176"))))
   `(hl-line ((,class (:background "#e4e4e4"))));; highlight current line
   `(info-menu-star ((,class (:foreground "#006699"))))
   `(isearch ((,class (:foreground "#eeeeee" :background "#107dac"))))
   `(isearch-fail ((,class (:weight bold :foreground "#eeeeee" :background "#e57373"))))
   `(link ((,class (:underline t :foreground "#107dac"))))
   `(link-visited ((,class (:underline t :foreground "#7e57c2"))))
   `(linum ((,class (:background "#eeeeee" :foreground "#9e9e9e"))))
   `(match ((,class (:weight bold :background "#fff176"))))
   `(minibuffer-prompt ((,class (:weight bold :foreground "#006699"))))
   `(minibuffer-noticeable-prompt ((,class (:weight bold :foreground "#006699"))))
   `(mode-line ((,class (:background "#006699" :foreground "#eeeeee" :box (:line-width 1 :color "#006699")))))
   `(mode-line-inactive ((,class (:background "#e0e0e0" :foreground "#444444" :box (:line-width 1 :color "#bdbdbd")))))
   `(mode-line-buffer-id ((,class (:weight bold))))
   `(mode-line-emphasis ((,class (:foreground "#eeeeee"))))
   `(mode-line-highlight ((,class (:foreground "#fff176"))))
   `(next-error ((,class (:inherit error))))
   `(nobreak-space ((,class (:background "#cfd8dc"))))
   `(outline-1 ((,class (:height 1.0 :weight bold :foreground "#107dac"))))
   `(outline-2 ((,class (:inherit outline-1))))
   `(outline-3 ((,class (:inherit outline-1))))
   `(outline-4 ((,class (:inherit outline-1))))
   `(outline-5 ((,class (:inherit outline-1))))
   `(outline-6 ((,class (:inherit outline-1))))
   `(outline-7 ((,class (:inherit outline-1))))
   `(outline-8 ((,class (:inherit outline-1))))
   `(query-replace ((,class (:inherit isearch))))
   `(region ((,class (:background "#107dac" :foreground "#eeeeee"))))
   `(lazy-highlight ((,class (:foreground "#424242" :background "#fff176")))) ; Isearch others (see `match').
   `(secondary-selection ((,class (:weight bold :background "#fff176"))))
   `(show-paren-match ((,class (:background "#bdbdbd" :foreground "#006699"))))
   `(show-paren-mismatch ((,class (:background "#bdbdbd" :foreground "#b71c1c"))))
   `(trailing-whitespace ((,class (:foreground "#bdbdbd" :background "#fff176"))))
   `(vertical-border ((,class (:foreground "#005073"))))
   `(whitespace-hspace ((,class (:foreground "#bdbdbd"))))
   `(whitespace-indentation ((,class (:background nil :foreground "#424242"))))
   `(whitespace-line ((,class (:foreground "#e57373" :background "#eeeeee"))))
   `(whitespace-tab ((,class (:background nil :foreground "#424242"))))
   `(whitespace-trailing ((,class (:background nil :foreground "#e57373"))))
   `(window-divider ((,class (:background "#005073"))))
   `(window-divider-first-pixel ((,class (:background "#005073"))))
   `(window-divider-last-pixel ((,class (:background "#005073"))))

   ;; company
   `(company-tooltip-common-selection ((,class (:weight normal :foreground "#eeeeee"))))
   `(company-tooltip-selection ((,class (:weight normal :foreground "#eeeeee" :background "#006699"))))
   `(company-tooltip-annotation-selection ((,class (:weight normal :foreground "eeeeee"))))
   `(company-tooltip-common ((,class (:weight bold))))
   `(company-tooltip ((,class (:foreground "#424242" :background "#cfd8dc"))))
   `(company-tooltip-annotation ((,class (:weight normal :foreground "#b39ddb"))))
   `(company-preview-common ((,class (:weight normal :foreground "#107dac" :inherit hl-line))))
   `(company-scrollbar-bg ((,class (:background "#cfd8dc"))))
   `(company-scrollbar-fg ((,class (:background "#607D8B"))))

   ;; dired
   `(dired-directory ((,class (:weight normal :foreground "#005f87" :background "#eeeeee"))))
   `(dired-header ((,class (:weight normal :foreground "#005f87" :background "#eeeeee"))))
   `(dired-ignored ((,class (:strike-through t :foreground "#af0000"))))
   `(dired-mark ((,class (:foreground "#af0000" :background "#e5786d"))))
   `(dired-marked ((,class (:foreground "#af0000" :background "#e5786d"))))
   `(dired-symlink ((,class (:foreground "#ba36a5"))))
   `(diredp-compressed-file-suffix ((,class (:foreground "#af0000"))))
   `(diredp-date-time ((,class (:foreground "#6434a3"))))
   `(diredp-dir-heading ((,class (:weight normal :foreground "#005f87" :background "#eeeeee"))))
   `(diredp-dir-name ((,class (:weight normal :foreground "#005f87" :background "#eeeeee"))))
   `(diredp-dir-priv ((,class (:weight normal :foreground "#005f87" :background "#eeeeee"))))
   `(diredp-exec-priv ((,class (:background "#03C03C"))))
   `(diredp-executable-tag ((,class (:foreground "ForestGreen" :background "white"))))
   `(diredp-file-name ((,class (:foreground "#424242"))))
   `(diredp-file-suffix ((,class (:foreground "#c0c0c0"))))
   `(diredp-flag-mark-line ((,class (:foreground "#af0000" :background "#e57373"))))
   `(diredp-ignored-file-name ((,class (:foreground "#7F7F7F"))))
   `(diredp-read-priv ((,class (:background "#107dac"))))
   `(diredp-write-priv ((,class (:foreground "white" :background "#e57373"))))
   `(eldoc-highlight-function-argument ((,class (:foreground "#388e3c" :weight bold))))

   `(file-name-shadow ((,class (:foreground "#7F7F7F"))))

   `(flycheck-info ((,class (:underline (:color "#388e3c" :style wave) :weight bold))))
   `(flycheck-warning ((,class (:underline (:color "#ff9800" :style wave) :weight bold :background "#FFFFBE"))))
   `(flycheck-error ((,class (:underline (:color "#b71c1c" :style wave) :weight bold :background "#FFE1E1"))))
   `(flycheck-fringe-info ((,class (:foreground "#388e3c"))))
   `(flycheck-fringe-warning ((,class (:foreground "#ff9800"))))
   `(flycheck-fringe-error ((,class (:foreground "#b71c1c"))))
   `(flycheck-error-list-line-number ((,class (:foreground "#7e57c2"))))

   ;; helm
   `(helm-M-x-key ((,class (:foreground "#388e3c"))))
   `(helm-action ((,class (:foreground "#424242"))))
   `(helm-header ((,class (:foreground "#eeeeee" :background "#107dac"))))
   `(helm-moccur-buffer ((,class (:foreground "#424242" :background "#cfd8dc"))));;highlight moccur buffer name
   `(helm-source-header ((,class (:foreground "#424242" :background "#cfd8dc" :height 1.3 :bold t))))
   `(helm-match ((,class (:foreground "#424242" :background "#fff59d"))))
   `(helm-selection ((,class (:background "#e4e4e4"))))
   `(helm-selection-line ((,class (:background "#e4e4e4"))))
   `(helm-separator ((,class (:foreground "#424242"))))
   `(helm-visible-mark ((,class (:foreground "#b71c1c" :background "#ef9a9a"))))
   `(helm-buffer-directory ((,class (:foreground "#107dac" :weight bold))))
   `(helm-buffer-file ((,class (:foreground "#424242"))))
   `(helm-buffer-not-saved ((,class (:foreground "#ff9800"))))
   `(helm-buffer-process ((,class (:foreground "#e57373"))))
   `(helm-buffer-saved-out ((,class (:foreground "#b71c1c"))))
   `(helm-buffer-size ((,class (:foreground "#ff9800"))))
   `(helm-candidate-number ((,class (:foreground "#eeeeee" :background "#107dac"))))
   `(helm-ff-directory ((,class (:foreground "#107dac" :weight bold))))
   `(helm-ff-executable ((,class (:foreground "#388e3c"))))
   `(helm-ff-file ((,class (:foreground "#424242"))))
   `(helm-ff-invalid-symlink ((,class (:foreground "#b39ddb" :background "#b71c1c"))))
   `(helm-ff-symlink ((,class (:foreground "#b39ddb"))))

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
   `(js2-error ((,class (:box (:line-width 1 :color "#b71c1c") :background "#ef9a9a"))))
   `(js2-warning ((,class (:underline "#ff9800"))))
   `(js2-external-variable ((,class (:foreground "#e57373"))))
   `(js2-function-param ((,class (:foreground "#107dac"))))
   `(js2-instance-member ((,class (:foreground "#006699"))))
   `(js2-jsdoc-html-tag-delimiter ((,class (:foreground "#ef9a9a"))))
   `(js2-jsdoc-html-tag-name ((,class (:foreground "#ef9a9a"))))
   `(js2-jsdoc-tag ((,class (:weight normal :foreground "#7e57c2"))))
   `(js2-jsdoc-type ((,class (:foreground "#0087af"))))
   `(js2-jsdoc-value ((,class (:weight normal :foreground "#b39ddb"))))
   `(js2-magic-paren ((,class (:underline t))))
   `(js2-private-function-call ((,class (:foreground "#ffb74d"))))
   `(js2-private-member ((,class (:foreground "#107dac"))))
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
