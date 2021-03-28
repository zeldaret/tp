lbl_806E9170:
/* 806E9170  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806E9174  7C 08 02 A6 */	mflr r0
/* 806E9178  90 01 00 14 */	stw r0, 0x14(r1)
/* 806E917C  4B FF FE 71 */	bl execute__8daE_HP_cFv
/* 806E9180  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806E9184  7C 08 03 A6 */	mtlr r0
/* 806E9188  38 21 00 10 */	addi r1, r1, 0x10
/* 806E918C  4E 80 00 20 */	blr 
