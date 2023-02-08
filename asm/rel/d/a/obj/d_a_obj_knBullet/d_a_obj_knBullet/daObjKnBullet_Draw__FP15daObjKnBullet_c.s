lbl_80C478C4:
/* 80C478C4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C478C8  7C 08 02 A6 */	mflr r0
/* 80C478CC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C478D0  4B FF FB B1 */	bl Draw__15daObjKnBullet_cFv
/* 80C478D4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C478D8  7C 08 03 A6 */	mtlr r0
/* 80C478DC  38 21 00 10 */	addi r1, r1, 0x10
/* 80C478E0  4E 80 00 20 */	blr 
