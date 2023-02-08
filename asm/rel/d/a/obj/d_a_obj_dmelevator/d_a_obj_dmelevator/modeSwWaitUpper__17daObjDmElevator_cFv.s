lbl_80BDECB4:
/* 80BDECB4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BDECB8  7C 08 02 A6 */	mflr r0
/* 80BDECBC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BDECC0  88 03 06 36 */	lbz r0, 0x636(r3)
/* 80BDECC4  28 00 00 00 */	cmplwi r0, 0
/* 80BDECC8  40 82 00 08 */	bne lbl_80BDECD0
/* 80BDECCC  48 00 00 15 */	bl modeSwUpperInit__17daObjDmElevator_cFv
lbl_80BDECD0:
/* 80BDECD0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BDECD4  7C 08 03 A6 */	mtlr r0
/* 80BDECD8  38 21 00 10 */	addi r1, r1, 0x10
/* 80BDECDC  4E 80 00 20 */	blr 
