lbl_80C15328:
/* 80C15328  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C1532C  7C 08 02 A6 */	mflr r0
/* 80C15330  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C15334  4B FF FC 1D */	bl create__14daObjGrzRock_cFv
/* 80C15338  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C1533C  7C 08 03 A6 */	mtlr r0
/* 80C15340  38 21 00 10 */	addi r1, r1, 0x10
/* 80C15344  4E 80 00 20 */	blr 
