;; -*- lexical-binding: t; -*-
(setq package-native-compile t)
(setq custom-file "~/.config/emacs/custom.el")
(load-file custom-file)

;; set up melpa
(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))
(package-initialize)

(unless (package-installed-p 'evil)
  (package-install 'evil))

(require 'evil)
(evil-mode 1)
(setq completion-auto-help 'nil)

(set-face-attribute 'default nil :family "Ubuntu Sans Mono" :height 200)

(setq inhibit-splash-screen 1)
(setq backup-directory-alist '(("." . "~/.saves")))
(setq display-line-numbers-type 'relative)
(setq visible-bell 1)

(global-display-line-numbers-mode 1)
(column-number-mode 1)
(tool-bar-mode -1)
(menu-bar-mode -1)
(scroll-bar-mode -1)

(add-to-list 'load-path "~/.config/emacs/local-stuff/simpc-mode/")
(require 'simpc-mode)
(add-to-list 'auto-mode-alist '("\\.[hc]\\(pp\\)?\\'" . simpc-mode))

