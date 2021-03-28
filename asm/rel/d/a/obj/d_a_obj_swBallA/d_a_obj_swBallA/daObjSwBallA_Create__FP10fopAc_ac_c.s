lbl_80CF42D4:
/* 80CF42D4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CF42D8  7C 08 02 A6 */	mflr r0
/* 80CF42DC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CF42E0  4B FF F6 91 */	bl create__14daObjSwBallA_cFv
/* 80CF42E4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CF42E8  7C 08 03 A6 */	mtlr r0
/* 80CF42EC  38 21 00 10 */	addi r1, r1, 0x10
/* 80CF42F0  4E 80 00 20 */	blr 
