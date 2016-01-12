(live-add-pack-lib "live-fontify-hex")

(use-package live-fontify-hex
  :ensure nil
  :load-path (lambda () (live-pack-lib-dir))
  :init
  (progn
    (font-lock-add-keywords 'lisp-mode
                            '((live-fontify-hex-colors)))

    (font-lock-add-keywords 'emacs-lisp-mode
                            '((live-fontify-hex-colors)))

    (font-lock-add-keywords 'lisp-interaction-mode
                            '((live-fontify-hex-colors)))

    (font-lock-add-keywords 'css-mode
                            '((live-fontify-hex-colors)))))
