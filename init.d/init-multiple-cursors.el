(when (require 'multiple-cursors nil t)
  (when (require 'region-bindings-mode nil t)
    (region-bindings-mode-enable)
    (when (require 'minor-mode-hack nil t)
      (raise-minor-mode-map-alist 'region-bindings-mode-map))
    (define-key region-bindings-mode-map (kbd "C-m") 'mc/mark-all-like-this)
    (define-key region-bindings-mode-map "p" 'mc/mark-previous-like-this)
    (define-key region-bindings-mode-map "n" 'mc/mark-next-like-this)
    (define-key region-bindings-mode-map "m" 'mc/mark-more-like-this-extended)))

(provide 'init-multiple-cursors)
