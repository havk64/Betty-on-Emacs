;;; .emacs_example --- Emacs init example -*- mode: emacs-lisp -*-

;;; Commentary:
;;  Betty C style checker - evaluation

;;; Code:

;; Set variables to allow emacs use alternative home directory
(setq user-init-file (or load-file-name (buffer-file-name)))
(setq user-emacs-directory (file-name-directory user-init-file))

;; Install Flychecker from MELPA stable
(require 'package)
(add-to-list 'package-archives
	     '("MELPA Stable" . "http://stable.melpa.org/packages/") t)
(package-initialize)
(package-refresh-contents)

(package-install 'flycheck)
(global-flycheck-mode)

;; Set C style
(setq c-default-style "bsd"
      c-basic-offset 8)

(add-hook 'c-mode-common-hook
	  '(lambda ()
	     (setq-default
	      tab-width 8
	      indent-tabs-mode t)))

;; Load betty-style C syntax checker (relative path)
;; and add it to the Flycheck checkers list
(load
 (concat
  (file-name-directory user-emacs-directory) ".emacs.d/private/Betty/betty-style"))
(add-to-list 'flycheck-checkers 'betty-style)

;; Enable -Wall -Werror -Extra -pedantic gcc flags
(add-to-list 'flycheck-gcc-warnings "error" t)
(setq flycheck-gcc-pedantic t)

;; Emacs custom variables
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages (quote (flycheck))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; inhibit the start message
(setq inhibit-startup-message t)
;; delete other windows
(delete-other-windows)

(provide '.emacs_example)
;;; .emacs_example ends here
