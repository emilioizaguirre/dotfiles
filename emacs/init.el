;; -*- lexical-binding: t; -*-
(setq package-native-compile t)
(setq custom-file "~/.config/emacs/custom.el")
(load-file custom-file)

;; set up melpa
(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))
(package-initialize)

;; package downloads and configures
(add-to-list 'load-path "~/.config/emacs/modes/simpc-mode/")
(require 'simpc-mode)
(add-to-list 'auto-mode-alist '("\\.[hc]\\(pp\\)?\\'" . simpc-mode))
(setq-default indent-tabs-mode nil)

(unless (package-installed-p 'markdown-mode)
  (package-install 'markdown-mode))
(require 'markdown-mode)
(add-to-list 'auto-mode-alist '("\\.\\(?:md\\|markdown\\|mkd\\|mdown\\|mkdn\\|mdwn\\)\\'" . markdown-mode))

(unless (package-installed-p 'multiple-cursors)
  (package-install 'multiple-cursors))
(require 'multiple-cursors)
(global-set-key (kbd "C-S-c C-S-c") 'mc/edit-lines)
(global-set-key (kbd "C->") 'mc/mark-next-like-this)
(global-set-key (kbd "C-<") 'mc/mark-previous-like-this)
(global-set-key (kbd "C-c C-<") 'mc/mark-all-like-this)

(unless (package-installed-p 'magit)
  (package-install 'magit))
(require 'magit)

;; real config
(global-display-line-numbers-mode 1)
(column-number-mode 1)
(tool-bar-mode -1)
(menu-bar-mode -1)
(scroll-bar-mode -1)
(icomplete-mode 1)
;;(whitespace-mode 1)
;;(setq whitespace-style '(trailing tabs indentation::tab tab-mark))
(setq inhibit-splash-screen 1)
(setq backup-directory-alist '(("." . "~/.config/emacs/saves")))
(setq display-line-numbers-type 'relative)
(setq visible-bell t)
(setq completion-auto-help 'nil)
(setq-default truncate-lines t)

;; cosmetic stuff
(setq custom-theme-directory "~/.config/emacs/themes")
(setq custom-safe-themes '("9e3deb98981367ca3f70fd465a7746a6928dca72357c4b9283abcc7fcacc570a" default))
(load-theme 'deserted)
(put 'dired-find-alternate-file 'disabled nil)
(set-face-attribute 'default nil :family "Ubuntu Sans Mono" :height 200)

