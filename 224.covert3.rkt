;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname 224.covert3) (read-case-sensitive #t) (teachpacks ((lib "convert.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "convert.rkt" "teachpack" "htdp")) #f)))
;; How to Design Programs - 2003-09-26 (first book)
;; JMCausey | lastack99@gmail.com | 2016-01
;;
;; 2.2.4 Define convert3. It consumes 3 digits
;; starting with the least significant digit,
;; followed by the next most significant one, and so on.
;; Unable to identify the precise nature/name of such a function
;; 
(define (convert3 ones tens hundreds)
  (+ ones (* 10 tens) (* 100 hundreds)))
(convert3 1 2 3) "should be" 321