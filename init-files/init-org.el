;; (require 'epa-file)
;; (epa-file-enable)
(require 'ox-reveal)
(require 'ox-ipynb)
(add-hook 'org-mode-hook (lambda () (setq truncate-lines nil)));
(setq org-startup-indented t)

(org-babel-do-load-languages
 'org-babel-load-languages
 '((C . t)
   (R . t)
   (emacs-lisp . t)
   (java . t)
   (jupyter . t)
   (lilypond . t)
   (python . t)
   (ruby . t)
   (sql . t)))

(define-key global-map (kbd "C-c n a") 'org-roam-alias-add)
(define-key global-map (kbd "C-c n f") 'org-roam-node-find)
(define-key global-map (kbd "C-c n i") 'org-roam-node-insert)
(define-key global-map (kbd "C-c n o") 'org-id-get-create)
(define-key global-map (kbd "C-c n r") 'org-roam-node-random)
(define-key global-map (kbd "C-c n s") 'org-roam-db-sync)
(define-key global-map (kbd "C-c n t") 'org-roam-tag-add)
(define-key global-map (kbd "C-c n u") 'org-roam-ui-mode)

(setq system-time-locale "C")
(setf (elt org-time-stamp-rounding-minutes 1) 1)
(setq org-time-stamp-formats '("<%Y-%m-%d %a>" . "<%Y-%m-%d %a %H:%M:%S>"))
(setq org-time-stamp-custom-formats '("<%Y-%m-%d %A>" . "<%Y-%m-%d %A %H:%M:%S>"))
(setq-default org-display-custom-times nil)
(setq org-roam-capture-templates '(("d" "default" plain "%?"
                                    :if-new
                                    (file+head "${slug}.org"
                                               "#+title: ${title}\n#+author: x\n#+created: %<[%Y-%m-%d %a %H:%M:%S]>\n#+modified: %U\n\n")
                                    :immediate-finish t))
      time-stamp-active t
      time-stamp-start "#\\+modified: [\t]*"
      time-stamp-end "$"
      time-stamp-format "\[%Y-%m-%d %a %H:%M:%S\]")
(add-hook 'before-save-hook 'time-stamp nil)

(setq org-publish-project-alist
      '(("Bigblow"
         :base-directory "~/work/notebook/source"
         :base-extension "org"
         :publishing-directory "~/work/notebook/target"
         :publishing-function org-html-publish-to-html
         :auto-sitemap t
         :recursive t
         :sitemap-filename "index.org"
         :sitemap-title "Notebook"
         :sitemap-style tree
         :html-head-extra "
<link rel='stylesheet' type='text/css' href='https://xinii.github.io/org-html-themes/styles/bigblow/css/htmlize.css'/>
<link rel='stylesheet' type='text/css' href='https://xinii.github.io/org-html-themes/styles/bigblow/css/bigblow.css'/>
<link rel='stylesheet' type='text/css' href='https://xinii.github.io/org-html-themes/styles/bigblow/css/hideshow.css'/>
<script type='text/javascript' src='https://xinii.github.io/org-html-themes/styles/bigblow/js/jquery-1.11.0.min.js'></script>
<script type='text/javascript' src='https://xinii.github.io/org-html-themes/styles/bigblow/js/jquery-ui-1.10.2.min.js'></script>
<script type='text/javascript' src='https://xinii.github.io/org-html-themes/styles/bigblow/js/jquery.localscroll-min.js'></script>
<script type='text/javascript' src='https://xinii.github.io/org-html-themes/styles/bigblow/js/jquery.scrollTo-1.4.3.1-min.js'></script>
<script type='text/javascript' src='https://xinii.github.io/org-html-themes/styles/bigblow/js/jquery.zclip.min.js'></script>
<script type='text/javascript' src='https://xinii.github.io/org-html-themes/styles/bigblow/js/bigblow.js'></script>
<script type='text/javascript' src='https://xinii.github.io/org-html-themes/styles/bigblow/js/hideshow.js'></script>
<script type='text/javascript' src='https://xinii.github.io/org-html-themes/styles/lib/js/jquery.stickytableheaders.min.js'></script>
<script src='https://cdnjs.cloudflare.com/ajax/libs/pangu/4.0.7/pangu.js'></script>
<script> document.addEventListener('DOMContentLoaded', () => { pangu.autoSpacingPage(); }); </script>")
        ("ReadTheOrg"
         :base-directory "~/work/notebook/source"
         :base-extension "org"
         :publishing-directory "~/work/notebook/target"
         :publishing-function org-html-publish-to-html
         :auto-sitemap t
         :recursive t
         :sitemap-filename "index.org"
         :sitemap-title "Notebook"
         :sitemap-style tree
         :html-head-extra "
<link rel='stylesheet' type='text/css' href='https://xinii.github.io/org-html-themes/styles/readtheorg/css/htmlize.css'/>
<link rel='stylesheet' type='text/css' href='https://xinii.github.io/org-html-themes/styles/readtheorg/css/readtheorg.css'/>
<script src='https://xinii.github.io/org-html-themes/styles/lib/js/jquery.min.js'></script>
<script src='https://xinii.github.io/org-html-themes/styles/lib/js/bootstrap.min.js'></script>
<script src='https://xinii.github.io/org-html-themes/styles/lib/js/jquery.stickytableheaders.min.js'></script>
<script src='https://xinii.github.io/org-html-themes/styles/readtheorg/js/readtheorg.js'></script>
<script src='https://cdnjs.cloudflare.com/ajax/libs/pangu/4.0.7/pangu.js'></script>
<script> document.addEventListener('DOMContentLoaded', () => { pangu.autoSpacingPage(); }); </script>")
        ("html-norang"
         :base-directory "~/work/notebook/source"
         :base-extension "org"
         :publishing-directory "~/work/notebook/target"
         :publishing-function org-html-publish-to-html
         :auto-sitemap t
         :recursive t
         :sitemap-filename "index.org"
         :sitemap-title "Personal notebook"
         :sitemap-style tree
         :html-head-extra "
<link rel='stylesheet' type='text/css' href='https://ss1.xrea.com/xin.g2.xrea.com/content/org-style/norang.css'/>
<script src='https://cdnjs.cloudflare.com/ajax/libs/pangu/4.0.7/pangu.js'></script>
<script> document.addEventListener('DOMContentLoaded', () => { pangu.autoSpacingPage(); }); </script>")
        ("html-worg"
         :base-directory "~/work/notebook/source"
         :base-extension "org"
         :publishing-directory "~/work/notebook/target"
         :publishing-function org-html-publish-to-html
         :auto-sitemap t
         :recursive t
         :sitemap-filename "index.org"
         :sitemap-title "Personal notebook"
         :sitemap-style tree
         :html-head-extra "
<link rel='stylesheet' type='text/css' href='https://sambatriste.github.io/org-mode-theme-gallery/worg/worg.css'/>
<script src='https://cdnjs.cloudflare.com/ajax/libs/pangu/4.0.7/pangu.js'></script>
<script> document.addEventListener('DOMContentLoaded', () => { pangu.autoSpacingPage(); }); </script>")
        ("html-blank"
         :base-directory "~/work/notebook/source"
         :base-extension "org"
         :publishing-directory "~/work/notebook/target"
         :publishing-function org-html-publish-to-html
         :auto-sitemap t
         :recursive t
         :sitemap-filename "index.org"
         :sitemap-title "Personal notebook"
         :sitemap-style tree
         :html-head-extra "
<script src='https://cdnjs.cloudflare.com/ajax/libs/pangu/4.0.7/pangu.js'></script>
<script> document.addEventListener('DOMContentLoaded', () => { pangu.autoSpacingPage(); }); </script>")
        ("latex-article"
         :base-directory "~/work/notebook/source"
         :base-extension "org"
         :publishing-directory "~/work/notebook/target"
         :publishing-function org-latex-publish-to-latex
         :recursive t)
        ("latex-presentation"
         :base-directory "~/work/notebook/source"
         :base-extension "org"
         :publishing-directory "~/work/notebook/target"
         :publishing-function org-beamer-publish-to-latex
         :recursive t)
        ("latex-all" :components ("latex-article" "latex-presentation"))))

(add-to-list 'auto-mode-alist '("\\.txt$" . org-mode))

(provide 'init-org)
