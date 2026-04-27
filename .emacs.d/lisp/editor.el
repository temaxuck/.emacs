(setq-default tab-width 4)

;; go-mode format before save
(add-hook 'go-mode-hook (lambda () (add-hook 'before-save-hook 'gofmt-before-save nil t)))

;; rust-mode format before save
(setq rust-format-on-save t)
(setq rust-rustfmt-switches '("--edition" "2024"))

;; dired listing switches
(setq dired-listing-switches "-alFh")

;; grep default command
(setq grep-command "grep -irnH ")
