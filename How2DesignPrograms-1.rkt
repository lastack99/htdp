;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname How2DesignPrograms-1) (read-case-sensitive #t) (teachpacks ((lib "convert.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "convert.rkt" "teachpack" "htdp")) #f)))
;; How to Design Programs - 2003-09-26 (first book)
;; JMCausey | lastack99@gmail.com | 2016-01
;;
;; Problems 2.1.1 Operations for squaring a number, computing the sine of an
;; angle, and determin the maximum of two numbers.

;(sqr 13) ; Squares the square root of 13
;(sin 1.2) ; Computes the sine of an angle
;(max -3 4/5) ; Determine the maximum of two numbers

;; Problems 2.1.2 examples of sqrt and tan
;(sqrt 4) ; Determines the square-root of 4
;(sqrt 2)
;(sqrt -1)
;(tan .75) ; Determines the tangent of angle .75
;(tan pi) ; Determines the tangent of angle pi

;; Problems 2.2
;; A disk of radius r has the approximate area (* 3.14 (sqrt r))
;; (* 3.14 (sqr 5)) ; 78.5 - my first solution, not wrong - just not good

(define (area-of-disk r)
  (* 3.14 (* r r)))

;(area-of-disk 5) "should be" 78.555
;; = (* 3.14 (* 5 5))
;; = (* 3.14 25)
;; = 78.555

;; Compute the area of a ring: the outer and inner radii of a doughnut
(define (area-of-ring outer inner)
  (- (area-of-disk outer)
     (area-of-disk inner)))
;(area-of-ring 5 3)
;;50.24
;;   (area-of-ring 5 3)
;; = (- (area-of-disk 5)
;;      (area-of-disk 3))
;;
;;   (- (* 3.14 (* 5 5))
;;      (* 3.14 (* 3 3)))
;; = 50.24

;; Problems 2.2.1
;; Fahrenheit->Celsius which consumes a temp in Fahr and produces
;; the Celsius equivalent. Teachpack convert.ss provides the three
;; functions (gui,repl,file) below.


(define (fahrenheit->celsius t)
  (* 5/9 (- t 32)))

;(convert-gui fahrenheit->celsius)
;;(convert-repl fahrenheit->celsius)
;;(convert-file fahrenheit->celsius)

;; Problems 2.2.2 - Convert USD->Euro
;; xe.com ,USD represents 93% of Euro (1 euro = 1.08 USD | 1 USD = .93euro)

(define (dollar->euro d)
  (* 1.08 d))

;; Problem 2.2.3
(define (area-of-triangle b h)
  (/ (* b h) 2))

;(area-of-triangle 7 2.5) "should be" 8.75

;; 2.2.4 Define convert3. It consumes 3 digits
;; starting with the least significant digit,
;; followed by the next most significant one, and so on.
;; Unable to identify the precise nature/name of such a function
;; 
(define (convert3 ones tens hundreds)
  (+ ones (* 10 tens) (* 100 hundreds)))

;(convert3 1 2 3) "should be" 321

;; Problems 2.2.5

;(define (f n)
;  (+ (/ n 3) 2))
;
;;(f 2) "should equal" 2.66
;;(f 5) "should equal" 3.66
;;(f 9) "should equal" 5
;
;;; 1
;(define (f1 n)
;  (+ (* n n) 10))
;
;;(f1 2) "should equal" 14
;;(f1 9) "should equal" 91
;
;;; 2
;(define (f2 n)
;  (+ (* 1/2 n n) 20))
;
;;(f2 2) "should equal" 22
;;(f2 9) "should equal" 60.5
; 
;;; 3
;(define (f3 n)
;  (- 2 (/ 1 n)))
;
;;(f3 2) "should equal" 1.5
;;(f3 9) "should equal" 1.8

;; Problem 2.3.0 Word Problems
;(define (wage h)
;  (* 12 h))
;(define (tax w)
;  (* w .15))
;(define (netpay h)
;  (- (wage h)
;     (tax (wage h))))
;
;(wage 40) "should be" 480
;(tax 480) "should be" 72
;(netpay 40) "should be" 408

;; Problem 2.3.2 compute the value of a bag of coins. It consumes
;; four numbers: the number of pennies, nickles, dimes, and quarters in bag.
;; It shall produce the amount of money in the bag.
;(define (sum-coins p n d q)
;  (+ p (* 5 n)(* 10 d)(* 25 q)))
;;;
;(sum-coins 50 10 5 2) "should be" 200
;;;
;(sum-coins 1 0 0 0)
;(sum-coins 0 1 0 0)
;(sum-coins 0 0 1 0)
;(sum-coins 0 0 0 1)
;(sum-coins 1 1 1 1)

;; Problem 2.3.3 total profit at the movie theater
;(define (total-profit a)
;  (- (* 5 a)(+ 20 (* .50 a))))
;;
;(total-profit 35) "should be" 137.5

;; Errors 2.4.1


;; Design 2.4
