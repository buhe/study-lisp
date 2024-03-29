(defpackage :hello
    (:export :start)
    (:use :cl :cl-tui))

(in-package :hello)

(defun main-render (&key frame h w)
  (put-text frame 1 1 "Try bugu resizing the window and press space when done...")
  (put-text frame 2 2 "Window size: ~Ax~A" h w)
  (put-char frame 0 0 #\+)
  (put-char frame 0 (1- w) #\+)
  (put-char frame (1- h) 0 #\+)
  (put-char frame (1- h) (- w 2) #\+))

;; This call defines a frame and paces it on :root frame.
;; There are several types of frames. `simple-frame` calls a
;; function to render its contents each time it's refreshed.
;; If no function is given then it does nothing on refresh.
(define-frame callback (simple-frame :render 'main-render) :on :root)

(defun start ()
  (with-screen ()
    (refresh)
    (loop :until (eql #\Space (read-key)))))