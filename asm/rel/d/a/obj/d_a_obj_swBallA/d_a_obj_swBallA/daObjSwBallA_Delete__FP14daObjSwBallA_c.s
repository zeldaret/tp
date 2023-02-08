lbl_80CF42B4:
/* 80CF42B4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CF42B8  7C 08 02 A6 */	mflr r0
/* 80CF42BC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CF42C0  4B FF FF 35 */	bl _delete__14daObjSwBallA_cFv
/* 80CF42C4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CF42C8  7C 08 03 A6 */	mtlr r0
/* 80CF42CC  38 21 00 10 */	addi r1, r1, 0x10
/* 80CF42D0  4E 80 00 20 */	blr 
