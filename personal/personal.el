(global-undo-tree-mode 0)

(global-set-key (kbd "<insert>") 'dabbrev-expand)
(global-set-key [remap kill-whole-line] 'kill-whole-line)
(global-set-key (kbd "C-<backspace>") 'backward-kill-word)

(defun disable-guru-mode ()
  (guru-mode -1)
)

(defun disable-flyspell-mode ()
  (flyspell-mode -1)
)

(add-hook 'prelude-prog-mode-hook 'disable-guru-mode t)
(add-hook 'prelude-prog-mode-hook 'disable-flyspell-mode t)

(setq web-mode-content-types-alist '(("jsx"  . "\\.js[x]?\\'")))
(flycheck-add-mode 'javascript-eslint 'web-mode)
