lbl_80CF3374:
/* 80CF3374  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CF3378  7C 08 02 A6 */	mflr r0
/* 80CF337C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CF3380  48 00 04 7D */	bl CreateHeap__14daObjSwBallA_cFv
/* 80CF3384  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CF3388  7C 08 03 A6 */	mtlr r0
/* 80CF338C  38 21 00 10 */	addi r1, r1, 0x10
/* 80CF3390  4E 80 00 20 */	blr 
