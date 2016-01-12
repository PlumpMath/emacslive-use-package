(use-package org
  :defer t
  :init
  (progn
    ;; windmove compatibility
    (add-hook 'org-shiftup-final-hook 'windmove-up)
    (add-hook 'org-shiftleft-final-hook 'windmove-left)
    (add-hook 'org-shiftdown-final-hook 'windmove-down)
    (add-hook 'org-shiftright-final-hook 'windmove-right))
  :config
  (progn
    (define-key org-mode-map (kbd "C-M-f")    'org-metadown)
    (define-key org-mode-map (kbd "C-M-b")    'org-metaup)
    (define-key org-mode-map (kbd "C-M-l")    'org-shiftright)
    (define-key org-mode-map (kbd "C-M-j")    'org-shiftleft)
    (define-key org-mode-map (kbd "C-M-i")    'org-shiftup)
    (define-key org-mode-map (kbd "C-M-k")    'org-shiftdown)
    (define-key org-mode-map (kbd "C-M-_")    'live-decrement-number-at-point)
    (define-key org-mode-map (kbd "M-h") 'help-command)
    ;; Yasnippet compatibility
    (add-hook 'org-mode-hook
              (lambda ()
                (org-set-local 'yas/trigger-key [tab])
                (define-key yas/keymap [tab] 'yas/next-field-or-maybe-expand)))

    (defun yas/org-very-safe-expand ()
      (let ((yas/fallback-behavior 'return-nil)) (yas/expand)))

    (add-hook 'org-mode-hook
              (lambda ()
                (make-variable-buffer-local 'yas/trigger-key)
                (setq yas/trigger-key [tab])
                (add-to-list 'org-tab-first-hook 'yas/org-very-safe-expand)
                (define-key yas/keymap [tab] 'yas/next-field)))))
