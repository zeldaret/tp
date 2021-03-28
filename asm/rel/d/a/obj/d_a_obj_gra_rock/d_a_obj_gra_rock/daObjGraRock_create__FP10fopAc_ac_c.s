lbl_80C122D0:
/* 80C122D0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C122D4  7C 08 02 A6 */	mflr r0
/* 80C122D8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C122DC  4B FF F9 89 */	bl create__14daObjGraRock_cFv
/* 80C122E0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C122E4  7C 08 03 A6 */	mtlr r0
/* 80C122E8  38 21 00 10 */	addi r1, r1, 0x10
/* 80C122EC  4E 80 00 20 */	blr 
