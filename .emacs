(require 'package)

;; Add package archives
(setq package-archives
      '(("gnu" . "https://elpa.gnu.org/packages/")
        ("melpa" . "https://melpa.org/packages/")))

(package-initialize)

;; Ensure use-package is installed
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(require 'use-package)
(setq use-package-always-ensure t)

;; Custom settings
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes '(gruber-darker))
 '(custom-safe-themes
   '("e27c9668d7eddf75373fa6b07475ae2d6892185f07ebed037eedf783318761d7" "1930427eae3d4d830a43fd79fbda76021138b929c243a4e8606cf4f0531ea17c" default))
 '(package-selected-packages
   '(lsp-mode rust-mode go-mode gruber-darker-theme haskell-mode magit)))

;; Set up the font
(set-frame-font "Mono 14" nil t)

;; UI settings
(setq default-frame-alist '((undecorated . t)))
(tool-bar-mode 0)
(menu-bar-mode 0)
(scroll-bar-mode 0)
(column-number-mode 1)
(show-paren-mode 1)
(setq x-select-enable-clipboard t)

;; Define alias
(defalias 'indr 'indent-rigidly)

;; Load the theme
(use-package gruber-darker-theme
  :config
  (load-theme 'gruber-darker t))

;; Custom faces
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 )

;; General settings
(setq-default tab-width 4)
(setq dired-deletion-confirmer '(lambda (x) t))
(global-display-line-numbers-mode 1) ;; Line numbering
(setq use-short-answers t) ; Replace "Yes" confirmation with just "y"

;; Install selected packages
(use-package lsp-mode)
(use-package rust-mode)
(use-package go-mode)
(use-package haskell-mode)
(use-package magit)
