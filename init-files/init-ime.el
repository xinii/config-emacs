(require 'pyim)
(require 'pyim-basedict)
(pyim-basedict-enable)
(setq default-input-method "pyim")
(setq pyim-default-scheme 'microsoft-shuangpin)
(setq pyim-page-tooltip 'popup)
(setq pyim-page-length 5)

(provide 'init-ime)
