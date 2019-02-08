;;; haskell-extra-coloring.el --- Additional highlight for haskell mode

;; Copyright (C) 2019 Valerii Lysenko

;; Author: Valerii Lysenko
;; Version: 0.1

;;; Commentary:

;; Additional highlight for haskell mode:
;; qualified

;;; Code:

;;;###autoload
(font-lock-add-keywords 'haskell-mode '(("\\_<\\(qualified\\|as\\)\\_>" . font-lock-builtin-face)
                                        ("\\_<\\(undefined\\)\\_>" 1 font-lock-constant-face)))

(provide 'haskell-extra-coloring)

;;; haskell-extra-coloring.el ends here
