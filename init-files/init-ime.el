;;; SKK

(global-set-key (kbd "C-x C-\\") 'skk-mode)
;; (global-set-key "\C-xj" 'skk-auto-fill-mode) ; 改行を自動入力する場合
;; (global-set-key "\C-xt" 'skk-tutorial) ; チュートリアル
;; (setq skk-user-directory "~/work/skk") ; 設定ファイル、個人辞書ファイルの置き場
;; (setq skk-init-file "~/work/skk/init") ; 設定ファイルの指定
(setq skk-japanese-message-and-error t)

;;; 使用する辞書の設定

;; 変換記録を保存するファイル名

(setq skk-record-file "~/work/skk/skk-record")

;; 個人辞書

(setq skk-jisyo "~/work/skk/skk-jisyo")
(setq skk-backup-jisyo "~/work/skk/skk-jisyo.bak")

;; large辞書

;; (setq skk-cdb-large-jisyo "/home/x/work/skk/SKK-JISYO.large.cdb")

;; メイン辞書（L 辞書、CDB 形式辞書、辞書サーバ）以外の辞書を指定する（From DDSKK 14.2）

(setq skk-extra-jisyo-file-list
      (list
       '("~/work/skk/jisyo/SKK-JISYO.JIS2" . euc-jisx0213)
       '("~/work/skk/jisyo/SKK-JISYO.JIS2004" . euc-jisx0213)
       '("~/work/skk/jisyo/SKK-JISYO.JIS3_4" . euc-jisx0213)
       '("~/work/skk/jisyo/SKK-JISYO.L" . euc-jisx0213)
       '("~/work/skk/jisyo/SKK-JISYO.assoc" . euc-jisx0213)
       '("~/work/skk/jisyo/SKK-JISYO.edict" . euc-jisx0213)
       '("~/work/skk/jisyo/SKK-JISYO.fullname" . euc-jisx0213)
       '("~/work/skk/jisyo/SKK-JISYO.geo" . euc-jisx0213)
       '("~/work/skk/jisyo/SKK-JISYO.itaiji" . euc-jisx0213)
       '("~/work/skk/jisyo/SKK-JISYO.jinmei" . euc-jisx0213)
       '("~/work/skk/jisyo/SKK-JISYO.law" . euc-jisx0213)
       '("~/work/skk/jisyo/SKK-JISYO.lisp" . euc-jisx0213)
       '("~/work/skk/jisyo/SKK-JISYO.mazegaki" . euc-jisx0213)
       '("~/work/skk/jisyo/SKK-JISYO.office.zipcode" . euc-jisx0213)
       '("~/work/skk/jisyo/SKK-JISYO.okinawa" . euc-jisx0213)
       '("~/work/skk/jisyo/SKK-JISYO.propernoun" . euc-jisx0213)
       '("~/work/skk/jisyo/SKK-JISYO.pubdic+" . euc-jisx0213)
       '("~/work/skk/jisyo/SKK-JISYO.station" . euc-jisx0213)
       '("~/work/skk/jisyo/SKK-JISYO.zipcode" . euc-jisx0213)
       ))

;;; 外見の変更

;; (require 'skk)

;; モードラインに色をつける設定

;; (setq skk-use-color-cursor t)
;; (setq skk-indicator-use-cursor-color t)

;; 変換候補のハイライト設定

;; (setq skk-henkan-face (skk-make-face 'gray80/gray25))

;;; PYIM

;; (require 'pyim)
;; (require 'pyim-basedict)

(pyim-basedict-enable)

(setq default-input-method "pyim")
(setq pyim-default-scheme 'microsoft-shuangpin)
(setq pyim-page-tooltip 'popup)
(setq pyim-page-length 5)

(provide 'init-ime)
