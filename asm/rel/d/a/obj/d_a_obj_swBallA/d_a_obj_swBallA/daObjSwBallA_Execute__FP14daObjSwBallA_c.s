lbl_80CF4294:
/* 80CF4294  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CF4298  7C 08 02 A6 */	mflr r0
/* 80CF429C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CF42A0  4B FF F7 F1 */	bl execute__14daObjSwBallA_cFv
/* 80CF42A4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CF42A8  7C 08 03 A6 */	mtlr r0
/* 80CF42AC  38 21 00 10 */	addi r1, r1, 0x10
/* 80CF42B0  4E 80 00 20 */	blr 
