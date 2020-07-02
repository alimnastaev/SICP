;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |Ex. 1.4|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
#|
Exercise 1.4. Observe that our model of evaluation allows for combinations whose operators are compound expressions.
Use this observation to describe the behavior of the following procedure:

(define (mystery a b)
  ((if (> b 0) + -) a b))


 SICP book, page 19 - IF statement explanation:

 (if <predicate> <consequent> <alternative>)

 or

 if predicate is true -> <consequent>
 if predicate is false -> <alternative>

Basically, IF statement relies on b value (either positive or negative integer) and might be written:
(if (> b 0) (+ a b) (- a b))
|#
