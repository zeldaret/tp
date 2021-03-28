lbl_80BCA3F8:
/* 80BCA3F8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BCA3FC  7C 08 02 A6 */	mflr r0
/* 80BCA400  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BCA404  48 00 00 15 */	bl CreateHeap__10daObjCHO_cFv
/* 80BCA408  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BCA40C  7C 08 03 A6 */	mtlr r0
/* 80BCA410  38 21 00 10 */	addi r1, r1, 0x10
/* 80BCA414  4E 80 00 20 */	blr 
