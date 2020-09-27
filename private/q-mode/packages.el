;;; packages.el --- q-mode layer packages file for Spacemacs.
;;
;; Copyright (c) 2012-2017 Sylvain Benner & Contributors
;;
;; Author:  <dk@s110519>
;; URL: https://github.com/syl20bnr/spacemacs
;;
;; This file is not part of GNU Emacs.
;;
;;; License: GPLv3

;;; Commentary:

;; See the Spacemacs documentation and FAQs for instructions on how to implement
;; a new layer:
;;
;;   SPC h SPC layers RET
;;
;;
;; Briefly, each package to be installed or configured by this layer should be
;; added to `q-mode-packages'. Then, for each package PACKAGE:
;;
;; - If PACKAGE is not referenced by any other Spacemacs layer, define a
;;   function `q-mode/init-PACKAGE' to load and initialize the package.

;; - Otherwise, PACKAGE is already referenced by another Spacemacs layer, so
;;   define the functions `q-mode/pre-init-PACKAGE' and/or
;;   `q-mode/post-init-PACKAGE' to customize the package as it is loaded.

;;; Code:

(defconst q-mode-packages
  '((q-mode :location local))
  "The list of Lisp packages required by the q-mode layer.

Each entry is either:

1. A symbol, which is interpreted as a package to be installed, or

2. A list of the form (PACKAGE KEYS...), where PACKAGE is the
    name of the package to be installed or loaded, and KEYS are
    any number of keyword-value-pairs.

    The following keys are accepted:

    - :excluded (t or nil): Prevent the package from being loaded
      if value is non-nil

    - :location: Specify a custom installation location.
      The following values are legal:

      - The symbol `elpa' (default) means PACKAGE will be
        installed using the Emacs package manager.

      - The symbol `local' directs Spacemacs to load the file at
        `./local/PACKAGE/PACKAGE.el'

      - A list beginning with the symbol `recipe' is a melpa
        recipe.  See: https://github.com/milkypostman/melpa#recipe-format")

(defun q-mode/init-q-mode ()
  (use-package q-mode
    :defer t
    :mode "\\.[kq]\\'"
    :config
    (progn
      (spacemacs/set-leader-keys-for-major-mode 'q-mode
        "," 'q-eval-line
        "a" 'q-eval-line-and-advance
        "s" 'q-eval-symbol-at-point
        "f" 'q-eval-function
        "r" 'q-eval-region
        "b" 'q-eval-buffer
        "l" 'q-load-file
        "RET" 'q-activate-buffer
        "TAB" 'q-show-q-buffer
        "\\\\" 'q-kill-q-buffer
        "u"  'q-customize
        "//" 'comment-line
        "/ RET" 'comment-or-uncomment-region)
      ;; (add-hook 'q-mode-hook (lambda () (setq fill-column 300)))
      (add-hook 'q-mode-hook (lambda () (setq comment-column 51)))
      ))
  (use-package column-enforce-mode
    :config
    (progn
      ;; (add-hook 'q-mode-hook #'column-enforce-mode)
      ;; (add-hook 'q-mode-hook (lambda () (setq column-enforce-comments nil)))
      ;; (add-hook 'q-mode-hook (lambda () (setq column-enforce-column 52)))
      ))
  )

;;; packages.el ends here
