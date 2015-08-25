;;; Package -- Summary
;;; Commentary:

;;; Code:

;;;; melpa and marmalade package system
(require 'package)
(push '("marmalade" . "http://marmalade-repo.org/packages/")
      package-archives )
(push '("melpa" . "http://melpa.milkbox.net/packages/")
      package-archives)
(package-initialize)

;;;; editing settings
(setq-default indent-tabs-mode nil)

;;;; ido
(require 'ido)
(ido-mode t)

;;;; smex
(require 'smex)
(smex-initialize)
(global-set-key (kbd "M-x") 'smex)
(global-set-key (kbd "M-X") 'smex-major-mode-commands)
;; This is your old M-x.
(global-set-key (kbd "C-c C-c M-x") 'execute-extended-command)

;;;; helm
(require 'helm-config)
(global-set-key (kbd "C-c M-x") 'helm-M-x)

;;;; auto-complete
(require 'auto-complete-config)
(ac-config-default)

;;;; yasnippet
(require 'yasnippet)
(yas-global-mode 1)

;;;; evil
(require 'evil)
(evil-mode 1)

;;;; haskell
;; (load "/Users/err8n/s/emacs-haskell-config/init.el")
(require 'haskell-mode)
(require 'haskell-cabal)

(setq haskell-stylish-on-save t)

(add-hook 'haskell-mode-hook 'haskell-indentation-mode)
(add-hook 'haskell-mode-hook 'interactive-haskell-mode)

(add-to-list 'load-path "/Users/err8n/s/stack-ide/stack-mode")
(require 'stack-mode)
(add-hook 'haskell-mode-hook 'stack-mode)

;;;; purescript
(add-hook 'purescript-mode-hook 'turn-on-purescript-indentation)

;;;; Python
(pyenv-mode)

;;;; web stuff
(require 'web-mode)
(require 'js2-mode)
(require 'skewer-mode)
(require 'zencoding-mode)

(add-to-list 'auto-mode-alist '("\\.phtml\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.tpl\\.php\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.[agj]sp\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.as[cp]x\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.erb\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.mustache\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.djhtml\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.html?\\'" . web-mode))

(add-to-list 'auto-mode-alist '("\\.js\\'" . js2-mode))

(add-hook 'js2-mode-hook 'skewer-mode)
(add-hook 'css-mode-hook 'skewer-css-mode)
(add-hook 'html-mode-hook 'skewer-html-mode)
(add-hook 'html-mode-hook 'zencoding-mode)

;;;; flycheck
(add-hook 'after-init-hook #'global-flycheck-mode)

;;;; markdown

(autoload 'markdown-mode "markdown-mode"
  "Major mode for editing Markdown files" t)
(add-to-list 'auto-mode-alist '("\\.txt\\'" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.markdown\\'" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.md\\'" . markdown-mode))
