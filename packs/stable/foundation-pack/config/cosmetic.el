;;make sure ansi colour character escapes are honoured
(require 'ansi-color)
(ansi-color-for-comint-mode-on)

(setq font-lock-maximum-decoration t
      color-theme-is-global t)

;; ;; Line-wrapping
(set-default 'fill-column 72)

;; ;get rid of clutter
(if (fboundp 'scroll-bar-mode) (scroll-bar-mode -1))
(if (fboundp 'tool-bar-mode) (tool-bar-mode -1))
(if (fboundp 'menu-bar-mode) (menu-bar-mode -1))
(if (fboundp 'tooltip-mode) (tooltip-mode -1))

;; ;remove bells
(setq ring-bell-function 'ignore)

;; font setitng functions
(require 'cl)

(defun live-set-default-font (font-string)
  "Sets the default font and sets all frames to the same font trying to maintain window resolution. Only changes font if window system is not a basic terminal."
  (interactive "MNew emacs live default font: ")
  (setq default-frame-alist
        (remove-if (lambda (x)
                     (eq 'font (car x)))
                   default-frame-alist))
  (cond
   ((member (window-system) '(x w32 mac ns))
    (add-to-list 'default-frame-alist (cons 'font font-string))
    (set-default-font font-string t t))))

(defun live-set-default-darwin-font (font-string)
  "Sets the default font and sets all frames to the same font trying to maintain window resolution. Only changes font if system-type is darwin in a window system."
  (interactive "MNew darwin default font: ")
  (cond
   ((eq system-type 'darwin)
    (live-set-default-font font-string))))

;; set font
(cond
 ((eq window-system 'x)
  (live-set-default-font "Source Code Pro 10"))
 ((eq window-system 'w32)
  (live-set-default-font "Consolas bold 11"))
 ((memq window-system '(mac ns))
  (live-set-default-darwin-font "Menlo 13")))

;; title format
(setq frame-title-format
      '((:eval (if (buffer-file-name)
                   (abbreviate-file-name (buffer-file-name))
                 "%b"))))

;; make fringe smaller
(if (fboundp 'fringe-mode)
    (fringe-mode 4))
