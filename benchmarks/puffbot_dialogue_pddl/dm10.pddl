(define
	(domain puffbot_dialog)
	(:requirements :strips :typing :non-deterministic)
	(:types Slot RelevantInformation UserStatus)
	(:predicates 
		(hasRelevantInformation ?x - Slot ?v - RelevantInformation)
		(has_value ?s - Slot)
		(GOAL_ACHIEVED)
		(initiate)
		(fallback_intent)
		(unexpected_intent_received)
		(is_most_useful ?s - Slot)
		(search_most_useful)
		(make_request)
		(possible_classification_us ?us - UserStatus)
	)
	(:action enable_fallback_question
		:parameters ()
		:precondition
			(and
				(fallback_intent)
			)
		:effect
			(GOAL_ACHIEVED)
	)
	(:action enable_fallback_question2
		:parameters ()
		:precondition
			(and
				(fallback_intent)
				(not
					(make_request)
				)
			)
		:effect
			(GOAL_ACHIEVED)
	)
	(:action feedback_unexpected_intent
		:parameters ()
		:precondition
			(and
				(not
					(fallback_intent)
				)
				(unexpected_intent_received)
				(not
					(initiate)
				)
			)
		:effect
			(and
				(not
					(unexpected_intent_received)
				)
				(search_most_useful)
			)
	)
	(:action service_deadend
		:parameters (?s - Slot)
		:precondition
			(and
				(is_most_useful ?s)
				(has_value ?s)
				(not
					(fallback_intent)
				)
				(not
					(unexpected_intent_received)
				)
			)
		:effect
			(and
				(not
					(is_most_useful ?s)
				)
				(search_most_useful)
			)
	)
	(:action report_class1
		:parameters ()
		:precondition
			(and
				(possible_classification_us class1)
				(not
					(initiate)
				)
				(not
					(make_request)
				)
				(not
					(fallback_intent)
				)
				(not
					(unexpected_intent_received)
				)
			)
		:effect
			(and
				(oneof
					(and
						(not
							(GOAL_ACHIEVED)
						)
						(not
							(possible_classification_us class1)
						)
						(search_most_useful)
					)
					(GOAL_ACHIEVED)
				)
			)
	)
	(:action report_class2
		:parameters ()
		:precondition
			(and
				(possible_classification_us class2)
				(not
					(initiate)
				)
				(not
					(make_request)
				)
				(not
					(fallback_intent)
				)
				(not
					(unexpected_intent_received)
				)
			)
		:effect
			(and
				(oneof
					(and
						(not
							(GOAL_ACHIEVED)
						)
						(not
							(possible_classification_us class2)
						)
						(search_most_useful)
					)
					(GOAL_ACHIEVED)
				)
			)
	)
	(:action report_class3
		:parameters ()
		:precondition
			(and
				(possible_classification_us class3)
				(not
					(initiate)
				)
				(not
					(make_request)
				)
				(not
					(fallback_intent)
				)
				(not
					(unexpected_intent_received)
				)
			)
		:effect
			(and
				(oneof
					(and
						(not
							(GOAL_ACHIEVED)
						)
						(not
							(possible_classification_us class3)
						)
						(search_most_useful)
					)
					(GOAL_ACHIEVED)
				)
			)
	)
	(:action request_slot1
		:parameters ()
		:precondition
			(and
				(make_request)
				(is_most_useful slot1)
				(not
					(has_value slot1)
				)
				(not
					(search_most_useful)
				)
				(not
					(initiate)
				)
				(not
					(fallback_intent)
				)
				(not
					(unexpected_intent_received)
				)
			)
		:effect
				(and
					(has_value slot1)
					(not
						(is_most_useful slot1)
					)
					(not
						(make_request)
					)
					(possible_classification_us class1)
				)			
	)
	
	(:action request_slot2
		:parameters ()
		:precondition
			(and
				(make_request)
				(is_most_useful slot2)
				(not
					(has_value slot2)
				)
				(not
					(search_most_useful)
				)
				(not
					(initiate)
				)
				(not
					(fallback_intent)
				)
				(not
					(unexpected_intent_received)
				)
			)
		:effect
				(and
					(has_value slot2)
					(not
						(is_most_useful slot2)
					)
					(not
						(make_request)
					)
					(possible_classification_us class1)
				)
	)
	(:action request_slot3
		:parameters ()
		:precondition
			(and
				(make_request)
				(is_most_useful slot3)
				(not
					(has_value slot3)
				)
				(not
					(search_most_useful)
				)
				(not
					(initiate)
				)
				(not
					(fallback_intent)
				)
				(not
					(unexpected_intent_received)
				)
			)
		:effect
				(and
					(has_value slot3)
					(not
						(is_most_useful slot3)
					)
					(not
						(make_request)
					)
					(possible_classification_us class1)
				)
	)
	
	(:action request_slot4
		:parameters ()
		:precondition
			(and
				(make_request)
				(is_most_useful slot4)
				(not
					(has_value slot4)
				)
				(not
					(search_most_useful)
				)
				(not
					(initiate)
				)
				(not
					(fallback_intent)
				)
				(not
					(unexpected_intent_received)
				)
			)
		:effect
				(and
					(has_value slot4)
					(not
						(is_most_useful slot4)
					)
					(not
						(make_request)
					)
					(possible_classification_us class2)
				)
	)

	(:action request_slot5
		:parameters ()
		:precondition
			(and
				(make_request)
				(is_most_useful slot5)
				(not
					(has_value slot5)
				)
				(not
					(search_most_useful)
				)
				(not
					(initiate)
				)
				(not
					(fallback_intent)
				)
				(not
					(unexpected_intent_received)
				)
			)
		:effect
				(and
					(has_value slot5)
					(not
						(is_most_useful slot5)
					)
					(not
						(make_request)
					)
					(possible_classification_us class2)
				)
	)
	
	(:action request_slot6
		:parameters ()
		:precondition
			(and
				(make_request)
				(is_most_useful slot6)
				(not
					(has_value slot6)
				)
				(not
					(search_most_useful)
				)
				(not
					(initiate)
				)
				(not
					(fallback_intent)
				)
				(not
					(unexpected_intent_received)
				)
			)
		:effect
				(and
					(has_value slot6)
					(not
						(is_most_useful slot6)
					)
					(not
						(make_request)
					)
					(possible_classification_us class2)
				)
	)
	
	(:action request_slot7
		:parameters ()
		:precondition
			(and
				(make_request)
				(is_most_useful slot7)
				(not
					(has_value slot7)
				)
				(not
					(search_most_useful)
				)
				(not
					(initiate)
				)
				(not
					(fallback_intent)
				)
				(not
					(unexpected_intent_received)
				)
			)
		:effect
				(and
					(has_value slot7)
					(not
						(is_most_useful slot7)
					)
					(not
						(make_request)
					)
					(possible_classification_us class3)
				)
	)
	
	(:action request_slot8
		:parameters ()
		:precondition
			(and
				(make_request)
				(is_most_useful slot8)
				(not
					(has_value slot8)
				)
				(not
					(search_most_useful)
				)
				(not
					(initiate)
				)
				(not
					(fallback_intent)
				)
				(not
					(unexpected_intent_received)
				)
			)
		:effect
				(and
					(has_value slot8)
					(not
						(is_most_useful slot8)
					)
					(not
						(make_request)
					)
					(possible_classification_us class3)
				)
	)
	(:action request_slot9
		:parameters ()
		:precondition
			(and
				(make_request)
				(is_most_useful slot9)
				(not
					(has_value slot9)
				)
				(not
					(search_most_useful)
				)
				(not
					(initiate)
				)
				(not
					(fallback_intent)
				)
				(not
					(unexpected_intent_received)
				)
			)
		:effect
				(and
					(has_value slot9)
					(not
						(is_most_useful slot9)
					)
					(not
						(make_request)
					)
					(possible_classification_us class3)
				)
	)
	
	(:action request_slot10
		:parameters ()
		:precondition
			(and
				(make_request)
				(is_most_useful slot10)
				(not
					(has_value slot10)
				)
				(not
					(search_most_useful)
				)
				(not
					(initiate)
				)
				(not
					(fallback_intent)
				)
				(not
					(unexpected_intent_received)
				)
			)
		:effect
				(and
					(has_value slot10)
					(not
						(is_most_useful slot10)
					)
					(not
						(make_request)
					)
					(possible_classification_us class3)
				)
	)
	(:action report_default
		:parameters ()
		:precondition
			(and
				(has_value slot1)
				(not
					(is_most_useful slot1)
				)
				(has_value slot2)
				(not
					(is_most_useful slot2)
				)
				(has_value slot3)
				(not
					(is_most_useful slot3)
				)
				(has_value slot4)
				(not
					(is_most_useful slot4)
				)
				(has_value slot5)
				(not
					(is_most_useful slot5)
				)
				(has_value slot6)
				(not
					(is_most_useful slot6)
				)
				(has_value slot7)
				(not
					(is_most_useful slot7)
				)
				(has_value slot8)
				(not
					(is_most_useful slot8)
				)
				(has_value slot9)
				(not
					(is_most_useful slot9)
				)
				(has_value slot10)
				(not
					(is_most_useful slot10)
				)
				(not
					(possible_classification_us class1)
				)
				(not
					(possible_classification_us class2)
				)
				(not
					(possible_classification_us class3)
				)
			)
		:effect
			(GOAL_ACHIEVED)
	)
	(:action report_default_negation
		:parameters ()
		:precondition
			(and
				(hasRelevantInformation slot1 NoValue)
				(hasRelevantInformation slot2 NoValue)
				(hasRelevantInformation slot3 NoValue)
				(hasRelevantInformation slot4 NoValue)
				(hasRelevantInformation slot5 NoValue)
				(hasRelevantInformation slot6 NoValue)
				(hasRelevantInformation slot7 NoValue)
				(hasRelevantInformation slot8 NoValue)
				(hasRelevantInformation slot9 NoValue)
				(hasRelevantInformation slot10 NoValue)
				(not
					(possible_classification_us class1)
				)
				(not
					(possible_classification_us class2)
				)
				(not
					(possible_classification_us class3)
				)
			)
		:effect
			(GOAL_ACHIEVED)
	)
	(:action initiate
		:parameters ()
		:precondition
			(and
				(initiate)
				(not
					(has_value slot1)
				)
				(not
					(has_value slot2)
				)
				(not
					(has_value slot3)
				)
				(not
					(has_value slot4)
				)
				(not
					(has_value slot5)
				)
				(not
					(has_value slot6)
				)
				(not
					(has_value slot7)
				)
				(not
					(has_value slot8)
				)
				(not
					(has_value slot9)
				)
				(not
					(has_value slot10)
				)
			)
		:effect
			(GOAL_ACHIEVED)
	)
	(:action search_most_useful_slot
		:parameters ()
		:precondition
			(and
				(search_most_useful)
				(not
					(initiate)
				)
				(not
					(fallback_intent)
				)
				(not
					(unexpected_intent_received)
				)
				(not
					(possible_classification_us class1)
				)
				(not
					(possible_classification_us class2)
				)
				(not
					(possible_classification_us class3)
				)
			)
		:effect
			(and
				(not
					(search_most_useful)
				)
				(make_request)
				(oneof
					(is_most_useful slot1)
					(is_most_useful slot2)
					(is_most_useful slot3)
					(is_most_useful slot4)
					(is_most_useful slot5)
					(is_most_useful slot6)
					(is_most_useful slot7)
					(is_most_useful slot8)
					(is_most_useful slot9)
					(is_most_useful slot10)
				)
			)
	)
)
