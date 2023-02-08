lbl_80D4558C:
/* 80D4558C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D45590  7C 08 02 A6 */	mflr r0
/* 80D45594  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D45598  4B FF FB 49 */	bl create__14daObjZraRock_cFv
/* 80D4559C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D455A0  7C 08 03 A6 */	mtlr r0
/* 80D455A4  38 21 00 10 */	addi r1, r1, 0x10
/* 80D455A8  4E 80 00 20 */	blr 
