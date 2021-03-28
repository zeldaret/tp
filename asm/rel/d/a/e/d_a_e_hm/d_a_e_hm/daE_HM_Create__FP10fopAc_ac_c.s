lbl_806E5390:
/* 806E5390  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806E5394  7C 08 02 A6 */	mflr r0
/* 806E5398  90 01 00 14 */	stw r0, 0x14(r1)
/* 806E539C  4B FF FA C9 */	bl Create__8daE_HM_cFv
/* 806E53A0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806E53A4  7C 08 03 A6 */	mtlr r0
/* 806E53A8  38 21 00 10 */	addi r1, r1, 0x10
/* 806E53AC  4E 80 00 20 */	blr 
