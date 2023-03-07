(set-face-attribute 'default nil :height 100) ; To set the font size in emacs
(load-theme 'misterioso t); set dark theme
(menu-bar-mode -1) ; remove menu bar 
(tool-bar-mode -1) ; remove tool bar
(ido-mode 1) ; set ido mode to auto complete in c-x 
(setq display-line-numbers-type 'relative) ; to set relative numbering 
(global-display-line-numbers-mode) ; to set numbering globally 

(setq inhibit-splash-screen t) ; to remove splash screen


; spell checker for chekcing spelling ev-b

(setq ispell-program-name "aspell")
(add-hook 'text-mode-hook 'flyspll-mode)
(add-hook 'prog-mode-hook 'flyspell-prog-mode) 
;; custom shortcut 
(defun move-line-up ()
  "Move the current line up."
  (interactive)
  (transpose-lines 1)
  (previous-line 2))

(defun move-line-down ()
  "Move the current line down."
  (interactive)
  (next-line 1)
  (transpose-lines 1)
  (previous-line 1))



(global-set-key (kbd "<M-up>") 'move-line-up)
(global-set-key (kbd "<M-down>") 'move-line-down)

; add melpa
(require 'package)
(add-to-list 'package-archives
             '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)
(when (not package-archive-contents)
  (package-refresh-contents))


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages '(elpy helm-smex)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(global-set-key (kbd "M-x") 'smex)
(global-set-key (kbd "M-X") 'smex-major-mode-commands)
;; This is your old M-x.
(global-set-key (kbd "C-c C-c M-x") 'execute-extended-commande)

;; enable markdown mode when .md is open 
;; (add-to-list 'auto-mode-alist '("\\.md\\". markdown-mode)))
;; (add-to-list 'auto-mode-alist '("\\.py\\".(elpy-enable)))
;; set back-ups directory
(setq backup-directory-alist `(("." . "~/emacs-backups")))

