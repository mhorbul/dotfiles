(require 'package)
(add-to-list 'package-archives
             '("marmalade" . "http://marmalade-repo.org/packages/") t)
(package-initialize)

(when (not package-archive-contents)
  (package-refresh-contents))

(defvar my-packages '(better-defaults paredit idle-highlight-mode ido-ubiquitous
                                      find-file-in-project smex scpaste))

(dolist (p my-packages)
  (when (not (package-installed-p p))
    (package-install p)))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(background-color "#7f7f7f")
 '(background-mode dark)
 '(cursor-color "#5c5cff")
 '(custom-safe-themes (quote ("edb0e9dce76acf08243762d30683293812c838773f0e9f41b7e6baf904776d6c" default)))
 '(foreground-color "#5c5cff")
 '(safe-local-variable-values (quote ((encoding . utf-8) (whitespace-line-column . 80) (lexical-binding . t))))
 '(package-selected-packages
   (quote
    (scpaste smex paredit ido-ubiquitous idle-highlight-mode find-file-in-project better-defaults)))
)
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(hl-line ((t (:inherit nil :background "color-236" :foreground "Old Lace"))))
)

(add-to-list 'load-path "~/.emacs.d/mhorbul")
