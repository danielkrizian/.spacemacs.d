;; *-org layer adopted from : https://github.com/agzam/dot-spacemacs/blob/master/layers/ag-org/packages.el
;; package adopted from https://ivanaf.com/Automatic_Latex_Fragment_Toggling_in_org-mode.html

(defconst dk-org-packages '(;; org
                            ;; org-pomodoro
                            ;; ox-reveal
                            ;; clocker
                            ;; org-noter
                            ;;(latex-fragments :location local)
                            (org-latex-fragment :location local)
                            ;; (org-present :excluded t)
                            ;; (org-journal :excluded t)
                            ;;(org-brain :excluded t))]
                            ))

;; (defun dk-org/init-latex-fragments ()
;;   (use-package latex-fragments
;;     :demand t
;;     :config
;;     (add-hook 'post-command-hook 'kk/org-latex-fragment-toggle t)))

(defun dk-org/init-org-latex-fragment ()
  (use-package org-latex-fragment
    ;; :demand t
    :config
    ;; (add-hook 'org-mode-hook
    ;;           (lambda ()
    ;;             (add-hook 'post-command-hook 'org-latex-fragment-toggle-auto)))))

  ;;  (add-hook 'post-command-hook 'org-latex-fragment-toggle-auto))
  ))
