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
  (with-eval-after-load 'hydra
    (defhydra hydra-cider-buddy-eval (:hint nil :color blue)
      "
CIDER Buddy: Evaluation Commands Menu
----------------------------------------------
_a_: cider-eval-buffer                 C-c c e b
_b_: cider-eval-defun-at-point         C-c C-c
_c_: cider-eval-defun-to-comment       C-c M-;
_d_: cider-eval-file
_e_: cider-eval-last-sexp              C-c C-e
_f_: cider-eval-last-sexp-and-replace  C-c C-w
_g_: cider-eval-last-sexp-to-repl      C-c M-e
_h_: cider-eval-ns-form                C-c C-n
_i_: cider-eval-region                 C-c C-r
_j_: cider-interrupt-eval              C-c C-b
_k_: cider-pprint-eval-defun-at-point  C-c C-f
_l_: cider-pprint-eval-last-sexp       C-c C-p
_m_: cider-read-and-eval               C-c M-:"
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
------------------------------------------
_a_: cider-apropos               C-c C-d a
_b_: cider-apropos-documentation C-c C-d f
_c_: cider-doc                   C-c C-d C-d
_g_: cider-doc-map               C-c C-d
_e_: cider-grimoire              C-c C-d C-r
_a_: cider-grimoire-web          C-c C-d C-h
_f_: cider-javadoc               C-c C-d C-j"
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
------------------------------------------
_a_: cider-test-commands-map       C-c C-t
_b_: cider-test-rerun-tests        C-c , r
_c_: cider-test-run-loaded-tests   C-c , l
_d_: cider-test-run-ns-tests       C-c , n
_e_: cider-test-run-project-tests  C-c , p
_f_: cider-test-run-test           C-c , t
_g_: cider-test-show-report        C-c , b"
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
---------------------------------------------------------
_a_: cider-display-connection-info                  C-c M-d
_b_: cider-find-and-clear-repl-output               C-c C-o
_c_: cider-find-ns                                  C-c C-.
_d_: cider-find-resource                            C-c M-.
_e_: cider-find-var
_f_: cider-insert-last-sexp-in-repl                 C-c M-p
_g_: cider-inspect                                  C-c M-i
_h_: cider-load-buffer-and-switch-to-repl-buffer    C-c M-z
_i_: cider-load-file                                C-l
_k_: cider-macroexpand-all                          C-c M-m
_l_: cider-pop-back                                 M-,
_m_: cider-quit                                     C-c C-q
_n_: cider-refresh                                  C-c C-x
_o_: cider-repl-set-ns                              C-c M-n
_p_: cider-rotate-default-connection                C-c M-r
_q_: cider-selector                                 C-c M-s
_r_: cider-switch-to-repl-buffer                    C-c C-z
_s_: cider-test-commands-map                        C-c C-t C-c
_t_: cider-toggle-trace-ns                          C-c M-t n
_u_: cider-toggle-trace-var                         C-c M-t v
_v_: cider-undef                                    C-c C-u"
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
