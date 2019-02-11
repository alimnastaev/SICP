;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |SICP ex.1.3|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;setup the square procedure:
(define (square x) (* x x))

;using this, write a procedure to return the sum
;of the squares of two given numbers
(define (sum-squares x y) (+ (square x) (square y)))

;the procedure with COND statement(given three numbers,
;x, y and z, there are three possibilities)
(define (sum-squares-largest x y z)
  (cond ( (and (< x y) (< x z) ) (sum-squares y z) )
        ( (and (< y x) (< y z) ) (sum-squares x z) )
        (else (sum-squares y x))))

(sum-squares-largest 10 9 8)