(autoload 'haskell-mode "haskell-mode" nil t)
(autoload 'haskell-cabal "haskell-cabal" nil t)

(add-to-list 'auto-mode-alist '("\\.hs$" . haskell-mode))
(add-to-list 'auto-mode-alist '("\\.lhs$" . literate-haskell-mode))
(add-to-list 'auto-mode-alist '("\\.cabal$" . haskell-cabal-mode))

(autoload 'ghc-init "ghc" nil t)
(autoload 'ghc-debug "ghc" nil t)

(add-hook 'haskell-mode-hook '(lambda ()
(ghc-init)
        (local-set-key "\C-j" (lambda () (interactive)(insert " -> ")))
        (local-set-key "\M-j" (lambda () (interactive)(insert " => ")))
        (local-set-key "\C-l" (lambda ()(interactive)(insert " <- ")))
))

(add-hook 'after-init-hook #'global-flycheck-mode)

(global-company-mode 1) ;; company-mode を常に ON
(add-to-list 'company-backends 'company-ghc)

(defun my-haskell-mode-hook ()
    (interactive)
    ;; インデント
    (turn-on-haskell-indent)
    (turn-on-haskell-doc-mode)
    (font-lock-mode)
    (imenu-add-menubar-index)
    ;; GHCi のコマンドを設定
    (setq haskell-program-name "/usr/bin/ghci") ;; stack の場合
    (inf-haskell-mode)
    ;; ghc-mod を使えるように
    (ghc-init)
    ;; flycheck を起動
    (flycheck-mode)
    (inf-haskell-mode))
(add-hook 'haskell-mode-hook 'my-haskell-mode-hook)

(defadvice inferior-haskell-load-file (after change-focus-after-load)
  "Change focus to GHCi window after C-c C-l command"
  (other-window 1))
(ad-activate 'inferior-haskell-load-file)

(provide 'init-haskell)
