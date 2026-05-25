(require 'linum)
(require 'window-numbering)
(require 'color-theme-sanityinc-tomorrow)

;; モード設定
;; (global-linum-mode)
(global-display-line-numbers-mode 1)
(column-number-mode)
(window-numbering-mode)
(menu-bar-mode 0) ; menu bar: 1 for show, 0 for not show
(tool-bar-mode 0) ; tool bar: 1 for show, 0 for not show
;; (scroll-bar-mode 0) ; scroll bar: 1 for show, 0 for not show
(show-paren-mode t) ; 対応する括弧を強調して表示する
(transient-mark-mode t) ; 選択範囲に色をつける
;; (global-visual-line-mode t) ; 表示の改行 Wrap on
(fset 'yes-or-no-p 'y-or-n-p) ; from yes or no to y or no
(color-theme-sanityinc-tomorrow-bright)
(set-face-background 'region "chocolate") ; 選択範囲の色 color-209 -> orange
(set-face-attribute 'default nil :family "JetBrainsMono Nerd Font" :height 300) ; Font and window size
(set-face-attribute 'fixed-pitch nil :family "Sarasa Fixed J")
(dolist (charset '(kana han symbol cjk-misc japanese-jisx0208 japanese-jisx0212))
  (set-fontset-font t charset (font-spec :family "Sarasa Fixed J")))

(defun my-frame-font-increase ()
  (interactive)
  (let* ((current (face-attribute 'default :height))
         (new (+ current 150)))
    (set-face-attribute 'default (selected-frame) :height new)))

(defun my-frame-font-decrease ()
  (interactive)
  (let* ((current (face-attribute 'default :height))
         (new (- current 150)))
    (set-face-attribute 'default (selected-frame) :height new)))

(defun my-frame-move-left ()
  (interactive)
  (set-frame-position
   nil
   (- (frame-parameter nil 'left) 300)
   (frame-parameter nil 'top)))

(defun my-frame-move-right ()
  (interactive)
  (set-frame-position
   nil
   (+ (frame-parameter nil 'left) 300)
   (frame-parameter nil 'top)))

(defun my-frame-move-up ()
  (interactive)
  (set-frame-position
   nil
   (frame-parameter nil 'left)
   (- (frame-parameter nil 'top) 300)))

(defun my-frame-move-down ()
  (interactive)
  (set-frame-position
   nil
   (frame-parameter nil 'left)
   (+ (frame-parameter nil 'top) 300)))

(global-set-key (kbd "C-s-=") #'my-frame-font-increase)
(global-set-key (kbd "C-s--") #'my-frame-font-decrease)
(global-set-key (kbd "C-s-b") #'my-frame-move-left)
(global-set-key (kbd "C-s-f") #'my-frame-move-right)
(global-set-key (kbd "C-s-p") #'my-frame-move-up)
(global-set-key (kbd "C-s-n") #'my-frame-move-down)

;; パラメータ設定
(setq visible-bell 1)
(setq initial-frame-alist (append (list '(top . 3) '(left . 3) '(width . 79) '(height . 26)) initial-frame-alist)) ; only for personal desktop
(setq default-frame-alist initial-frame-alist) ; 起動時に表示位置とサイズを設定する
;; (setq w1 (selected-window)) ; 起動時に分割
;; (setq w2 (split-window w1 nil t)) ; 左右
;; (setq w3 (split-window w2 nil)) ; 上下
(setq frame-title-format "%f") ; タイトルバーにファイルのフルパスを表示
(setq show-paren-delay 0) ; 表示までの秒数。初期値は0.125
(setq make-backup-files nil) ;; バックアップファイルを作らない
(setq auto-save-default nil) ;; オートセーブファイルを作らない
(setq comment-style 'box) ;; コメントアウトのスタイル
(setq inhibit-startup-message t) ; Close the welcome buffer when startup
(setq initial-scratch-message "") ; (setq inhibit-startup-screen t)
(setq-default indent-tabs-mode nil)
;; (setq show-paren-style 'expression) ; 括弧内を強調

(provide 'init-face)
