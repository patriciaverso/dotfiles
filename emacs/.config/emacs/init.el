;; -*- lexical-binding: t; -*-

(setq org-src-tab-acts-natively t)   ; code blocks identados como a linguagem que representam
(setq org-src-fontify-natively t)    ; syntax highlighting no org mode
(setq inhibit-startup-message t)     ; não mostra splash screen
(setq visible-bell t)                ; pisca em vez de bipa em erros
(scroll-bar-mode -1)                 ; esconde barra de rolagem
(tool-bar-mode -1)                   ; esconde barra de ferramentas
(tooltip-mode -1)                    ; esconde tooltip
(menu-bar-mode -1)                   ; esconde barra de menu
(set-fringe-mode 0)                  ; fringe -> padding do editor
(dolist (mode '(org-mode-hook
		term-mode-hook
		shell-mode-hook
		treemacs-mode-hook
		eshell-mode-hook))
  (add-hook mode (lambda () (display-line-numbers-mode 0)))) ; desliga line numbers nesses modos

(set-face-attribute 'default nil :font "JetBrainsMonoNF" :height default-font-size)
(set-face-attribute 'fixed-pitch nil :font "JetBrainsMonoNF" :height default-font-size)
(set-face-attribute 'variable-pitch nil :font "JetBrainsMonoNF" :height default-font-size :weight 'regular)

(global-set-key (kbd "<escape>") 'keyboard-escape-quit)

(use-package doom-themes
  :init (load-theme 'doom-dracula t))

(use-package fcitx5
  :config
  (setq-default input-method-variants '(("mozc" . "hiragana"))))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
