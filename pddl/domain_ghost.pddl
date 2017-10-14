﻿;;Scenario&Assumption: In each team, there is a offensive pacman that concentrates on eating dots, and a defensive ghost that never across the middle line. When powered, the pacman will eat the ghost it meet, but not purposely.

(define (domain domain_ghost)
	
	(:requirements :typing :conditional-effects)

	(:types location number)

	(:predicates      (pacmanAt ?p - location) ;; true iff opposite pacman at position p
				(ghostAt ?p - location)	;; true iff ghost at position p
				(connected ?p1 ?p2 ) ;; true iff p1osition1 and position2 are connected
				(scared ?)	;; true iff the pacman has been powered
				(successor ?n1 ?n2 -number) ;; timer
	)

	(:action move :parameters (?p1 ?p2 -location) ;;move from p1 to p2
				:precondition (and   (ghostAt ?p1)
								     (connected ?p1 ?p2)
							  )
				:effect (and      (ghostAt ?p2)
							      (not (ghostAt ?p1))
							      (when (and (pacmanAt ?p2)
							                 (not (scared))
							            )
									    (not (pacmanAt ?p2))
								  )
					    )					
	)

)