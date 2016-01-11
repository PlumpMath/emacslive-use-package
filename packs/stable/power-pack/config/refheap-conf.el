;;Create a file called ~/.refheap-pass.el with the following (use your own credentials):
;;(setq refheap-token "your token"
;;      refheap-user "your username")

(use-package refheap
  :defer t
  :init
  (if (file-exists-p "~/.refheap-pass.el")
      (load "~/.refheap-pass.el")))
