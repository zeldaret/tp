lbl_806E45D8:
/* 806E45D8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806E45DC  7C 08 02 A6 */	mflr r0
/* 806E45E0  90 01 00 14 */	stw r0, 0x14(r1)
/* 806E45E4  4B FF FA F1 */	bl Execute__8daE_HM_cFv
/* 806E45E8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806E45EC  7C 08 03 A6 */	mtlr r0
/* 806E45F0  38 21 00 10 */	addi r1, r1, 0x10
/* 806E45F4  4E 80 00 20 */	blr 
