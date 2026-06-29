(defun md-link-to-org-link ()
  "Converte link de Markdown para Org"
  (interactive)
  (when (region-active-p)
    (save-excursion
      (replace-regexp "\\[\\(.*\\)\\](\\(.*\\))" "[[\\2][\\1]]" nil (region-beginning) (region-end))
      )))
(add-hook 'org-mode-hook
	  (lambda ()
	    (keymap-set org-mode-map "C-c C-g" 'md-link-to-org-link)
	    )
	  )

(setq inhibit-startup-message t)
(global-hl-line-mode 1)
(scroll-bar-mode -1)
(tool-bar-mode -1)
(tooltip-mode -1)
(set-fringe-mode 10)
(menu-bar-mode -1)

(setq visible-bell t)

(setq load-path (append (list (expand-file-name "~/.config/emacs/site-packages/lilypond/share/emacs/site-lisp")) load-path))
(load-file "~/.config/emacs/site-packages/lilypond/share/emacs/site-lisp/lilypond-init.el")
(load-file "~/.config/emacs/init-lilypond.el")
(org-babel-do-load-languages 'org-babel-load-languages '((lilypond . t)))
(require 'init-lilypond)
