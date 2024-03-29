; (setenv "PATH" (concat (getenv "PATH") ":/Library/TeX/texbin")) ; for macos
(setenv "PATH" (concat (getenv "PATH") ":/usr/local/texlive/2022/bin/x86_64-linux")) ; for wsl2
(autoload 'yatex-mode "yatex" "Yet Another LaTeX mode" t)
(setq auto-mode-alist
      (append '(("\\.tex$" . yatex-mode) ("\\.ltx$" . yatex-mode) ("\\.cls$" . yatex-mode)
                ("\\.sty$" . yatex-mode) ("\\.clo$" . yatex-mode) ("\\.bbl$" . yatex-mode)) auto-mode-alist))
(setq YaTeX-inhibit-prefix-letter t)
(setq YaTeX-kanji-code nil)
(setq YaTeX-latex-message-code 'utf-8)
(setq YaTeX-use-LaTeX2e t)
(setq YaTeX-use-AMS-LaTeX t)
(setq YaTeX-dvi2-command-ext-alist '(("TeXworks\\|texworks\\|texstudio\\|mupdf\\|SumatraPDF\\|Preview\\|Skim\\|TeXShop\\|evince\\|atril\\|xreader\\|okular\\|zathura\\|qpdfview\\|Firefox\\|firefox\\|chrome\\|chromium\\|MicrosoftEdge\\|microsoft-edge\\|Adobe\\|Acrobat\\|AcroRd32\\|acroread\\|pdfopen\\|xdg-open\\|open\\|start" . ".pdf")))
;; $latex=q/platex => inrinko; $latex=q/uplatex => seminar; $latex=q/xelatex => cjk
(setq tex-command "latexmk -e '$latex=q/xelatex %O -synctex=1 %S/' -e '$bibtex=q/upbibtex %O %B/' -e '$biber=q/biber %O --bblencoding=utf8 -u -U --output_safechars %B/' -e '$makeindex=q/upmendex %O -o %D %S/' -e '$dvipdf=q/dvipdfmx %O -o %D %S/' -norc -gg -pdfdvi")
(setq bibtex-command "latexmk -C")
(setq makeindex-command "clean_tex")
(setq dvi2-command "/usr/bin/open -a Preview") ; for macos
(setq tex-pdfview-command "/usr/bin/open -a Preview") ; for macos
(setq dviprint-command-format "/usr/bin/open -a \"Adobe Acrobat Reader DC\" `echo %s | gsed -e \"s/\\.[^.]*$/\\.pdf/\"`") ; for macos
(add-hook 'yatex-mode-hook #'(lambda () (auto-fill-mode -1) (electric-indent-local-mode -1)))
(add-hook 'yatex-mode-hook #'(lambda () (reftex-mode 1)
             (define-key reftex-mode-map (concat YaTeX-prefix ">") 'YaTeX-comment-region)
             (define-key reftex-mode-map (concat YaTeX-prefix "<") 'YaTeX-uncomment-region)))
(provide 'init-yatex)
