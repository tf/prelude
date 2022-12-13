(menu-bar-mode -1)
(scroll-bar-mode -1)
(setq ido-enable-flex-matching t)

(setq multi-term-program "/bin/bash")
(setq multi-term-program-switches "--login")

(add-hook 'term-mode-hook
    (lambda()
      (toggle-truncate-lines 0)
      (display-line-numbers-mode 0)
      ))


;; (add-hook 'web-mode-hook 'prettier-js-mode)
(add-hook 'typescript-mode-hook 'prettier-js-mode)

(global-set-key (kbd "C-x t") 'multi-term-next)
(global-set-key (kbd "C-x T") 'multi-term)

(fset 'redmine-current-issue
      [?\C-u ?\M-! ?r ?e ?d ?m ?i ?n ?e ?  ?t ?i ?m ?e ?  ?c ?u ?r ?r ?e ?n ?t return ?\C-  ?\C-  ?\C-e menu ?r ?e ?p ?l ?a ?c ?e ?- ?r ?e tab ?g tab return ?. ?* ?  ?- ?  ?# ?\\ ?\( ?\[ ?0 ?- ?9 ?\] ?+ ?\\ ?\) ?: ?- backspace ?. ?* return ?R ?E ?D ?M ?I ?N ?E ?- ?\\ ?1 return])

(global-set-key (kbd "C-c C") 'redmine-current-issue)

(add-to-list 'auto-mode-alist '("\\.js\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.jsx\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.tsx\\'" . typescript-mode))
