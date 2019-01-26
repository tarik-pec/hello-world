


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
 '(package-archives
   '(("org" . "http://orgmode.org/elpa/")
     ("gnu" . "http://elpa.gnu.org/packages/")
     ("melpa" . "https://melpa.org/packages/")
     ("marmalade" . "http://marmalade-repo.org/packages/")))
 '(package-enable-at-startup nil)
 '(package-selected-packages
   '(flycheck avy diminish which-key auctex tex AuCTeX general use-package))
 '(scroll-bar-mode nil)
 '(tool-bar-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;;Use-Package
(require 'package)
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package)) 
(require 'use-package)

;;General
(use-package general
  :config
  (general-define-key "C-s" 'swiper)
  (general-define-key "C-;" 'avy-goto-char-2)
  (general-define-key "C-'" 'avy-kill-whole-line))

;;Ivy -- Everything
(use-package ivy
  :ensure t
  :diminish  (ivy-mode . "")
  :config
  (ivy-mode 1)
  (setq ivy-use-virtual-buffers t
        ivy-count-format "%d/%d "))

;;avy -- Fast Cursor Movement
(use-package avy
  :ensure t)

;;AuCTeX -- LaTeX Made Good
(use-package tex
  :ensure auctex
  :defer t
  :init
  (setq TeX-auto-save t
        TeX-parse-self t
        TeX-save-query nil
        TeX-PDF-mode t)
  (add-hook 'LaTeX-mode-hook 'turn-on-reftex))

;;flycheck -- Syntax Checking
(use-package flycheck
  :ensure t
  :init
  (global-flycheck-mode))

;;Which-key -- Shortcuts in Mini-Buffer
(use-package which-key :ensure t)

;;Diminish -- Hides Unneccessary Information In Mini-Buffer
(use-package diminish :ensure t)

;;multiple cursors --cool cursor stuff
;;flycheck --syntax checking
;;auto-complete --auto completion
;;mu4e --email
;;Magit --git
;;projectile --project management
;;setup outline mode (built in) for latex
; programming stuff: C/C++, Python(elpy)
; other: yasnippet, workgroups2, undo-tree, browse-kill-ring
