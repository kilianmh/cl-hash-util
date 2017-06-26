(defpackage :cl-hash-util-test
  (:use :cl :fiveam :cl-hash-util))

(in-package :cl-hash-util-test)

(eval-when (:compile-toplevel :load-toplevel :execute)
  (def-suite cl-hash-util-test))

(in-suite cl-hash-util-test)

(defparameter ht (hash ('a (hash ('b 3)))))

(test hget
  (is (= 3 (hget ht '(a b))))
  (is-false (hu:hash-get ht '(c d)))
  (signals type-error (setf (hget ht '(b c)) t))
  (is (= 4 (setf (hash-get ht '(a c)) 4)))
  (is (= 4 (hget ht '(a c)))))
