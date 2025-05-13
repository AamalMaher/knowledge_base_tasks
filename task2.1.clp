(deftemplate MAIN::animal
   (slot type))

(defrule MAIN::check_animal
   (animal (type ?t&duck|turtle))
   =>
   (printout t "Animal type: " ?t crlf))

(deffacts MAIN::animals
   (animal (type duck))
   (animal (type turtle))
   (animal (type cat)))



