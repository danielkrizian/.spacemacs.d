(defun dotspacemacs/emacs-custom-settings ()
  "Emacs custom settings.
This is an auto-generated function, do not modify its content directly, use
Emacs customize menu instead.
This function is called at the very end of Spacemacs initialization."
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 ;; '(evil-want-Y-yank-to-eol nil)
 '(org-edit-src-content-indentation 0)
 '(org-src-tab-acts-natively t)
 '(package-selected-packages
   (quote
    (spinner gntp skewer-mode visual-fill-column treemacs pfuture all-the-icons powerline hydra log4e markdown-mode hierarchy multiple-cursors js2-mode htmlize helm magit git-gutter treepy git-commit memoize tablist ivy rtags pos-tip anaconda-mode yasnippet auctex pythonic ace-window avy company paredit iedit smartparens ycmd flycheck with-editor ht flx request window-purpose popup simple-httpd magit-popup transient org-category-capture f dash org-plus-contrib lv bind-key undo-tree poly-org monokai-theme yasnippet-snippets yapfify yaml-mode ws-butler writeroom-mode winum which-key web-mode web-beautify volatile-highlights vi-tilde-fringe uuidgen use-package treemacs-projectile treemacs-evil toc-org tagedit symon string-inflection spaceline-all-the-icons smeargle slim-mode scss-mode sass-mode restart-emacs rainbow-delimiters pyvenv pytest pyenv-mode py-isort pug-mode prettier-js popwin pippel pipenv pip-requirements persp-mode pdf-tools pcre2el password-generator paradox overseer orgit org-projectile org-present org-pomodoro org-mime org-journal org-download org-bullets org-brain open-junk-file nameless move-text mmm-mode markdown-toc magit-svn magit-gitflow magic-latex-buffer macrostep lorem-ipsum livid-mode live-py-mode link-hint json-navigator js2-refactor js-doc indent-guide importmagic impatient-mode hungry-delete hl-todo highlight-parentheses highlight-numbers highlight-indentation helm-xref helm-themes helm-swoop helm-rtags helm-pydoc helm-purpose helm-projectile helm-org-rifle helm-mode-manager helm-make helm-gitignore helm-git-grep helm-flx helm-descbinds helm-ctest helm-css-scss helm-company helm-c-yasnippet helm-ag google-translate google-c-style golden-ratio gnuplot gitignore-templates github-search github-clone gitconfig-mode gitattributes-mode git-timemachine git-messenger git-link git-gutter-fringe git-gutter-fringe+ gist gh-md fuzzy forge font-lock+ flycheck-ycmd flycheck-rtags flycheck-pos-tip flx-ido fill-column-indicator fancy-battery eyebrowse expand-region evil-visualstar evil-visual-mark-mode evil-unimpaired evil-tutor evil-surround evil-org evil-numbers evil-nerd-commenter evil-mc evil-matchit evil-magit evil-lisp-state evil-lion evil-indent-plus evil-iedit-state evil-goggles evil-exchange evil-escape evil-ediff evil-cleverparens evil-args evil-anzu eval-sexp-fu emmet-mode elisp-slime-nav editorconfig dumb-jump dotenv-mode doom-modeline dockerfile-mode docker disaster diminish diff-hl define-word cython-mode csv-mode counsel-projectile company-ycmd company-web company-tern company-statistics company-rtags company-quickhelp company-c-headers company-auctex company-anaconda command-log-mode column-enforce-mode cmake-mode cmake-ide clean-aindent-mode clang-format centered-cursor-mode browse-at-remote base16-theme auto-yasnippet auto-highlight-symbol auto-compile auctex-latexmk aggressive-indent ace-link ace-jump-helm-line ac-ispell))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 )
)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 ;; '(evil-want-Y-yank-to-eol nil)
 '(org-edit-src-content-indentation 0)
 '(org-src-tab-acts-natively t)
 '(package-selected-packages
   '(spinner gntp skewer-mode visual-fill-column treemacs pfuture all-the-icons powerline hydra log4e markdown-mode hierarchy multiple-cursors js2-mode htmlize helm magit git-gutter treepy git-commit memoize tablist ivy rtags pos-tip anaconda-mode yasnippet auctex pythonic ace-window avy company paredit iedit smartparens ycmd flycheck with-editor ht flx request window-purpose popup simple-httpd magit-popup transient org-category-capture f dash org-plus-contrib lv bind-key undo-tree poly-org monokai-theme yasnippet-snippets yapfify yaml-mode ws-butler writeroom-mode winum which-key web-mode web-beautify volatile-highlights vi-tilde-fringe uuidgen use-package treemacs-projectile treemacs-evil toc-org tagedit symon string-inflection spaceline-all-the-icons smeargle slim-mode scss-mode sass-mode restart-emacs rainbow-delimiters pyvenv pytest pyenv-mode py-isort pug-mode prettier-js popwin pippel pipenv pip-requirements persp-mode pdf-tools pcre2el password-generator paradox overseer orgit org-projectile org-present org-pomodoro org-mime org-journal org-download org-bullets org-brain open-junk-file nameless move-text mmm-mode markdown-toc magit-svn magit-gitflow magic-latex-buffer macrostep lorem-ipsum livid-mode live-py-mode link-hint json-navigator js2-refactor js-doc indent-guide importmagic impatient-mode hungry-delete hl-todo highlight-parentheses highlight-numbers highlight-indentation helm-xref helm-themes helm-swoop helm-rtags helm-pydoc helm-purpose helm-projectile helm-org-rifle helm-mode-manager helm-make helm-gitignore helm-git-grep helm-flx helm-descbinds helm-ctest helm-css-scss helm-company helm-c-yasnippet helm-ag google-translate google-c-style golden-ratio gnuplot gitignore-templates github-search github-clone gitconfig-mode gitattributes-mode git-timemachine git-messenger git-link git-gutter-fringe git-gutter-fringe+ gist gh-md fuzzy forge font-lock+ flycheck-ycmd flycheck-rtags flycheck-pos-tip flx-ido fill-column-indicator fancy-battery eyebrowse expand-region evil-visualstar evil-visual-mark-mode evil-unimpaired evil-tutor evil-surround evil-org evil-numbers evil-nerd-commenter evil-mc evil-matchit evil-magit evil-lisp-state evil-lion evil-indent-plus evil-iedit-state evil-goggles evil-exchange evil-escape evil-ediff evil-cleverparens evil-args evil-anzu eval-sexp-fu emmet-mode elisp-slime-nav editorconfig dumb-jump dotenv-mode doom-modeline dockerfile-mode docker disaster diminish diff-hl define-word cython-mode csv-mode counsel-projectile company-ycmd company-web company-tern company-statistics company-rtags company-quickhelp company-c-headers company-auctex company-anaconda command-log-mode column-enforce-mode cmake-mode cmake-ide clean-aindent-mode clang-format centered-cursor-mode browse-at-remote base16-theme auto-yasnippet auto-highlight-symbol auto-compile auctex-latexmk aggressive-indent ace-link ace-jump-helm-line ac-ispell))
 )
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
