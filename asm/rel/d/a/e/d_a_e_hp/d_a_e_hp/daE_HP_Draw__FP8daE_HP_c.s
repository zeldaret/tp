lbl_806E64F4:
/* 806E64F4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806E64F8  7C 08 02 A6 */	mflr r0
/* 806E64FC  90 01 00 14 */	stw r0, 0x14(r1)
/* 806E6500  4B FF FB 19 */	bl draw__8daE_HP_cFv
/* 806E6504  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806E6508  7C 08 03 A6 */	mtlr r0
/* 806E650C  38 21 00 10 */	addi r1, r1, 0x10
/* 806E6510  4E 80 00 20 */	blr 
