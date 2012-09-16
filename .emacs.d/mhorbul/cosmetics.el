;; lose the stupid pipe chars on the split-screen bar
(set-face-foreground 'vertical-border "white")
(set-face-background 'vertical-border "white")

(custom-set-variables
 '(custom-safe-themes (quote ("edb0e9dce76acf08243762d30683293812c838773f0e9f41b7e6baf904776d6c" default))))

(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/")
(load-theme 'zenburn)

(eval-after-load 'hl-line
  '(set-face-background 'hl-line "color-236"))

;; TODO: port to dabbrevs
(defun disapproval () (interactive) (insert "ಠ_ಠ"))
(defun eyeroll () (interactive) (insert "◔_◔"))
(defun tables () (interactive) (insert "（╯°□°）╯︵ ┻━┻"))

(add-hook 'before-save-hook 'delete-trailing-whitespace)
(global-set-key "\M-g" 'goto-line)
(add-hook 'ruby-mode-hook
          (lambda ()
            (require 'ruby-electric)
            (ruby-electric-mode t)))

;; (require 'linum)
;; (global-linum-mode)
(setq whitespace-line-column 80)
;;(set-variable 'whitespace-style '(trailing lines-tail))
(global-whitespace-mode)
