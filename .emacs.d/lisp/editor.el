;; -*- lexical-binding: t; -*-
(setq-default tab-width 4)

(setq c-basic-offset 4)
(setq tab-width 4)
(setq indent-tabs-mode nil)

;; go-mode format before save
(add-hook 'go-mode-hook (lambda () (add-hook 'before-save-hook 'gofmt-before-save nil t)))

;; rust-mode format before save
(setq rust-format-on-save t)
(setq rust-rustfmt-switches '("--edition" "2024"))

;; dired listing switches
(setq dired-listing-switches "-alFh")

;; grep default command
(setq grep-template "grep -irnH <R> <F>")

;; js/ts
(add-hook 'typescript-mode-hook
		  (lambda ()
			(setq typescript-indent-level 2)
			(setq indent-tabs-mode nil)))
(add-hook 'js-mode-hook
		  (lambda ()
			(setq js-indent-level 2)
			(setq indent-tabs-mode nil)))
(add-hook 'web-mode-hook
		  (lambda ()
			(setq web-mode-code-indent-offset 2)
			(setq web-mode-markup-indent-offset 2)
			(setq web-mode-attr-indent-offset 2)
			(setq indent-tabs-mode nil)))

