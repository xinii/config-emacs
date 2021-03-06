;(require 'epa-file)
;(epa-file-enable)
(add-hook 'org-mode-hook (lambda () (setq truncate-lines nil)));
(setq org-startup-indented t)

(org-babel-do-load-languages
 'org-babel-load-languages
 '((C . t)
   (R . t)
   (ruby . t)
   (python . t)
   (emacs-lisp . t)))

(setq org-publish-project-alist
      '(("Bigblow"
         :base-directory "~/OneDrive/OneSync/Documents/Note/notebook"
         :base-extension "org"
         :publishing-directory "/Volumes/dav/web/notebook"
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
         :base-directory "~/OneDrive/OneSync/Documents/Note/notebook"
         :base-extension "org"
         :publishing-directory "/Volumes/dav/web/notebook"
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
         :base-directory "~/OneDrive/OneSync/Documents/Note/notebook"
         :base-extension "org"
         :publishing-directory "~/OneDrive/OneSync/Documents/Note/notebook-html"
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
         :base-directory "~/OneDrive/OneSync/Documents/Note/notebook"
         :base-extension "org"
         :publishing-directory "~/OneDrive/OneSync/Documents/Note/notebook-html"
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
         :base-directory "~/OneDrive/OneSync/Documents/Note/notebook"
         :base-extension "org"
         :publishing-directory "~/OneDrive/OneSync/Documents/Note/notebook-html"
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
         :base-directory "~/OneDrive/OneSync/Documents/Note/notebook"
         :base-extension "org"
         :publishing-directory "~/Work/exports/article"
         :publishing-function org-latex-publish-to-latex
         :recursive t)
        ("latex-presentation"
         :base-directory "~/OneDrive/OneSync/Documents/Note/notebook"
         :base-extension "org"
         :publishing-directory "~/Work/exports/presentation"
         :publishing-function org-beamer-publish-to-latex
         :recursive t)
        ("latex-all" :components ("latex-article" "latex-presentation"))))

(provide 'init-org)
