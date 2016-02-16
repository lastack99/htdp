;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname 232.sum-coins) (read-case-sensitive #t) (teachpacks ((lib "convert.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "convert.rkt" "teachpack" "htdp")) #f)))
;; How to Design Programs - 2003-09-26 (first book)
;; JMCausey | lastack99@gmail.com | 2016-01
;;
;; Problem 2.3.2 compute the value of a bag of coins. It consumes
;; four numbers: the number of pennies, nickles, dimes, and quarters in bag.
;; It shall produce the amount of money in the bag.
(define (sum-coins p n d q)
  (+ p (* 5 n)(* 10 d)(* 25 q)))
;;
(sum-coins 50 10 5 2) "should be" 200
;;
(sum-coins 1 0 0 0)
(sum-coins 0 1 0 0)
(sum-coins 0 0 1 0)
(sum-coins 0 0 0 1)
(sum-coins 1 1 1 1)
