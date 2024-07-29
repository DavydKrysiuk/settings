;; 'gruber-darker-theme 'go-mode 'haskell-mode 'magit

(require 'package)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   '("e27c9668d7eddf75373fa6b07475ae2d6892185f07ebed037eedf783318761d7" "1930427eae3d4d830a43fd79fbda76021138b929c243a4e8606cf4f0531ea17c" default))
 '(package-archives
   '(("gnu" . "https://elpa.gnu.org/packages/")
     ("melpa" . "https://melpa.org/packages/")))
 '(package-selected-packages '(go-mode gruber-darker-theme haskell-mode magit)))
(package-initialize)

;; M-x package-refresh-contents

(set-frame-font "Mono 14" nil t)

(setq default-frame-alist '((undecorated . t)))
(tool-bar-mode 0)
(menu-bar-mode 0)
(scroll-bar-mode 0)
(column-number-mode 1)
(show-paren-mode 1)
(setq x-select-enable-clipboard t)

(use-package gruber-darker-theme
  :ensure t
  :config
  (load-theme 'gruber-darker t))

;; C-u 4 M-x indr
;; ^ Add tab to selected area
(defalias 'indr 'indent-rigidly)

;; Turn-off delete confirmation
(setq dired-deletion-confirmer '(lambda (x) t))
(setq-default tab-width 4)

