(require 'quickrun)

(quickrun-add-command "c++/clang++"
                      '((:command . "clang++")
                        (:exec . ("%c -Wall -O2 -g -std=c++1y -lstdc++ %o -o %e %s"
                                     "%e %a"))
                        (:remove . ("%e")))
                      :default "c++")

(quickrun-set-default "c++" "c++/clang++")

(global-set-key (kbd "C-c c") 'quickrun)

(provide 'init-quickrun)
