(setq custom-file "~/.emacs.d/custom.el")
(load custom-file)

(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(use-package evil
  :ensure t
  :init
  (setq evil-want-integration t)
  (setq evil-want-keybinding nil)
  :config
  (evil-mode 1))

(use-package evil-collection
  :after evil
  :ensure t
  :config
  (evil-collection-init))

(use-package smartparens
  :ensure t
  :config
  (smartparens-global-mode 1))

(use-package doom-themes
  :ensure t
  :config
  (load-theme 'doom-rouge t))

(setq inhibit-startup-screen t)
(menu-bar-mode 0)
(tool-bar-mode 0)
(scroll-bar-mode 0)
(global-display-line-numbers-mode)

(custom-set-variables
'(display-line-numbers-type 'relative)) ; visual

(set-face-attribute 'default nil
  :family "BigBlueTermPlus Nerd Font Mono"
  :height 140)

(global-set-key (kbd "C-=") 'text-scale-increase)
(global-set-key (kbd "C--") 'text-scale-decrease)

(require 'evil)
(evil-mode 1)

(setq evil-insert-state-cursor 'box)
