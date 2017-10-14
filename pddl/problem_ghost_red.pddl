;;Scenario&Assumption: The map used is the default map. In each team, there is a offensive pacman that concentrates on eating dots, and a defensive ghost that never across the middle line.  in this problem, the ghost is not scared. Then ghost concentrated on eating opposite pacman.


(define (problem ghost_red)
	(:domain domain_ghost)
	(:objects 
		loc_1_1 
		loc_2_1 
		loc_3_1 
		loc_4_1 
		loc_5_1 
		loc_6_1 
		loc_7_1 
		loc_8_1 
		loc_9_1 
		loc_10_1 
		loc_11_1 
		loc_12_1 
		loc_13_1 
		loc_14_1 
		loc_15_1 
		loc_16_1 
		loc_17_1 
		loc_18_1 
		loc_19_1 
		loc_20_1 
		loc_21_1 
		loc_22_1 
		loc_23_1 
		loc_24_1 
		loc_25_1 
		loc_26_1 
		loc_27_1 
		loc_28_1 
		loc_29_1 
		loc_30_1 
		loc_31_1 
		loc_32_1 
		loc_1_2 
		loc_2_2 
		loc_3_2 
		loc_4_2 
		loc_5_2 
		loc_6_2 
		loc_7_2 
		loc_8_2 
		loc_9_2 
		loc_10_2 
		loc_11_2 
		loc_12_2 
		loc_13_2 
		loc_14_2 
		loc_15_2 
		loc_16_2 
		loc_17_2 
		loc_18_2 
		loc_19_2 
		loc_20_2 
		loc_21_2 
		loc_22_2 
		loc_23_2 
		loc_24_2 
		loc_25_2 
		loc_26_2 
		loc_27_2 
		loc_28_2 
		loc_29_2 
		loc_30_2 
		loc_31_2 
		loc_32_2 
		loc_1_3 
		loc_2_3 
		loc_3_3 
		loc_4_3 
		loc_5_3 
		loc_6_3 
		loc_7_3 
		loc_8_3 
		loc_9_3 
		loc_10_3 
		loc_11_3 
		loc_12_3 
		loc_13_3 
		loc_14_3 
		loc_15_3 
		loc_16_3 
		loc_17_3 
		loc_18_3 
		loc_19_3 
		loc_20_3 
		loc_21_3 
		loc_22_3 
		loc_23_3 
		loc_24_3 
		loc_25_3 
		loc_26_3 
		loc_27_3 
		loc_28_3 
		loc_29_3 
		loc_30_3 
		loc_31_3 
		loc_32_3 
		loc_1_4 
		loc_2_4 
		loc_3_4 
		loc_4_4 
		loc_5_4 
		loc_6_4 
		loc_7_4 
		loc_8_4 
		loc_9_4 
		loc_10_4 
		loc_11_4 
		loc_12_4 
		loc_13_4 
		loc_14_4 
		loc_15_4 
		loc_16_4 
		loc_17_4 
		loc_18_4 
		loc_19_4 
		loc_20_4 
		loc_21_4 
		loc_22_4 
		loc_23_4 
		loc_24_4 
		loc_25_4 
		loc_26_4 
		loc_27_4 
		loc_28_4 
		loc_29_4 
		loc_30_4 
		loc_31_4 
		loc_32_4 
		loc_1_5 
		loc_2_5 
		loc_3_5 
		loc_4_5 
		loc_5_5 
		loc_6_5 
		loc_7_5 
		loc_8_5 
		loc_9_5 
		loc_10_5 
		loc_11_5 
		loc_12_5 
		loc_13_5 
		loc_14_5 
		loc_15_5 
		loc_16_5 
		loc_17_5 
		loc_18_5 
		loc_19_5 
		loc_20_5 
		loc_21_5 
		loc_22_5 
		loc_23_5 
		loc_24_5 
		loc_25_5 
		loc_26_5 
		loc_27_5 
		loc_28_5 
		loc_29_5 
		loc_30_5 
		loc_31_5 
		loc_32_5 
		loc_1_6 
		loc_2_6 
		loc_3_6 
		loc_4_6 
		loc_5_6 
		loc_6_6 
		loc_7_6 
		loc_8_6 
		loc_9_6 
		loc_10_6 
		loc_11_6 
		loc_12_6 
		loc_13_6 
		loc_14_6 
		loc_15_6 
		loc_16_6 
		loc_17_6 
		loc_18_6 
		loc_19_6 
		loc_20_6 
		loc_21_6 
		loc_22_6 
		loc_23_6 
		loc_24_6 
		loc_25_6 
		loc_26_6 
		loc_27_6 
		loc_28_6 
		loc_29_6 
		loc_30_6 
		loc_31_6 
		loc_32_6 
		loc_1_7 
		loc_2_7 
		loc_3_7 
		loc_4_7 
		loc_5_7 
		loc_6_7 
		loc_7_7 
		loc_8_7 
		loc_9_7 
		loc_10_7 
		loc_11_7 
		loc_12_7 
		loc_13_7 
		loc_14_7 
		loc_15_7 
		loc_16_7 
		loc_17_7 
		loc_18_7 
		loc_19_7 
		loc_20_7 
		loc_21_7 
		loc_22_7 
		loc_23_7 
		loc_24_7 
		loc_25_7 
		loc_26_7 
		loc_27_7 
		loc_28_7 
		loc_29_7 
		loc_30_7 
		loc_31_7 
		loc_32_7 
		loc_1_8 
		loc_2_8 
		loc_3_8 
		loc_4_8 
		loc_5_8 
		loc_6_8 
		loc_7_8 
		loc_8_8 
		loc_9_8 
		loc_10_8 
		loc_11_8 
		loc_12_8 
		loc_13_8 
		loc_14_8 
		loc_15_8 
		loc_16_8 
		loc_17_8 
		loc_18_8 
		loc_19_8 
		loc_20_8 
		loc_21_8 
		loc_22_8 
		loc_23_8 
		loc_24_8 
		loc_25_8 
		loc_26_8 
		loc_27_8 
		loc_28_8 
		loc_29_8 
		loc_30_8 
		loc_31_8 
		loc_32_8 
		loc_1_9 
		loc_2_9 
		loc_3_9 
		loc_4_9 
		loc_5_9 
		loc_6_9 
		loc_7_9 
		loc_8_9 
		loc_9_9 
		loc_10_9 
		loc_11_9 
		loc_12_9 
		loc_13_9 
		loc_14_9 
		loc_15_9 
		loc_16_9 
		loc_17_9 
		loc_18_9 
		loc_19_9 
		loc_20_9 
		loc_21_9 
		loc_22_9 
		loc_23_9 
		loc_24_9 
		loc_25_9 
		loc_26_9 
		loc_27_9 
		loc_28_9 
		loc_29_9 
		loc_30_9 
		loc_31_9 
		loc_32_9 
		loc_1_10 
		loc_2_10 
		loc_3_10 
		loc_4_10 
		loc_5_10 
		loc_6_10 
		loc_7_10 
		loc_8_10 
		loc_9_10 
		loc_10_10 
		loc_11_10 
		loc_12_10 
		loc_13_10 
		loc_14_10 
		loc_15_10 
		loc_16_10 
		loc_17_10 
		loc_18_10 
		loc_19_10 
		loc_20_10 
		loc_21_10 
		loc_22_10 
		loc_23_10 
		loc_24_10 
		loc_25_10 
		loc_26_10 
		loc_27_10 
		loc_28_10 
		loc_29_10 
		loc_30_10 
		loc_31_10 
		loc_32_10 
		loc_1_11 
		loc_2_11 
		loc_3_11 
		loc_4_11 
		loc_5_11 
		loc_6_11 
		loc_7_11 
		loc_8_11 
		loc_9_11 
		loc_10_11 
		loc_11_11 
		loc_12_11 
		loc_13_11 
		loc_14_11 
		loc_15_11 
		loc_16_11 
		loc_17_11 
		loc_18_11 
		loc_19_11 
		loc_20_11 
		loc_21_11 
		loc_22_11 
		loc_23_11 
		loc_24_11 
		loc_25_11 
		loc_26_11 
		loc_27_11 
		loc_28_11 
		loc_29_11 
		loc_30_11 
		loc_31_11 
		loc_32_11 
		loc_1_12 
		loc_2_12 
		loc_3_12 
		loc_4_12 
		loc_5_12 
		loc_6_12 
		loc_7_12 
		loc_8_12 
		loc_9_12 
		loc_10_12 
		loc_11_12 
		loc_12_12 
		loc_13_12 
		loc_14_12 
		loc_15_12 
		loc_16_12 
		loc_17_12 
		loc_18_12 
		loc_19_12 
		loc_20_12 
		loc_21_12 
		loc_22_12 
		loc_23_12 
		loc_24_12 
		loc_25_12 
		loc_26_12 
		loc_27_12 
		loc_28_12 
		loc_29_12 
		loc_30_12 
		loc_31_12 
		loc_32_12 
		loc_1_13 
		loc_2_13 
		loc_3_13 
		loc_4_13 
		loc_5_13 
		loc_6_13 
		loc_7_13 
		loc_8_13 
		loc_9_13 
		loc_10_13 
		loc_11_13 
		loc_12_13 
		loc_13_13 
		loc_14_13 
		loc_15_13 
		loc_16_13 
		loc_17_13 
		loc_18_13 
		loc_19_13 
		loc_20_13 
		loc_21_13 
		loc_22_13 
		loc_23_13 
		loc_24_13 
		loc_25_13 
		loc_26_13 
		loc_27_13 
		loc_28_13 
		loc_29_13 
		loc_30_13 
		loc_31_13 
		loc_32_13 
		loc_1_14 
		loc_2_14 
		loc_3_14 
		loc_4_14 
		loc_5_14 
		loc_6_14 
		loc_7_14 
		loc_8_14 
		loc_9_14 
		loc_10_14 
		loc_11_14 
		loc_12_14 
		loc_13_14 
		loc_14_14 
		loc_15_14 
		loc_16_14 
		loc_17_14 
		loc_18_14 
		loc_19_14 
		loc_20_14 
		loc_21_14 
		loc_22_14 
		loc_23_14 
		loc_24_14 
		loc_25_14 
		loc_26_14 
		loc_27_14 
		loc_28_14 
		loc_29_14 
		loc_30_14 
		loc_31_14 
		loc_32_14 
		loc_1_15 
		loc_2_15 
		loc_3_15 
		loc_4_15 
		loc_5_15 
		loc_6_15 
		loc_7_15 
		loc_8_15 
		loc_9_15 
		loc_10_15 
		loc_11_15 
		loc_12_15 
		loc_13_15 
		loc_14_15 
		loc_15_15 
		loc_16_15 
		loc_17_15 
		loc_18_15 
		loc_19_15 
		loc_20_15 
		loc_21_15 
		loc_22_15 
		loc_23_15 
		loc_24_15 
		loc_25_15 
		loc_26_15 
		loc_27_15 
		loc_28_15 
		loc_29_15 
		loc_30_15 
		loc_31_15 
		loc_32_15 
		loc_1_16 
		loc_2_16 
		loc_3_16 
		loc_4_16 
		loc_5_16 
		loc_6_16 
		loc_7_16 
		loc_8_16 
		loc_9_16 
		loc_10_16 
		loc_11_16 
		loc_12_16 
		loc_13_16 
		loc_14_16 
		loc_15_16 
		loc_16_16 
		loc_17_16 
		loc_18_16 
		loc_19_16 
		loc_20_16 
		loc_21_16 
		loc_22_16 
		loc_23_16 
		loc_24_16 
		loc_25_16 
		loc_26_16 
		loc_27_16 
		loc_28_16 
		loc_29_16 
		loc_30_16 
		loc_31_16 
		loc_32_16 
	    - location
	)
	(:init
		(connected loc_2_2 loc_2_3)
		(connected loc_2_3 loc_2_2)
		(connected loc_2_3 loc_2_4)
		(connected loc_2_4 loc_2_3)
		(connected loc_2_4 loc_2_5)
		(connected loc_2_5 loc_2_4)
		(connected loc_2_5 loc_2_6)
		(connected loc_2_6 loc_2_5)
		(connected loc_2_6 loc_2_7)
		(connected loc_2_7 loc_2_6)
		(connected loc_2_7 loc_2_8)
		(connected loc_2_8 loc_2_7)
		(connected loc_2_8 loc_2_9)
		(connected loc_2_9 loc_2_8)
		(connected loc_2_9 loc_2_10)
		(connected loc_2_10 loc_2_9)
		(connected loc_2_10 loc_2_11)
		(connected loc_2_11 loc_2_10)
		(connected loc_2_11 loc_2_12)
		(connected loc_2_12 loc_2_11)
		(connected loc_2_12 loc_2_13)
		(connected loc_2_13 loc_2_12)
		(connected loc_2_13 loc_2_14)
		(connected loc_2_14 loc_2_13)
		(connected loc_2_14 loc_2_15)
		(connected loc_2_15 loc_2_14)
		(connected loc_4_2 loc_4_3)
		(connected loc_4_3 loc_4_2)
		(connected loc_4_3 loc_4_4)
		(connected loc_4_4 loc_4_3)
		(connected loc_4_4 loc_4_5)
		(connected loc_4_5 loc_4_4)
		(connected loc_4_5 loc_4_6)
		(connected loc_4_6 loc_4_5)
		(connected loc_4_10 loc_4_11)
		(connected loc_4_11 loc_4_10)
		(connected loc_4_11 loc_4_12)
		(connected loc_4_12 loc_4_11)
		(connected loc_4_12 loc_4_13)
		(connected loc_4_13 loc_4_12)
		(connected loc_4_13 loc_4_14)
		(connected loc_4_14 loc_4_13)
		(connected loc_4_14 loc_4_15)
		(connected loc_4_15 loc_4_14)
		(connected loc_5_6 loc_5_7)
		(connected loc_5_7 loc_5_6)
		(connected loc_5_7 loc_5_8)
		(connected loc_5_8 loc_5_7)
		(connected loc_5_8 loc_5_9)
		(connected loc_5_9 loc_5_8)
		(connected loc_5_9 loc_5_10)
		(connected loc_5_10 loc_5_9)
		(connected loc_6_9 loc_6_10)
		(connected loc_6_10 loc_6_9)
		(connected loc_6_10 loc_6_11)
		(connected loc_6_11 loc_6_10)
		(connected loc_6_11 loc_6_12)
		(connected loc_6_12 loc_6_11)
		(connected loc_6_12 loc_6_13)
		(connected loc_6_13 loc_6_12)
		(connected loc_6_13 loc_6_14)
		(connected loc_6_14 loc_6_13)
		(connected loc_6_14 loc_6_15)
		(connected loc_6_15 loc_6_14)
		(connected loc_7_2 loc_7_3)
		(connected loc_7_3 loc_7_2)
		(connected loc_7_3 loc_7_4)
		(connected loc_7_4 loc_7_3)
		(connected loc_7_4 loc_7_5)
		(connected loc_7_5 loc_7_4)
		(connected loc_7_5 loc_7_6)
		(connected loc_7_6 loc_7_5)
		(connected loc_7_6 loc_7_7)
		(connected loc_7_7 loc_7_6)
		(connected loc_8_7 loc_8_8)
		(connected loc_8_8 loc_8_7)
		(connected loc_8_10 loc_8_11)
		(connected loc_8_11 loc_8_10)
		(connected loc_8_13 loc_8_14)
		(connected loc_8_14 loc_8_13)
		(connected loc_8_14 loc_8_15)
		(connected loc_8_15 loc_8_14)
		(connected loc_9_2 loc_9_3)
		(connected loc_9_3 loc_9_2)
		(connected loc_9_3 loc_9_4)
		(connected loc_9_4 loc_9_3)
		(connected loc_9_4 loc_9_5)
		(connected loc_9_5 loc_9_4)
		(connected loc_10_10 loc_10_11)
		(connected loc_10_11 loc_10_10)
		(connected loc_11_2 loc_11_3)
		(connected loc_11_3 loc_11_2)
		(connected loc_11_9 loc_11_10)
		(connected loc_11_10 loc_11_9)
		(connected loc_12_12 loc_12_13)
		(connected loc_12_13 loc_12_12)
		(connected loc_12_13 loc_12_14)
		(connected loc_12_14 loc_12_13)
		(connected loc_12_14 loc_12_15)
		(connected loc_12_15 loc_12_14)
		(connected loc_13_2 loc_13_3)
		(connected loc_13_3 loc_13_2)
		(connected loc_13_3 loc_13_4)
		(connected loc_13_4 loc_13_3)
		(connected loc_13_4 loc_13_5)
		(connected loc_13_5 loc_13_4)
		(connected loc_13_5 loc_13_6)
		(connected loc_13_6 loc_13_5)
		(connected loc_13_6 loc_13_7)
		(connected loc_13_7 loc_13_6)
		(connected loc_13_7 loc_13_8)
		(connected loc_13_8 loc_13_7)
		(connected loc_13_8 loc_13_9)
		(connected loc_13_9 loc_13_8)
		(connected loc_13_9 loc_13_10)
		(connected loc_13_10 loc_13_9)
		(connected loc_14_8 loc_14_9)
		(connected loc_14_9 loc_14_8)
		(connected loc_14_9 loc_14_10)
		(connected loc_14_10 loc_14_9)
		(connected loc_14_10 loc_14_11)
		(connected loc_14_11 loc_14_10)
		(connected loc_14_11 loc_14_12)
		(connected loc_14_12 loc_14_11)
		(connected loc_14_14 loc_14_15)
		(connected loc_14_15 loc_14_14)
		(connected loc_15_4 loc_15_5)
		(connected loc_15_5 loc_15_4)
		(connected loc_15_7 loc_15_8)
		(connected loc_15_8 loc_15_7)
		(connected loc_15_8 loc_15_9)
		(connected loc_15_9 loc_15_8)
		(connected loc_16_2 loc_16_3)
		(connected loc_16_3 loc_16_2)
		(connected loc_16_3 loc_16_4)
		(connected loc_16_4 loc_16_3)
		(connected loc_16_4 loc_16_5)
		(connected loc_16_5 loc_16_4)
		(connected loc_16_8 loc_16_9)
		(connected loc_16_9 loc_16_8)
		(connected loc_16_11 loc_16_12)
		(connected loc_16_12 loc_16_11)
		(connected loc_16_14 loc_16_15)
		(connected loc_16_15 loc_16_14)
		(connected loc_17_2 loc_17_3)
		(connected loc_17_3 loc_17_2)
		(connected loc_17_5 loc_17_6)
		(connected loc_17_6 loc_17_5)
		(connected loc_17_8 loc_17_9)
		(connected loc_17_9 loc_17_8)
		(connected loc_17_12 loc_17_13)
		(connected loc_17_13 loc_17_12)
		(connected loc_17_13 loc_17_14)
		(connected loc_17_14 loc_17_13)
		(connected loc_17_14 loc_17_15)
		(connected loc_17_15 loc_17_14)
		(connected loc_18_8 loc_18_9)
		(connected loc_18_9 loc_18_8)
		(connected loc_18_9 loc_18_10)
		(connected loc_18_10 loc_18_9)
		(connected loc_18_12 loc_18_13)
		(connected loc_18_13 loc_18_12)
		(connected loc_19_2 loc_19_3)
		(connected loc_19_3 loc_19_2)
		(connected loc_19_5 loc_19_6)
		(connected loc_19_6 loc_19_5)
		(connected loc_19_6 loc_19_7)
		(connected loc_19_7 loc_19_6)
		(connected loc_19_7 loc_19_8)
		(connected loc_19_8 loc_19_7)
		(connected loc_19_8 loc_19_9)
		(connected loc_19_9 loc_19_8)
		(connected loc_20_7 loc_20_8)
		(connected loc_20_8 loc_20_7)
		(connected loc_20_8 loc_20_9)
		(connected loc_20_9 loc_20_8)
		(connected loc_20_9 loc_20_10)
		(connected loc_20_10 loc_20_9)
		(connected loc_20_10 loc_20_11)
		(connected loc_20_11 loc_20_10)
		(connected loc_20_11 loc_20_12)
		(connected loc_20_12 loc_20_11)
		(connected loc_20_12 loc_20_13)
		(connected loc_20_13 loc_20_12)
		(connected loc_20_13 loc_20_14)
		(connected loc_20_14 loc_20_13)
		(connected loc_20_14 loc_20_15)
		(connected loc_20_15 loc_20_14)
		(connected loc_21_2 loc_21_3)
		(connected loc_21_3 loc_21_2)
		(connected loc_21_3 loc_21_4)
		(connected loc_21_4 loc_21_3)
		(connected loc_21_4 loc_21_5)
		(connected loc_21_5 loc_21_4)
		(connected loc_22_7 loc_22_8)
		(connected loc_22_8 loc_22_7)
		(connected loc_22_14 loc_22_15)
		(connected loc_22_15 loc_22_14)
		(connected loc_23_6 loc_23_7)
		(connected loc_23_7 loc_23_6)
		(connected loc_24_12 loc_24_13)
		(connected loc_24_13 loc_24_12)
		(connected loc_24_13 loc_24_14)
		(connected loc_24_14 loc_24_13)
		(connected loc_24_14 loc_24_15)
		(connected loc_24_15 loc_24_14)
		(connected loc_25_2 loc_25_3)
		(connected loc_25_3 loc_25_2)
		(connected loc_25_3 loc_25_4)
		(connected loc_25_4 loc_25_3)
		(connected loc_25_6 loc_25_7)
		(connected loc_25_7 loc_25_6)
		(connected loc_25_9 loc_25_10)
		(connected loc_25_10 loc_25_9)
		(connected loc_26_10 loc_26_11)
		(connected loc_26_11 loc_26_10)
		(connected loc_26_11 loc_26_12)
		(connected loc_26_12 loc_26_11)
		(connected loc_26_12 loc_26_13)
		(connected loc_26_13 loc_26_12)
		(connected loc_26_13 loc_26_14)
		(connected loc_26_14 loc_26_13)
		(connected loc_26_14 loc_26_15)
		(connected loc_26_15 loc_26_14)
		(connected loc_27_2 loc_27_3)
		(connected loc_27_3 loc_27_2)
		(connected loc_27_3 loc_27_4)
		(connected loc_27_4 loc_27_3)
		(connected loc_27_4 loc_27_5)
		(connected loc_27_5 loc_27_4)
		(connected loc_27_5 loc_27_6)
		(connected loc_27_6 loc_27_5)
		(connected loc_27_6 loc_27_7)
		(connected loc_27_7 loc_27_6)
		(connected loc_27_7 loc_27_8)
		(connected loc_27_8 loc_27_7)
		(connected loc_28_7 loc_28_8)
		(connected loc_28_8 loc_28_7)
		(connected loc_28_8 loc_28_9)
		(connected loc_28_9 loc_28_8)
		(connected loc_28_9 loc_28_10)
		(connected loc_28_10 loc_28_9)
		(connected loc_28_10 loc_28_11)
		(connected loc_28_11 loc_28_10)
		(connected loc_29_2 loc_29_3)
		(connected loc_29_3 loc_29_2)
		(connected loc_29_3 loc_29_4)
		(connected loc_29_4 loc_29_3)
		(connected loc_29_4 loc_29_5)
		(connected loc_29_5 loc_29_4)
		(connected loc_29_5 loc_29_6)
		(connected loc_29_6 loc_29_5)
		(connected loc_29_6 loc_29_7)
		(connected loc_29_7 loc_29_6)
		(connected loc_29_11 loc_29_12)
		(connected loc_29_12 loc_29_11)
		(connected loc_29_12 loc_29_13)
		(connected loc_29_13 loc_29_12)
		(connected loc_29_13 loc_29_14)
		(connected loc_29_14 loc_29_13)
		(connected loc_29_14 loc_29_15)
		(connected loc_29_15 loc_29_14)
		(connected loc_31_2 loc_31_3)
		(connected loc_31_3 loc_31_2)
		(connected loc_31_3 loc_31_4)
		(connected loc_31_4 loc_31_3)
		(connected loc_31_4 loc_31_5)
		(connected loc_31_5 loc_31_4)
		(connected loc_31_5 loc_31_6)
		(connected loc_31_6 loc_31_5)
		(connected loc_31_6 loc_31_7)
		(connected loc_31_7 loc_31_6)
		(connected loc_31_7 loc_31_8)
		(connected loc_31_8 loc_31_7)
		(connected loc_31_8 loc_31_9)
		(connected loc_31_9 loc_31_8)
		(connected loc_31_9 loc_31_10)
		(connected loc_31_10 loc_31_9)
		(connected loc_31_10 loc_31_11)
		(connected loc_31_11 loc_31_10)
		(connected loc_31_11 loc_31_12)
		(connected loc_31_12 loc_31_11)
		(connected loc_31_12 loc_31_13)
		(connected loc_31_13 loc_31_12)
		(connected loc_31_13 loc_31_14)
		(connected loc_31_14 loc_31_13)
		(connected loc_31_14 loc_31_15)
		(connected loc_31_15 loc_31_14)
		(connected loc_2_2 loc_3_2)
		(connected loc_3_2 loc_2_2)
		(connected loc_3_2 loc_4_2)
		(connected loc_4_2 loc_3_2)
		(connected loc_6_2 loc_7_2)
		(connected loc_7_2 loc_6_2)
		(connected loc_13_2 loc_14_2)
		(connected loc_14_2 loc_13_2)
		(connected loc_14_2 loc_15_2)
		(connected loc_15_2 loc_14_2)
		(connected loc_15_2 loc_16_2)
		(connected loc_16_2 loc_15_2)
		(connected loc_16_2 loc_17_2)
		(connected loc_17_2 loc_16_2)
		(connected loc_17_2 loc_18_2)
		(connected loc_18_2 loc_17_2)
		(connected loc_18_2 loc_19_2)
		(connected loc_19_2 loc_18_2)
		(connected loc_21_2 loc_22_2)
		(connected loc_22_2 loc_21_2)
		(connected loc_22_2 loc_23_2)
		(connected loc_23_2 loc_22_2)
		(connected loc_23_2 loc_24_2)
		(connected loc_24_2 loc_23_2)
		(connected loc_24_2 loc_25_2)
		(connected loc_25_2 loc_24_2)
		(connected loc_7_3 loc_8_3)
		(connected loc_8_3 loc_7_3)
		(connected loc_8_3 loc_9_3)
		(connected loc_9_3 loc_8_3)
		(connected loc_9_3 loc_10_3)
		(connected loc_10_3 loc_9_3)
		(connected loc_10_3 loc_11_3)
		(connected loc_11_3 loc_10_3)
		(connected loc_11_3 loc_12_3)
		(connected loc_12_3 loc_11_3)
		(connected loc_12_3 loc_13_3)
		(connected loc_13_3 loc_12_3)
		(connected loc_16_3 loc_17_3)
		(connected loc_17_3 loc_16_3)
		(connected loc_19_3 loc_20_3)
		(connected loc_20_3 loc_19_3)
		(connected loc_20_3 loc_21_3)
		(connected loc_21_3 loc_20_3)
		(connected loc_25_3 loc_26_3)
		(connected loc_26_3 loc_25_3)
		(connected loc_26_3 loc_27_3)
		(connected loc_27_3 loc_26_3)
		(connected loc_6_4 loc_7_4)
		(connected loc_7_4 loc_6_4)
		(connected loc_13_4 loc_14_4)
		(connected loc_14_4 loc_13_4)
		(connected loc_14_4 loc_15_4)
		(connected loc_15_4 loc_14_4)
		(connected loc_15_4 loc_16_4)
		(connected loc_16_4 loc_15_4)
		(connected loc_21_4 loc_22_4)
		(connected loc_22_4 loc_21_4)
		(connected loc_24_4 loc_25_4)
		(connected loc_25_4 loc_24_4)
		(connected loc_9_5 loc_10_5)
		(connected loc_10_5 loc_9_5)
		(connected loc_10_5 loc_11_5)
		(connected loc_11_5 loc_10_5)
		(connected loc_15_5 loc_16_5)
		(connected loc_16_5 loc_15_5)
		(connected loc_16_5 loc_17_5)
		(connected loc_17_5 loc_16_5)
		(connected loc_19_5 loc_20_5)
		(connected loc_20_5 loc_19_5)
		(connected loc_20_5 loc_21_5)
		(connected loc_21_5 loc_20_5)
		(connected loc_4_6 loc_5_6)
		(connected loc_5_6 loc_4_6)
		(connected loc_5_6 loc_6_6)
		(connected loc_6_6 loc_5_6)
		(connected loc_6_6 loc_7_6)
		(connected loc_7_6 loc_6_6)
		(connected loc_17_6 loc_18_6)
		(connected loc_18_6 loc_17_6)
		(connected loc_18_6 loc_19_6)
		(connected loc_19_6 loc_18_6)
		(connected loc_25_6 loc_26_6)
		(connected loc_26_6 loc_25_6)
		(connected loc_26_6 loc_27_6)
		(connected loc_27_6 loc_26_6)
		(connected loc_7_7 loc_8_7)
		(connected loc_8_7 loc_7_7)
		(connected loc_8_7 loc_9_7)
		(connected loc_9_7 loc_8_7)
		(connected loc_11_7 loc_12_7)
		(connected loc_12_7 loc_11_7)
		(connected loc_12_7 loc_13_7)
		(connected loc_13_7 loc_12_7)
		(connected loc_19_7 loc_20_7)
		(connected loc_20_7 loc_19_7)
		(connected loc_20_7 loc_21_7)
		(connected loc_21_7 loc_20_7)
		(connected loc_21_7 loc_22_7)
		(connected loc_22_7 loc_21_7)
		(connected loc_22_7 loc_23_7)
		(connected loc_23_7 loc_22_7)
		(connected loc_23_7 loc_24_7)
		(connected loc_24_7 loc_23_7)
		(connected loc_24_7 loc_25_7)
		(connected loc_25_7 loc_24_7)
		(connected loc_27_7 loc_28_7)
		(connected loc_28_7 loc_27_7)
		(connected loc_28_7 loc_29_7)
		(connected loc_29_7 loc_28_7)
		(connected loc_4_8 loc_5_8)
		(connected loc_5_8 loc_4_8)
		(connected loc_13_8 loc_14_8)
		(connected loc_14_8 loc_13_8)
		(connected loc_14_8 loc_15_8)
		(connected loc_15_8 loc_14_8)
		(connected loc_15_8 loc_16_8)
		(connected loc_16_8 loc_15_8)
		(connected loc_16_8 loc_17_8)
		(connected loc_17_8 loc_16_8)
		(connected loc_17_8 loc_18_8)
		(connected loc_18_8 loc_17_8)
		(connected loc_18_8 loc_19_8)
		(connected loc_19_8 loc_18_8)
		(connected loc_19_8 loc_20_8)
		(connected loc_20_8 loc_19_8)
		(connected loc_27_8 loc_28_8)
		(connected loc_28_8 loc_27_8)
		(connected loc_5_9 loc_6_9)
		(connected loc_6_9 loc_5_9)
		(connected loc_13_9 loc_14_9)
		(connected loc_14_9 loc_13_9)
		(connected loc_14_9 loc_15_9)
		(connected loc_15_9 loc_14_9)
		(connected loc_15_9 loc_16_9)
		(connected loc_16_9 loc_15_9)
		(connected loc_16_9 loc_17_9)
		(connected loc_17_9 loc_16_9)
		(connected loc_17_9 loc_18_9)
		(connected loc_18_9 loc_17_9)
		(connected loc_18_9 loc_19_9)
		(connected loc_19_9 loc_18_9)
		(connected loc_19_9 loc_20_9)
		(connected loc_20_9 loc_19_9)
		(connected loc_28_9 loc_29_9)
		(connected loc_29_9 loc_28_9)
		(connected loc_4_10 loc_5_10)
		(connected loc_5_10 loc_4_10)
		(connected loc_5_10 loc_6_10)
		(connected loc_6_10 loc_5_10)
		(connected loc_8_10 loc_9_10)
		(connected loc_9_10 loc_8_10)
		(connected loc_9_10 loc_10_10)
		(connected loc_10_10 loc_9_10)
		(connected loc_10_10 loc_11_10)
		(connected loc_11_10 loc_10_10)
		(connected loc_11_10 loc_12_10)
		(connected loc_12_10 loc_11_10)
		(connected loc_12_10 loc_13_10)
		(connected loc_13_10 loc_12_10)
		(connected loc_13_10 loc_14_10)
		(connected loc_14_10 loc_13_10)
		(connected loc_20_10 loc_21_10)
		(connected loc_21_10 loc_20_10)
		(connected loc_21_10 loc_22_10)
		(connected loc_22_10 loc_21_10)
		(connected loc_24_10 loc_25_10)
		(connected loc_25_10 loc_24_10)
		(connected loc_25_10 loc_26_10)
		(connected loc_26_10 loc_25_10)
		(connected loc_6_11 loc_7_11)
		(connected loc_7_11 loc_6_11)
		(connected loc_7_11 loc_8_11)
		(connected loc_8_11 loc_7_11)
		(connected loc_14_11 loc_15_11)
		(connected loc_15_11 loc_14_11)
		(connected loc_15_11 loc_16_11)
		(connected loc_16_11 loc_15_11)
		(connected loc_26_11 loc_27_11)
		(connected loc_27_11 loc_26_11)
		(connected loc_27_11 loc_28_11)
		(connected loc_28_11 loc_27_11)
		(connected loc_28_11 loc_29_11)
		(connected loc_29_11 loc_28_11)
		(connected loc_12_12 loc_13_12)
		(connected loc_13_12 loc_12_12)
		(connected loc_13_12 loc_14_12)
		(connected loc_14_12 loc_13_12)
		(connected loc_16_12 loc_17_12)
		(connected loc_17_12 loc_16_12)
		(connected loc_17_12 loc_18_12)
		(connected loc_18_12 loc_17_12)
		(connected loc_22_12 loc_23_12)
		(connected loc_23_12 loc_22_12)
		(connected loc_23_12 loc_24_12)
		(connected loc_24_12 loc_23_12)
		(connected loc_8_13 loc_9_13)
		(connected loc_9_13 loc_8_13)
		(connected loc_11_13 loc_12_13)
		(connected loc_12_13 loc_11_13)
		(connected loc_17_13 loc_18_13)
		(connected loc_18_13 loc_17_13)
		(connected loc_18_13 loc_19_13)
		(connected loc_19_13 loc_18_13)
		(connected loc_19_13 loc_20_13)
		(connected loc_20_13 loc_19_13)
		(connected loc_26_13 loc_27_13)
		(connected loc_27_13 loc_26_13)
		(connected loc_6_14 loc_7_14)
		(connected loc_7_14 loc_6_14)
		(connected loc_7_14 loc_8_14)
		(connected loc_8_14 loc_7_14)
		(connected loc_12_14 loc_13_14)
		(connected loc_13_14 loc_12_14)
		(connected loc_13_14 loc_14_14)
		(connected loc_14_14 loc_13_14)
		(connected loc_16_14 loc_17_14)
		(connected loc_17_14 loc_16_14)
		(connected loc_20_14 loc_21_14)
		(connected loc_21_14 loc_20_14)
		(connected loc_21_14 loc_22_14)
		(connected loc_22_14 loc_21_14)
		(connected loc_22_14 loc_23_14)
		(connected loc_23_14 loc_22_14)
		(connected loc_23_14 loc_24_14)
		(connected loc_24_14 loc_23_14)
		(connected loc_24_14 loc_25_14)
		(connected loc_25_14 loc_24_14)
		(connected loc_25_14 loc_26_14)
		(connected loc_26_14 loc_25_14)
		(connected loc_8_15 loc_9_15)
		(connected loc_9_15 loc_8_15)
		(connected loc_9_15 loc_10_15)
		(connected loc_10_15 loc_9_15)
		(connected loc_10_15 loc_11_15)
		(connected loc_11_15 loc_10_15)
		(connected loc_11_15 loc_12_15)
		(connected loc_12_15 loc_11_15)
		(connected loc_14_15 loc_15_15)
		(connected loc_15_15 loc_14_15)
		(connected loc_15_15 loc_16_15)
		(connected loc_16_15 loc_15_15)
		(connected loc_16_15 loc_17_15)
		(connected loc_17_15 loc_16_15)
		(connected loc_17_15 loc_18_15)
		(connected loc_18_15 loc_17_15)
		(connected loc_18_15 loc_19_15)
		(connected loc_19_15 loc_18_15)
		(connected loc_19_15 loc_20_15)
		(connected loc_20_15 loc_19_15)
		(connected loc_26_15 loc_27_15)
		(connected loc_27_15 loc_26_15)
		(connected loc_29_15 loc_30_15)
		(connected loc_30_15 loc_29_15)
		(connected loc_30_15 loc_31_15)
		(connected loc_31_15 loc_30_15)

	
		(ghostAt loc_2_15)
		(pacmanAt loc_31_3) ;; Position of opposite pacman
		
	)

	(:goal
		(not (pacmanAt loc_31_3))
	)

)