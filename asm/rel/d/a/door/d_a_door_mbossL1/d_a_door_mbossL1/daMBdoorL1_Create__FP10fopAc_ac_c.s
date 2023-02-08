lbl_806774EC:
/* 806774EC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806774F0  7C 08 02 A6 */	mflr r0
/* 806774F4  90 01 00 14 */	stw r0, 0x14(r1)
/* 806774F8  4B FF C6 A5 */	bl create__12daMBdoorL1_cFv
/* 806774FC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80677500  7C 08 03 A6 */	mtlr r0
/* 80677504  38 21 00 10 */	addi r1, r1, 0x10
/* 80677508  4E 80 00 20 */	blr 
