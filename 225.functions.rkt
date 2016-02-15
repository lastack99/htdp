;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname 225.covert3) (read-case-sensitive #t) (teachpacks ((lib "convert.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "convert.rkt" "teachpack" "htdp")) #f)))
;; How to Design Programs - 2003-09-26 (first book)
;; JMCausey | lastack99@gmail.com | 2016-01
;;
;; 2.2.5

(define (f n)
  (+ (/ n 3) 2))

(f 2) "should equal" 2.66
(f 5) "should equal" 3.66
(f 9) "should equal" 5

;; 1
(define (f1 n)
  (+ (* n n) 10))

(f1 2) "should equal" 14
(f1 9) "should equal" 91

;; 2
(define (f2 n)
  (+ (* 1/2 n n) 20))

(f2 2) "should equal" 22
(f2 9) "should equal" 60.5
 
;; 3
(define (f3 n)
  (- 2 (/ 1 n)))

(f3 2) "should equal" 1.5
(f3 9) "should equal" 1.8