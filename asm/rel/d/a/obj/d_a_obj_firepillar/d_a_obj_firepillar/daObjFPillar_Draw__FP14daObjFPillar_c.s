lbl_80BE99C0:
/* 80BE99C0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BE99C4  7C 08 02 A6 */	mflr r0
/* 80BE99C8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BE99CC  4B FF FF B9 */	bl draw__14daObjFPillar_cFv
/* 80BE99D0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BE99D4  7C 08 03 A6 */	mtlr r0
/* 80BE99D8  38 21 00 10 */	addi r1, r1, 0x10
/* 80BE99DC  4E 80 00 20 */	blr 
