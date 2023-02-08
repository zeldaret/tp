lbl_806E9220:
/* 806E9220  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806E9224  7C 08 02 A6 */	mflr r0
/* 806E9228  90 01 00 14 */	stw r0, 0x14(r1)
/* 806E922C  4B FF FF 6D */	bl _delete__8daE_HP_cFv
/* 806E9230  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806E9234  7C 08 03 A6 */	mtlr r0
/* 806E9238  38 21 00 10 */	addi r1, r1, 0x10
/* 806E923C  4E 80 00 20 */	blr 
