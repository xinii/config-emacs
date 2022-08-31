(when (executable-find "xclip")
  (require 'xclip)
  (xclip-mode 1))

(provide 'init-clipboard)
