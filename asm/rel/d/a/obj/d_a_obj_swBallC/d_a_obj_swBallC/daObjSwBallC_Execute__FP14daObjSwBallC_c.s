lbl_80CF6C50:
/* 80CF6C50  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CF6C54  7C 08 02 A6 */	mflr r0
/* 80CF6C58  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CF6C5C  4B FF F4 C5 */	bl execute__14daObjSwBallC_cFv
/* 80CF6C60  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CF6C64  7C 08 03 A6 */	mtlr r0
/* 80CF6C68  38 21 00 10 */	addi r1, r1, 0x10
/* 80CF6C6C  4E 80 00 20 */	blr 
