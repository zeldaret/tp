lbl_80CF6C30:
/* 80CF6C30  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CF6C34  7C 08 02 A6 */	mflr r0
/* 80CF6C38  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CF6C3C  4B FF FE 39 */	bl draw__14daObjSwBallC_cFv
/* 80CF6C40  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CF6C44  7C 08 03 A6 */	mtlr r0
/* 80CF6C48  38 21 00 10 */	addi r1, r1, 0x10
/* 80CF6C4C  4E 80 00 20 */	blr 
