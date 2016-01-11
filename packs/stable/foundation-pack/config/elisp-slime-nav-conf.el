(use-package elisp-slime-nav
  :defer t
  :init
  (add-hook 'emacs-lisp-mode-hook (lambda () (elisp-slime-nav-mode t))))
