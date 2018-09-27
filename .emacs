


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(custom-enabled-themes '(misterioso))
 '(display-line-number-mode t)
 '(display-line-numbers nil)
 '(inhibit-startup-screen t)
 '(menu-bar-mode nil)
 '(package-selected-packages '(diminish which-key auctex tex AuCTeX general use-package))
 '(scroll-bar-mode nil)
 '(tool-bar-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;;Packages
(require 'package)
(setq package-enable-at-startup nil) ; load no packages at startup
(setq package-archives '(("org"       . "http://orgmode.org/elpa/")
                         ("gnu"       . "http://elpa.gnu.org/packages/")
                         ("melpa"     . "https://melpa.org/packages/")
                         ("marmalade" . "http://marmalade-repo.org/packages/")))
;;(package-initialize) what does this do??

;;Use-Package
(unless (package-installed-p 'use-package) ; unless it is already installed
  (package-refresh-contents) ; updage packages archive
  (package-install 'use-package)) ; and install the most recent version of use-package
(require 'use-package)

;;General
(use-package general :ensure t)

;;Which-key
(use-package which-key :ensure t)

;;Ivy
(use-package ivy
  :ensure t
  :diminish  (ivy-mode . "")
  :config
  (ivy-mode 1)
  (setq ivy-use-virtual-buffers t
        ivy-count-format "%d/%d "))

;;Diminish
(use-package diminish :ensure t)

;;AuCTeX
(use-package tex
  :ensure auctex
  :defer t
  :init
  (setq TeX-auto-save t
        TeX-parse-self t
        TeX-save-query nil
        TeX-PDF-mode t)
  (add-hook 'LaTeX-mode-hook 'turn-on-reftex))


;;avy --fast cursor movement
;;multiple cursors --cool cursor stuff
;;flycheck --syntax checking
;;auto-complete --auto completion
;;mu4e --email
;;Magit --git
;;projectile --project management

; programming stuff: C/C++, Python(elpy)
; other: yasnippet, workgroups2, undo-tree, browse-kill-ring
