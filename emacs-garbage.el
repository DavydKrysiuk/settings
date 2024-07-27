;; 'gruber-darker-theme 'go-mode 'magit

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
