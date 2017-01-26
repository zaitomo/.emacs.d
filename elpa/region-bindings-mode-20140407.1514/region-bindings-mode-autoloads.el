;;; region-bindings-mode-autoloads.el --- automatically extracted autoloads
;;
;;; Code:
(add-to-list 'load-path (or (file-name-directory #$) (car load-path)))

;;;### (autoloads nil "region-bindings-mode" "region-bindings-mode.el"
;;;;;;  (22662 10846 833937 873000))
;;; Generated autoloads from region-bindings-mode.el

(autoload 'region-bindings-mode "region-bindings-mode" "\
Enable special bindings when working with an active region.

Do not invoke `region-bindings-mode' directly!

Toggling the mode on and off via this function will simply
enable/disable the bindings, but it will not honour
`region-bindings-mode-disabled-modes' or
`region-bindings-mode-disable-predicates', or toggle activation
of the hooks which automatically enable/disable the bindings when
the mark is activated or deactivated.

Instead, call `region-bindings-mode-enable' and
`region-bindings-mode-enable'.

\(fn &optional ARG)" t nil)

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; End:
;;; region-bindings-mode-autoloads.el ends here
