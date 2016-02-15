;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
;; How to Design Programs - 2003-09-26 (first book)
;; JMCausey | lastack99@gmail.com | 2016-01
;;
;; Problems 2.2.1
;; Fahrenheit->Celsius which consumes a temp in Fahr and produces
;; the Celsius equivalent. Teachpack convert.ss provides the three
;; functions (gui,repl,file) below.


(define (fahrenheit->celsius t)
  (* 5/9 (- t 32)))

(convert-gui fahrenheit->celsius)
;;(convert-repl fahrenheit->celsius)
;;(convert-file fahrenheit->celsius)
