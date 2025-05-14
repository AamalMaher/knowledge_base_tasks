(deftemplate animal
   (slot type))

(defrule check_animal
   (animal (type ?t&duck|turtle))
   =>
   (printout t "Animal type: " ?t crlf))

(deffacts animals
   (animal (type duck))
   (animal (type turtle))
   (animal (type cat)))

(reset)
(run)
Animal type: duck
Animal type: turtle



