lbl_80CF58C0:
/* 80CF58C0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CF58C4  7C 08 02 A6 */	mflr r0
/* 80CF58C8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CF58CC  4B FF F4 1D */	bl create__14daObjSwBallB_cFv
/* 80CF58D0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CF58D4  7C 08 03 A6 */	mtlr r0
/* 80CF58D8  38 21 00 10 */	addi r1, r1, 0x10
/* 80CF58DC  4E 80 00 20 */	blr 
