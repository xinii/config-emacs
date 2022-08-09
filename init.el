(require 'package)

(defvar packages
  '(async auto-complete cider clojure-mode color-theme-sanityinc-tomorrow concurrent ctable dash ddskk deferred epc fish-mode git-commit google-translate helm helm-core htmlize jedi jedi-core jupyter magit magit-popup markdown-mode markdown-preview-mode markdown-toc mermaid-mode org-mind-map org-roam org-roam-ui ox-reveal popup powershell pyim pyim-basedict python-environment rainbow-delimiters rjsx-mode smex toml-mode typescript-mode uuidgen web-server websocket web-mode window-numbering with-editor xcscope yaml-mode yatex) "packages to be installed")

(setq custom-file (expand-file-name "custom.el" user-emacs-directory))
(setq site-packages (expand-file-name "site-packages" user-emacs-directory))
(add-to-list 'load-path (expand-file-name "init-files" user-emacs-directory))

(add-to-list 'load-path (expand-file-name "ascii" site-packages))
(add-to-list 'load-path (expand-file-name "lilypond" site-packages))
(add-to-list 'load-path (expand-file-name "lookup" site-packages))
(add-to-list 'load-path (expand-file-name "point-undo" site-packages))
(add-to-list 'load-path (expand-file-name "xclip" site-packages))
(add-to-list 'load-path site-packages)

(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))
(add-to-list 'package-archives '("melpa-stable" . "https://stable.melpa.org/packages/") t)
(add-to-list 'package-archives '("gnu" . "https://elpa.gnu.org/packages/") t)

(package-initialize)

(unless package-archive-contents (package-refresh-contents))
(dolist (pkg packages) (unless (package-installed-p pkg) (package-install pkg)))
(when (file-exists-p custom-file) (load custom-file))

(defconst *is-a-mac* (eq system-type 'darwin))
(when *is-a-mac* (require 'init-overtone))

(require 'init-auto-complete)
(require 'init-auto-insert)
(require 'init-clipboard)
(require 'init-face)
(require 'init-functions)
(require 'init-google-translate)
(require 'init-helm)
(require 'init-ime)
(require 'init-key-setting)
(require 'init-lilypond)
(require 'init-lookup)
(require 'init-magit)
(require 'init-markdown)
(require 'init-org)
(require 'init-python)
(require 'init-web-mode)
(require 'init-yatex)

(provide 'init)
