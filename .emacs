

;;Default

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(custom-enabled-themes '(misterioso))
 '(inhibit-startup-screen t)
 '(menu-bar-mode nil)
 '(package-selected-packages '(AuCTeX general use-package auctex))
 '(scroll-bar-mode nil)
 '(tool-bar-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )



;;Custom

;;Use Package
(require 'package)
(setq package-enable-at-startup nil) ; load no packages at startup
(setq package-archives '(("org"       . "http://orgmode.org/elpa/")
                         ("gnu"       . "http://elpa.gnu.org/packages/")
                         ("melpa"     . "https://melpa.org/packages/")
                         ("marmalade" . "http://marmalade-repo.org/packages/")))
;;(package-initialize)
(unless (package-installed-p 'use-package) ; unless it is already installed
  (package-refresh-contents) ; updage packages archive
  (package-install 'use-package)) ; and install the most recent version of use-package
(require 'use-package)


;;General
(use-package general :ensure t)

;;abo-abo
(use-package counsel :ensure t)
(use-package swiper :ensure t)
(use-package ivy :ensure t)

;;Ido
(require 'ido)
(ido-mode t)

;;Latex
(use-package auctex :ensure t)
;; (setq TeX-auto-save t)
;; (setq TeX-parse-self t)
;; (setq TeX-save-query nil)
;; (setq TeX-PDF-mode t)
;; (add-hook 'LaTeX-mode-hook 'turn-on-reftex)
