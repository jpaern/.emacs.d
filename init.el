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

;;; init.el ends here
