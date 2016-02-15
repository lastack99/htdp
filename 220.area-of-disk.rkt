;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
;; JMCausey | lastack99@gmail.com | 2016-01
;;
;; Problems 2.2
;; A disk of radius r has the approximate area (* 3.14 (sqrt r))
;; (* 3.14 (sqr 5)) ; 78.5 - my first solution, not wrong - just not good

(define (area-of-disk r)
  (* 3.14 (* r r)))


(area-of-disk 5) "should be" 78.555
;; = (* 3.14 (* 5 5))
;; = (* 3.14 25)
;; = 78.555

;; Compute the area of a ring: the outer and inner radii of a doughnut
(define (area-of-ring outer inner)
  (- (area-of-disk outer)
     (area-of-disk inner)))
(area-of-ring 5 3)
;;50.24
;;   (area-of-ring 5 3)
;; = (- (area-of-disk 5)
;;      (area-of-disk 3))
;;
;;   (- (* 3.14 (* 5 5))
;;      (* 3.14 (* 3 3)))
;; = 50.24

