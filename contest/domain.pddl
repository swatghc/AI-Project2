﻿(define (domain domain_pacman)

	
	(:requirements :typing :conditional-effects )

	(:types location)

	(:predicates      
	            (pacmanAt ?p - location) ;; true iff Pacman at position p
				(ghostAt ?p - location)	;; true iff opposite ghost at position p
				(foodAt ?p - location)	;; true iff food at position p
				(capsuleAt ?p - location)	;; true iff power capsule at position p
				(connected ?p1 ?p2);; true iff position1 and position2 are connected
				(powered ?)	;; true iff the pacman has been powered
	)

	(:action move
	            :parameters (?p1 ?p2 - location) ;;move from p1 to p2
				:precondition (and   
				                		(pacmanAt ?p1)
								(connected  ?p1 ?p2)
						   	)
				:effect (and      
				            (pacmanAt ?p2)
							(not (pacmanAt ?p1))
							(not (foodAt ?p2))
							(when (capsuleAt ?p2) (powered))
							(not (capsuleAt ?p2))
							(when (powered) (not (ghostAt ?p2)))
					   )					
	)

)