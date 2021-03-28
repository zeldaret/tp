lbl_80CF6C90:
/* 80CF6C90  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CF6C94  7C 08 02 A6 */	mflr r0
/* 80CF6C98  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CF6C9C  4B FF F3 D1 */	bl create__14daObjSwBallC_cFv
/* 80CF6CA0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CF6CA4  7C 08 03 A6 */	mtlr r0
/* 80CF6CA8  38 21 00 10 */	addi r1, r1, 0x10
/* 80CF6CAC  4E 80 00 20 */	blr 
