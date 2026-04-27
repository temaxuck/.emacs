(require 'package)
;; Official repository of melpa.org is too slow for me (maybe because
;; I'm based in Russia).  So I'm using official mirror. It seems to be
;; okay.
(add-to-list 'package-archives
             '("melpa" . "https://www.mirrorservice.org/sites/melpa.org/packages/") t)

;; Enable system environment variables
(setq shell-command-switch "-ic") ; NOTE: THIS TENDS TO BREAK `restclient-jq.el`

(load "third-party.el")
(load "reset.el")
(load "appearance.el")
(load "editor.el")

