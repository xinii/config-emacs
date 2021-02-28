(require 'markdown-preview-mode)

(add-to-list 'markdown-preview-stylesheets "https://raw.githubusercontent.com/richleland/pygments-css/master/emacs.css")
(setq markdown-preview-stylesheets (list "http://thomasf.github.io/solarized-css/solarized-light.min.css"))
;; (add-to-list 'markdown-preview-javascript "http://cdn.mathjax.org/mathjax/latest/MathJax.js?config=TeX-MML-AM_CHTML")
;; (add-to-list 'markdown-preview-javascript '("http://cdn.mathjax.org/mathjax/latest/MathJax.js?config=TeX-MML-AM_CHTML" . async))

(setq markdown-command "multimarkdown")

;; (add-hook 'markdown-mode-hook (lambda () (font-lock-add-keywords nil '(("\\<\\(A\\):" 1 font-lock-warning-face t)))))

(font-lock-add-keywords 'markdown-mode '(("\\(\\\\\\\\\\\\(\\)" . 'org-hide)
					 ("\\(\\\\\\\\\\\\)\\)" . 'org-hide)
					 ("\\(\\\\\\\\\\\\\\[\\)" . 'org-hide)
					 ("\\(\\\\\\\\\\\\\\]\\)" . 'org-hide)))

(provide 'init-markdown)
