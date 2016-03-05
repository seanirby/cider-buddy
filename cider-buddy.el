;;; cider-buddy.el --- Helpers utilities for the CIDER package
;;
;; Author: Sean Irby
;; Copyright © , Sean Irby
;;
;; This program is free software: you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or (at
;; your option) any later version.
;;
;; This program is distributed in the hope that it will be useful, but
;; WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
;; General Public License for more details.
;;
;; You should have received a copy of the GNU General Public License
;; along with GNU Emacs.  If not, see <http://www.gnu.org/licenses/>.
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;; This file is not a part of GNU Emacs
;;
;;; Commentary:
;;
;;; Code:

(with-eval-after-load 'cider

  (defun cider-buddy-shortcut-str (command)
    (prin1-to-string (key-description (where-is-internal command cider-mode-map t)) t))

  (with-eval-after-load 'hydra
    (defhydra hydra-cider-buddy-eval (:hint nil :color blue)
      "
CIDER Buddy: Evaluation Commands Menu

 Key^^    Command                           Shortcut
----^^------------------------------------------------
 _a_:     cider-eval-buffer                 %(cider-buddy-shortcut-str 'cider-eval-buffer)
 _b_:     cider-eval-defun-at-point         %(cider-buddy-shortcut-str 'cider-eval-defun-at-point)
 _c_:     cider-eval-defun-to-comment       %(cider-buddy-shortcut-str 'cider-eval-defun-to-comment)
 _d_:     cider-eval-file                   %(cider-buddy-shortcut-str 'cider-eval-file)
 _e_:     cider-eval-last-sexp              %(cider-buddy-shortcut-str 'cider-eval-last-sexp)
 _f_:     cider-eval-last-sexp-and-replace  %(cider-buddy-shortcut-str 'cider-eval-last-sexp-and-replace)
 _g_:     cider-eval-last-sexp-to-repl      %(cider-buddy-shortcut-str 'cider-eval-last-sexp-to-repl)
 _h_:     cider-eval-ns-form                %(cider-buddy-shortcut-str 'cider-eval-ns-form)
 _i_:     cider-eval-region                 %(cider-buddy-shortcut-str 'cider-eval-region)
 _j_:     cider-interrupt-eval              %(cider-buddy-shortcut-str 'cider-interrupt-eval)
 _k_:     cider-pprint-eval-defun-at-point  %(cider-buddy-shortcut-str 'cider-pprint-eval-defun-at-point)
 _l_:     cider-pprint-eval-last-sexp       %(cider-buddy-shortcut-str 'cider-pprint-eval-last-sexp)
 _m_:     cider-read-and-eval               %(cider-buddy-shortcut-str 'cider-read-and-eval)"
      ("a" cider-eval-buffer)
      ("b" cider-eval-defun-at-point)
      ("c" cider-eval-defun-to-comment)
      ("d" cider-eval-file)
      ("e" cider-eval-last-sexp)
      ("f" cider-eval-last-sexp-and-replace)
      ("g" cider-eval-last-sexp-to-repl)
      ("h" cider-eval-ns-form)
      ("i" cider-eval-region)
      ("j" cider-interrupt-eval)
      ("k" cider-pprint-eval-defun-at-point)
      ("l" cider-pprint-eval-last-sexp)
      ("m" cider-read-and-eval)
      )

    (defhydra hydra-cider-buddy-doc (:hint nil :color blue)
      "
CIDER Buddy: Documentation Commands Menu

 Key^^    Command                      Shortcut
----^^-----------------------------------------------
 _a_:     cider-apropos                %(cider-buddy-shortcut-str 'cider-apropos)
 _b_:     cider-apropos-documentation  %(cider-buddy-shortcut-str 'cider-apropos-documentation)
 _c_:     cider-doc                    %(cider-buddy-shortcut-str 'cider-doc)
 _g_:     cider-doc-map                %(cider-buddy-shortcut-str 'cider-doc-map)
 _e_:     cider-grimoire               %(cider-buddy-shortcut-str 'cider-grimoire)
 _a_:     cider-grimoire-web           %(cider-buddy-shortcut-str 'cider-grimoire-web)
 _f_:     cider-javadoc                %(cider-buddy-shortcut-str 'cider-javadoc)"
      ("a"  cider-apropos)
      ("b"  cider-apropos-documentation)
      ("c"  cider-doc)
      ("g"  cider-doc-map)
      ("e"  cider-grimoire)
      ("a"  cider-grimoire-web)
      ("f"  cider-javadoc)
      )

    (defhydra hydra-cider-buddy-test (:hint nil :color blue)
      "
CIDER Buddy: Test Commands Menu

 Key^^    Command                       Shortcut
----^^----------------------------------------------
 _a_:     cider-test-commands-map       %(cider-buddy-shortcut-str 'cider-test-commands-map)
 _b_:     cider-test-rerun-tests        %(cider-buddy-shortcut-str 'cider-test-rerun-tests)
 _c_:     cider-test-run-loaded-tests   %(cider-buddy-shortcut-str 'cider-test-run-loaded-tests)
 _d_:     cider-test-run-ns-tests       %(cider-buddy-shortcut-str 'cider-test-run-ns-tests)
 _e_:     cider-test-run-project-tests  %(cider-buddy-shortcut-str 'cider-test-run-project-tests)
 _f_:     cider-test-run-test           %(cider-buddy-shortcut-str 'cider-test-run-test)
 _g_:     cider-test-show-report        %(cider-buddy-shortcut-str 'cider-test-show-report)"
      ("a" cider-test-commands-map)
      ("b" cider-test-rerun-tests)
      ("c" cider-test-run-loaded-tests)
      ("d" cider-test-run-ns-tests)
      ("e" cider-test-run-project-tests)
      ("f" cider-test-run-test)
      ("g" cider-test-show-report)
      )

    (defhydra hydra-cider-buddy-other (:hint nil :color blue)
      "
CIDER Buddy: Other Commands Menu

 Key^^    Command                                      Shortcut
----^^-------------------------------------------------------------
 _a_:     cider-display-connection-info                %(cider-buddy-shortcut-str 'cider-display-connection-info)
 _b_:     cider-find-and-clear-repl-output             %(cider-buddy-shortcut-str 'cider-find-and-clear-repl-output)
 _c_:     cider-find-ns                                %(cider-buddy-shortcut-str 'cider-find-ns)
 _d_:     cider-find-resource                          %(cider-buddy-shortcut-str 'cider-find-resource)
 _e_:     cider-find-var                               %(cider-buddy-shortcut-str 'cider-find-var)
 _f_:     cider-insert-last-sexp-in-repl               %(cider-buddy-shortcut-str 'cider-insert-last-sexp-in-repl)
 _g_:     cider-inspect                                %(cider-buddy-shortcut-str 'cider-inspect)
 _h_:     cider-load-buffer-and-switch-to-repl-buffer  %(cider-buddy-shortcut-str 'cider-load-buffer-and-switch-to-repl-buffer)
 _i_:     cider-load-file                              %(cider-buddy-shortcut-str 'cider-load-file)
 _k_:     cider-macroexpand-all                        %(cider-buddy-shortcut-str 'cider-macroexpand-all)
 _l_:     cider-pop-back                               %(cider-buddy-shortcut-str 'cider-pop-back)
 _m_:     cider-quit                                   %(cider-buddy-shortcut-str 'cider-quit)
 _n_:     cider-refresh                                %(cider-buddy-shortcut-str 'cider-refresh)
 _o_:     cider-repl-set-ns                            %(cider-buddy-shortcut-str 'cider-repl-set-ns)
 _p_:     cider-rotate-default-connection              %(cider-buddy-shortcut-str 'cider-rotate-default-connection)
 _q_:     cider-selector                               %(cider-buddy-shortcut-str 'cider-selector)
 _r_:     cider-switch-to-repl-buffer                  %(cider-buddy-shortcut-str 'cider-switch-to-repl-buffer)
 _s_:     cider-test-commands-map                      %(cider-buddy-shortcut-str 'cider-test-commands-map)
 _t_:     cider-toggle-trace-ns                        %(cider-buddy-shortcut-str 'cider-toggle-trace-ns)
 _u_:     cider-toggle-trace-var                       %(cider-buddy-shortcut-str 'cider-toggle-trace-var)
 _v_:     cider-undef                                  %(cider-buddy-shortcut-str 'cider-undef)"
      ("a"  cider-display-connection-info)
      ("b"  cider-find-and-clear-repl-output)
      ("c"  cider-find-ns)
      ("d"  cider-find-resource)
      ("e"  cider-find-var)
      ("f"  cider-insert-last-sexp-in-repl)
      ("g"  cider-inspect)
      ("h"  cider-load-buffer-and-switch-to-repl-buffer)
      ("i"  cider-load-file)
      ("k"  cider-macroexpand-all)
      ("l"  cider-pop-back)
      ("m"  cider-quit)
      ("n"  cider-refresh)
      ("o"  cider-repl-set-ns)
      ("p"  cider-rotate-default-connection)
      ("q"  cider-selector)
      ("r"  cider-switch-to-repl-buffer)
      ("s"  cider-test-commands-map)
      ("t"  cider-toggle-trace-ns)
      ("u"  cider-toggle-trace-var)
      ("v"  cider-undef)
      )

    (global-set-key (kbd "C-c b e") 'hydra-cider-buddy-eval/body)
    (global-set-key (kbd "C-c b d") 'hydra-cider-buddy-doc/body)
    (global-set-key (kbd "C-c b t") 'hydra-cider-buddy-test/body)
    (global-set-key (kbd "C-c b o") 'hydra-cider-buddy-other/body)))

(provide 'cider-buddy)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; cider-buddy.el ends here
