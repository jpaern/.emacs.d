;;; package --- Summery
;; Juri's init.el
;; It basically initializes MELPA and than loads it configuration
;; from .emacs.d/config.org

;;; Commentary:

;;; Code:
;; load package manager, add the Melpa package registry
(require 'package)
(add-to-list 'package-archives
	     '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)

;; Load main configuration from an org file, more specific from
;; ~./emacs.d/config.org
;; To load config.org, type C-c e
(org-babel-load-file (expand-file-name "~/.emacs.d/config.org"))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (magit flycheck smex ido-vertical-mode company zerodark-theme powerline-evil evil-org evil-indent-textobject evil-surround evil-leader evil beacon use-package))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;;; init.el ends here
