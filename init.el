(require 'package)

(setq warning-minimum-level :emergency)

(defvar packages
  '(async cider clojure-mode color-theme-sanityinc-tomorrow dash ddskk diminish fish-mode google-translate htmlize jupyter markdown-mode markdown-preview-mode markdown-toc mermaid-mode org-mind-map org-roam org-roam-ui ox-reveal plantuml-mode powershell pyim pyim-basedict rainbow-delimiters rjsx-mode toml-mode typescript-mode uuidgen web-server websocket web-mode window-numbering with-editor xcscope yaml-mode yatex vertico orderless consult marginalia corfu corfu-terminal cape eglot magit gptel projectile) "packages to be installed")

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

(dolist (pkg packages)
  (unless (package-installed-p pkg)
    (package-install pkg)))

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(when (file-exists-p custom-file) (load custom-file))

(defconst *is-a-linux* (eq system-type 'gnu/linux))
(defconst *is-a-mac* (eq system-type 'darwin))
(defconst *is-a-windows* (eq system-type 'windows-nt))

(require 'use-package)
(setq use-package-always-ensure t)

(require 'init-auto-insert)
(require 'init-clipboard)
(require 'init-face)
(require 'init-functions)
(require 'init-google-translate)
(require 'init-modern)
(require 'init-ime)
(require 'init-key-setting)
(require 'init-lilypond)
(require 'init-lookup)
(require 'init-markdown)
(require 'init-org)
(require 'init-python)
(require 'init-web-mode)
(require 'init-yatex)

(when *is-a-mac*
  (require 'init-overtone))

(provide 'init)
