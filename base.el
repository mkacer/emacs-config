(setq default-directory (getenv "HOME"))

(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/") t)
(add-to-list 'package-archives '("org" . "http://orgmode.org/elpa/") t)
(package-initialize)
(load-theme 'solarized-dark t)

(setq-default
 load-prefer-newer t
 package-enable-at-startup nil
 indent-tabs-mode nil
 delete-by-moving-to-trash t
 tab-width 4)
(setq 
 inhibit-startup-screen t
 initial-buffer-choice t
 package-selected-packages '(solarized-theme org)
 show-paren-style 'expression)

(show-paren-mode t)
 
(set-language-environment 'utf-8)
(setq locale-coding-system 'utf-8)
(set-default-coding-systems 'utf-8)
(set-terminal-coding-system 'utf-8)
(prefer-coding-system 'utf-8)

(set-face-attribute 'default nil
                    :family "Hack"
                    :height 143
                    :weight 'normal
                    :width 'normal
                    :foundry "SRC"
                    :slant 'normal)

(when window-system
  (blink-cursor-mode 0)                           ; Disable the cursor blinking
  (scroll-bar-mode 0)                             ; Disable the scroll bar
  (tool-bar-mode 0)                               ; Disable the tool bar
  (tooltip-mode 0)                                ; Disable the tooltips
  (set-frame-size (selected-frame) 80 24))
