;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname 230.netpay) (read-case-sensitive #t) (teachpacks ((lib "convert.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "convert.rkt" "teachpack" "htdp")) #f)))
;; How to Design Programs - 2003-09-26 (first book)
;; JMCausey | lastack99@gmail.com | 2016-01
;;
;; Problem 2.3.0   Word Problems
(define (wage h)
  (* 12 h))
(define (tax w)
  (* w .15))
(define (netpay h)
  (- (wage h)
     (tax (wage h))))

(wage 40) "should be" 480
(tax 480) "should be" 72
(netpay 40) "should be" 408