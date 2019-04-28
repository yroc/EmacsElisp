					; Init File
					; corsandy
					; April, 2019

;; load emacs 24's package system. Add MELPA repository.
;; (from http://ergoemacs.org/emacs/emacs_package_system.html)

;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(when (>= emacs-major-version 24)
  (require 'package)
  (add-to-list
   'package-archives
   ;;'("melpa-stable" . "https://stable.melpa.org/packages/")) ; many packages won't show if using stable
   '("melpa" . "http://melpa.milkbox.net/packages/")
   t))

;; UI tweaks (from http://tobytripp.github.io/emacs.d/)
(if (fboundp 'tool-bar-mode) (tool-bar-mode -1))
(if (fboundp 'menu-bar-mode) (menu-bar-mode -1))
(if (fboundp 'scroll-bar-mode) (scroll-bar-mode -1))
(setq inhibit-splash-screen t)
(when (display-graphic-p) (set-fringe-style 0))
(setq-default major-mode 'text-mode)

;; Disable auto-generation of backup and autosave files
;; (that's what version control is for)
;; (from http://tobytripp.github.io/emacs.d/)
(setq make-backup-files nil)
(setq auto-save-default nil)

;; Programming aides
;;; Auto-close fences
(electric-pair-mode 1)
;;; Highlight matching fences
(show-paren-mode 1)
;;; Line numbering (modern version -- supercedes linum-mode)
(when (version<= "26.0.50" emacs-version )
  (global-display-line-numbers-mode))
;;; Column numbering
(column-number-mode 1)
;;; Word wrap, arrow up/down move by visual line, &c.
(global-visual-line-mode 1)
;;; Make cursor stop within camelCase words
(global-subword-mode 1)
;;; Default UTF-8 encoding
(set-language-environment "UTF-8")
(set-default-coding-systems 'utf-8)
;;; Set default fill column
(setq-default fill-column 80)

;; Restore session and remember cursor positions
(desktop-save-mode 1)
(save-place-mode 1)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages (quote (markdown-mode)))
 '(paradox-github-token t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
