;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname 233.total-profit) (read-case-sensitive #t) (teachpacks ((lib "convert.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "convert.rkt" "teachpack" "htdp")) #f)))
;; How to Design Programs - 2003-09-26 (first book)
;; JMCausey | lastack99@gmail.com | 2016-01
;;
;; Problem 2.3.3 total profit at the movie theater
(define (total-profit a)
  (- (* 5 a)(+ 20 (* .50 a))))
;
(total-profit 35) "should be" 137.5
