(defpackage :hello
    (:export :hello1)
    (:use :cl))

(in-package :hello)

(defun hello1 (name)
    (format t "Hello, ~A~%" name))