;;
;; PATH
;;
(setenv "PATH"
        (concat (getenv "PATH") ":/Library/TeX/texbin"))

;;
;; YaTeX
;;
(autoload 'yatex-mode "yatex" "Yet Another LaTeX mode" t)
(setq auto-mode-alist
      (append '(("\\.tex$" . yatex-mode)
                ("\\.ltx$" . yatex-mode)
                ("\\.cls$" . yatex-mode)
                ("\\.sty$" . yatex-mode)
                ("\\.clo$" . yatex-mode)
                ("\\.bbl$" . yatex-mode)) auto-mode-alist))
(setq YaTeX-inhibit-prefix-letter t)
(setq YaTeX-kanji-code nil)
(setq YaTeX-latex-message-code 'utf-8)
(setq YaTeX-use-LaTeX2e t)
(setq YaTeX-use-AMS-LaTeX t)
(setq YaTeX-dvi2-command-ext-alist
      '(("TeXworks\\|texworks\\|texstudio\\|mupdf\\|SumatraPDF\\|Preview\\|Skim\\|TeXShop\\|evince\\|atril\\|xreader\\|okular\\|zathura\\|qpdfview\\|Firefox\\|firefox\\|chrome\\|chromium\\|MicrosoftEdge\\|microsoft-edge\\|Adobe\\|Acrobat\\|AcroRd32\\|acroread\\|pdfopen\\|xdg-open\\|open\\|start" . ".pdf")))
;;(setq tex-command "/Library/TeX/texbin/ptex2pdf -u -l -ot '-synctex=1'")
;; --- My Setting ---
;; (setq tex-command "/Library/TeX/texbin/ptex2pdf -u -l -ot -kanji=utf8 $synctexoption $fullname")
;; --- My Setting Eng ---
;;(setq tex-command "/Library/TeX/texbin/uplatex -synctex=1")
;;(setq tex-command "/Library/TeX/texbin/platex-ng -synctex=1")
;;(setq tex-command "/Library/TeX/texbin/pdflatex -synctex=1")
;;(setq tex-command "/Library/TeX/texbin/lualatex -synctex=1")
;;(setq tex-command "/Library/TeX/texbin/luajitlatex -synctex=1")
;;(setq tex-command "/Library/TeX/texbin/xelatex -synctex=1")
;;(setq tex-command "/Library/TeX/texbin/latexmk")
;; --- My Setting ---
;; "$latex=q/platex" is for inrinko & "$latex=q/uplatex" is for seminar
(setq tex-command "/Library/TeX/texbin/latexmk -e '$latex=q/uplatex %O -synctex=1 %S/' -e '$bibtex=q/upbibtex %O %B/' -e '$biber=q/biber %O --bblencoding=utf8 -u -U --output_safechars %B/' -e '$makeindex=q/upmendex %O -o %D %S/' -e '$dvipdf=q/dvipdfmx %O -o %D %S/' -norc -gg -pdfdvi")
;; --- My Setting End ---
;; --- My Setting ---
;; (setq tex-command "/usr/bin/latexmk -latex=platex -kanji=utf8 $synctexoption %O %S -e $dvipdf='dvipdfmx %O -o %D %S';$bibtex='pbibtex %O %B';$makeindex='mendex %O -o %D %S'; -pdfdvi $fullname")
;; --- My Setting End ---
;;(setq tex-command "/Library/TeX/texbin/latexmk -e '$latex=q/uplatex %O -synctex=1 %S/' -e '$bibtex=q/upbibtex %O %B/' -e '$biber=q/biber %O --bblencoding=utf8 -u -U --output_safechars %B/' -e '$makeindex=q/upmendex %O -o %D %S/' -e '$dvips=q/dvips %O -z -f %S | convbkmk -u > %D/' -e '$ps2pdf=q/ps2pdf %O %S %D/' -norc -gg -pdfps")
;;(setq tex-command "/Library/TeX/texbin/latexmk -e '$pdflatex=q/platex-ng %O -synctex=1 %S/' -e '$bibtex=q/upbibtex %O %B/' -e '$biber=q/biber %O --bblencoding=utf8 -u -U --output_safechars %B/' -e '$makeindex=q/upmendex %O -o %D %S/' -norc -gg -pdf")
;;(setq tex-command "/Library/TeX/texbin/latexmk -e '$pdflatex=q/pdflatex %O -synctex=1 %S/' -e '$bibtex=q/bibtex %O %B/' -e '$biber=q/biber %O --bblencoding=utf8 -u -U --output_safechars %B/' -e '$makeindex=q/makeindex %O -o %D %S/' -norc -gg -pdf")
;;(setq tex-command "/Library/TeX/texbin/latexmk -e '$lualatex=q/lualatex %O -synctex=1 %S/' -e '$bibtex=q/upbibtex %O %B/' -e '$biber=q/biber %O --bblencoding=utf8 -u -U --output_safechars %B/' -e '$makeindex=q/upmendex %O -o %D %S/' -norc -gg -pdflua")
;;(setq tex-command "/Library/TeX/texbin/latexmk -e '$lualatex=q/luajitlatex %O -synctex=1 %S/' -e '$bibtex=q/upbibtex %O %B/' -e '$biber=q/biber %O --bblencoding=utf8 -u -U --output_safechars %B/' -e '$makeindex=q/upmendex %O -o %D %S/' -norc -gg -pdflua")
;;(setq tex-command "/Library/TeX/texbin/latexmk -e '$xelatex=q/xelatex %O -synctex=1 %S/' -e '$bibtex=q/upbibtex %O %B/' -e '$biber=q/biber %O --bblencoding=utf8 -u -U --output_safechars %B/' -e '$makeindex=q/upmendex %O -o %D %S/' -norc -gg -pdfxe")
(setq bibtex-command "/Library/TeX/texbin/latexmk -e '$latex=q/uplatex %O -synctex=1 %S/' -e '$bibtex=q/upbibtex %O %B/' -e '$biber=q/biber %O --bblencoding=utf8 -u -U --output_safechars %B/' -e '$makeindex=q/upmendex %O -o %D %S/' -e '$dvipdf=q/dvipdfmx %O -o %D %S/' -norc -gg -pdfdvi")
(setq makeindex-command "/Library/TeX/texbin/latexmk -e '$latex=q/uplatex %O -synctex=1 %S/' -e '$bibtex=q/upbibtex %O %B/' -e '$biber=q/biber %O --bblencoding=utf8 -u -U --output_safechars %B/' -e '$makeindex=q/upmendex %O -o %D %S/' -e '$dvipdf=q/dvipdfmx %O -o %D %S/' -norc -gg -pdfdvi")
;;(setq dvi2-command "/usr/bin/open -a Skim")
(setq dvi2-command "/usr/bin/open -a Preview")
;;(setq dvi2-command "/usr/bin/open -a TeXShop")
;;(setq dvi2-command "/Applications/TeXworks.app/Contents/MacOS/TeXworks")
;;(setq dvi2-command "/Applications/texstudio.app/Contents/MacOS/texstudio --pdf-viewer-only")
;;(setq tex-pdfview-command "/usr/bin/open -a Skim")
(setq tex-pdfview-command "/usr/bin/open -a Preview")
;;(setq tex-pdfview-command "/usr/bin/open -a TeXShop")
;;(setq tex-pdfview-command "/Applications/TeXworks.app/Contents/MacOS/TeXworks")
;;(setq tex-pdfview-command "/Applications/texstudio.app/Contents/MacOS/texstudio --pdf-viewer-only")
(setq dviprint-command-format "/usr/bin/open -a \"Adobe Acrobat Reader DC\" `echo %s | gsed -e \"s/\\.[^.]*$/\\.pdf/\"`")

(add-hook 'yatex-mode-hook
          '(lambda ()
             (auto-fill-mode -1)
	     (electric-indent-local-mode -1)))

;;
;; RefTeX with YaTeX
;;
;;(add-hook 'yatex-mode-hook 'turn-on-reftex)
(add-hook 'yatex-mode-hook
          '(lambda ()
             (reftex-mode 1)
             (define-key reftex-mode-map (concat YaTeX-prefix ">") 'YaTeX-comment-region)
             (define-key reftex-mode-map (concat YaTeX-prefix "<") 'YaTeX-uncomment-region)))

(provide 'init-yatex)
