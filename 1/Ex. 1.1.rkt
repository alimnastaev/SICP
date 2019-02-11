;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |Exercise 1|) (read-case-sensitive #t) (teachpacks ((lib "universe.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "universe.rkt" "teachpack" "2htdp")) #f)))
Exercise 1.1:
Below is a sequence of expressions.
What is the result printed by the interpreter in response to each expression?
Assume that the sequence is to be evaluated in the order in which it is presented.

10 ;; -> 10
(+ 5 3 4) ;; -> 12
(- 9 1) ;; -> 8
(/ 6 2) ;; -> 3
(+ (* 2 4) (- 4 6)) ;; -> 6
(define a 3) ;; -> a
(define b (+ a 1)) ;; -> b
(+ a b (* a b)) ;; -> 19
(= a b)
;; -> #false
(if (and (> b a) (< b (* a b)))
    b
    a)
;; -> b (or 4)
(cond ((= a 4) 6)
      ((= b 4) (+ 6 7 a))
      (else 25))
;; -> 16
(+ 2 (if (> b a)
         b
         a))
;; -> 6
(* (cond ((> a b) a)
         ((< a b) b)
         (else -1))
   (+ a 1))
;; -> 16