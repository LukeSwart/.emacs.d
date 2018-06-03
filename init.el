;; Requisites: Emacs >= 24

;; PACKAGE MANAGEMENT
(require 'package)

;; Install extensions if they're missing:
(defun init--install-packages ()
  (packages-install
   '(
     flycheck
     flycheck
     markdown-mode
     clojure-mode)))

;; ;; begin package updates:
;; ;; does package-archives exist?
;; ;; (add-to-list 'package-archives
;; ;;              '("melpa" . "http://melpa.milkbox.net/packages/") t)
;; ;; (add-to-list 'package-archives '("melpa" . "http://stable.melpa.net/packages/") t)
;; (add-to-list 'package-archives
;;              '("melpa" . "http://melpa.org/packages/") t)
;; (package-initialize)
;; ;; (package-refresh-contents)

;; (package-install 'flycheck)

;; ;; (add-to-list 'package-archives
;; ;; ;; 	     '("marmalade" . "http://marmalade-repo.org/packages/") t)
;; ;; ;; throws a gnu tls error? ^

;; (package-refresh-contents)
;; ;; end package updates

;; tells use where the elpa folder is
(package-initialize)

(add-to-list 'load-path (expand-file-name "~/.emacs.d/elisp"))

;; SYSTEM DIRECTORY
(setq default-directory "~/")
(message "Default Dir: %S" default-directory)

;; SESSION MANAGEMENT - Windows Mode
  ;; (require 'desktop-menu)
;; (add-to-list 'load-path "~/workspace/emacs/.emacs.d/elisp/windows2.el")
  (add-to-list 'load-path (expand-file-name "~/.emacs.d/elisp"))
  ;; (add-to-list 'load-path "~/workspace/emacs/.emacs.d/elisp/windows.el")
  (require 'windows)
  (win:startup-with-window)
  (define-key ctl-x-map "C" 'see-you-again)

  (require 'uniquify)
  (setq uniquify-buffer-name-style 'reverse)

;; REQUIREMENTS
(load "~/.emacs.d/load_packages")

;; MAJOR MODES
(load "~/.emacs.d/modes")

;; FUNCTIONS
(load "~/.emacs.d/functions")

;; SETTINGS
(load "~/.emacs.d/settings")
;; KEY BINDINGS
(load "~/.emacs.d/keybindings")

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

