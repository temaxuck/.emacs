;; -*- lexical-binding: t; -*-
(add-to-list 'load-path "/home/temax/.emacs.d/extensions/")

;; company
(add-hook 'after-init-hook 'global-company-mode)

;; multiple-cursors
(require 'multiple-cursors)
(global-set-key (kbd "C-M-d") 'mc/mark-next-like-this)

;; move-text
(require 'move-text)
(global-set-key (kbd "M-<up>") 'move-text-up)
(global-set-key (kbd "M-p" )'move-text-up)
(global-set-key (kbd "M-<down>") 'move-text-down)
(global-set-key (kbd "M-n" )'move-text-down)

;; dired-ranger
(require 'dired-ranger)
(with-eval-after-load 'dired
  (define-key dired-mode-map (kbd "W") 'dired-ranger-copy)
  (define-key dired-mode-map (kbd "X") 'dired-ranger-move)
  (define-key dired-mode-map (kbd "Y") 'dired-ranger-paste)
  )

;; magit
(setq package-install-upgrade-built-in t) ; fixes "Magit requires `seq` >= 2.24"

;; restclient
(require 'restclient)
(require 'restclient-jq)
(add-to-list 'auto-mode-alist '("\\.http\\'" . restclient-mode))
(setq restclient-enable-eval 1)

;; mermaid-mode
(require 'mermaid-mode)
(setq mermaid-flags "--backgroundColor transparent")
