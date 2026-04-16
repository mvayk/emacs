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
  (setq evil-want-C-u-scroll t)
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
(use-package rust-mode
  :ensure t)

(use-package doom-themes
  :ensure t
  :config)

(use-package gruber-darker-theme
  :ensure t
  :config
  (load-theme 'gruber-darker t))

(menu-bar-mode 0)
(tool-bar-mode 0)
(scroll-bar-mode 0)
(global-display-line-numbers-mode)

(setq-default tab-width 4
              indent-tabs-mode nil
              inhibit-startup-screen t
              make-backup-files nil)

(custom-set-variables
'(display-line-numbers-type 'relative)) ; visual

(set-face-attribute 'default nil
  :family "BigBlueTermPlus Nerd Font Mono"
  :height 140)

(global-set-key (kbd "C-=") 'text-scale-increase)
(global-set-key (kbd "C--") 'text-scale-decrease)

(ido-mode 1)
(ido-everywhere 1)

(require 'evil)
(evil-mode 1)
(setq evil-insert-state-cursor 'box)
