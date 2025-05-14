(deftemplate rect
   (slot height)
   (slot width))

(defrule  perimeter
   ?r <- (rect (height ?h) (width ?w))
   =>
   (bind ?perimeter (* 2 (+ ?h ?w)))
   (printout t "Perimeter: " ?perimeter crlf))


(deffacts rectangles
   (rect (height 5) (width 3))
   (rect (height 10) (width 4)))

(reset)
(run)
Perimeter: 16
Perimeter: 28

