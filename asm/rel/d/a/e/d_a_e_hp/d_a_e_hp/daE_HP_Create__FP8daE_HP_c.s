lbl_806E9CD0:
/* 806E9CD0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806E9CD4  7C 08 02 A6 */	mflr r0
/* 806E9CD8  90 01 00 14 */	stw r0, 0x14(r1)
/* 806E9CDC  4B FF F8 41 */	bl create__8daE_HP_cFv
/* 806E9CE0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806E9CE4  7C 08 03 A6 */	mtlr r0
/* 806E9CE8  38 21 00 10 */	addi r1, r1, 0x10
/* 806E9CEC  4E 80 00 20 */	blr 
