;;override pcache's default cache dir
(defvar pcache-directory
  (let ((dir (file-name-as-directory (concat live-tmp-dir "pcache"))))
    (make-directory dir t)
    dir))

(require 'gist)
