;; 'gruber-darker-theme 'go-mode 'haskell-mode 'magit

(require 'package)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-archives
   (quote
    (("gnu" . "https://elpa.gnu.org/packages/")
     ("melpa" . "https://melpa.org/packages/")))))
(package-initialize)
;; M-x package-refresh-contents
;; M-x package-install RET haskell-mode

(set-frame-font "Mono 16" nil t)

(setq default-frame-alist '((undecorated . t)))
(tool-bar-mode 0)
(menu-bar-mode 0)
(scroll-bar-mode 0)
(column-number-mode 1)
(show-paren-mode 1)

(setq backup-directory-alist '(("." . "~/.emacs_saves")))

(ido-mode 0)

;; C-u 4 M-x indr
;; ^ Add tab to selected area
(defalias 'indr 'indent-rigidly)
