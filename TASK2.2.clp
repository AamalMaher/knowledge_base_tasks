(deftemplate MAIN::rect
   (slot height)
   (slot width))

(deffacts MAIN::rectangles
   (rect (height 5) (width 3))
   (rect (height 10) (width 4)))

(defrule MAIN::perimeter
   ?r <- (rect (height ?h) (width ?w))
   =>
   (bind ?perimeter (* 2 (+ ?h ?w)))
   (printout t "Perimeter: " ?perimeter crlf))

