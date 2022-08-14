;; (setq lookup-el-path "/usr/share/lookup-el")
;; (when (file-exists-p lookup-el-path) (add-to-list 'load-path lookup-el-path))

(autoload 'lookup "lookup" nil t)
(autoload 'lookup-region "lookup" nil t)
(autoload 'lookup-pattern "lookup" nil t)

;; (define-key ctl-x-map "l" 'lookup)
;; (define-key ctl-x-map "y" 'lookup-region)
;; (define-key ctl-x-map "\C-y" 'lookup-pattern)

(setq lookup-search-agents
      '(
        (ndeb "~/work/epwing/01-小学館2")
        (ndeb "~/work/epwing/02-日漢雙解辭典")
        (ndeb "~/work/epwing/03-講談社·日中")
        (ndeb "~/work/epwing/04-中日大辞典（大修館）")
        (ndeb "~/work/epwing/05-NHK日本語発音アクセント辞典")
        (ndeb "~/work/epwing/06-どんな時にどう使う日本語表現文型辞典")
        (ndeb "~/work/epwing/07-パーソナル日本語文型辞典")
        (ndeb "~/work/epwing/08-日本語表現文型辞典")
        (ndeb "~/work/epwing/09-日本語表現活用辞典")
        (ndeb "~/work/epwing/11-広辞苑·第六版（DVD版）")
        (ndeb "~/work/epwing/12-三省堂·スーパー大辞林")
        (ndeb "~/work/epwing/13-大辞泉")
        (ndeb "~/work/epwing/14-CEDICT")
        (ndeb "~/work/epwing/15-牛津双解英漢")
        (ndeb "~/work/epwing/16-英和·和英コンサイス辞典")
        (ndeb "~/work/epwing/17-研究社·新英和·和英中辞典と漢字源")
        (ndeb "~/work/epwing/18-研究社·新英和中辞典")
        (ndeb "~/work/epwing/19-ロイヤル英文法改訂新版")
        (ndeb "~/work/epwing/20-ハイブリッド·新辞林")
        (ndeb "~/work/epwing/21-国語大辞典")
        (ndeb "~/work/epwing/22-新明解国語辞典·第五版")
        (ndeb "~/work/epwing/23-明鏡国語辞典")
        (ndeb "~/work/epwing/24-類語辞典")
        (ndeb "~/work/epwing/25-角川類語新辞典")
        (ndeb "~/work/epwing/26-三省堂·必携辞書")
        (ndeb "~/work/epwing/27-PDD人名辞典")
        (ndeb "~/work/epwing/28-PDD百科辞書")
        (ndeb "~/work/epwing/29-日本語辞典と手紙実用文辞典")
        (ndeb "~/work/epwing/30-ウィキペディア日本語版")
        (ndeb "~/work/epwing/32-維基百科中文版")
        (ndeb "~/work/epwing/33-コンピュータ用語辞典第2版")
        (ndeb "~/work/epwing/34-漢英字典")
        (ndeb "~/work/epwing/35-顔文字辞書")
        (ndeb "~/work/epwing/36-天照大神·金山漢日大辞典2006")
        (ndeb "~/work/epwing/37-日本大百科")
        (ndeb "~/work/epwing/38-万葉集")
        (ndeb "~/work/epwing/39-学研·パーソナル統合辞典")
        (ndeb "~/work/epwing/40-NEW斉藤和英大辞典と用例ファイル")
        (ndeb "~/work/epwing/41-かずお韓国語辞典-韓（カタカナ）日辞典")
        (ndeb "~/work/epwing/42-かずお韓国語辞典-日韓（カタカナ）辞典")
        (ndeb "~/work/epwing/43-聖書")
        ))

(setq ndeb-binary-programs
      '((wave "mpv")
        (mpeg ("mpv") :derect t)))

(setq ndeb-play-binaries-from-entry
      '(("x" wave mpeg)))

;; (setq lookup-default-dictionary-options
;;       '((:stemmer .  stem-english)))

;; (setq lookup-use-kakasi nil)

(provide 'init-lookup)
