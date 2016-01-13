(use-package elisp-slime-nav
  :defer t
  :commands elisp-slime-nav-mode
  :init
  (add-hook 'emacs-lisp-mode-hook (lambda () (elisp-slime-nav-mode t))))
