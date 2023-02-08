lbl_80C2B328:
/* 80C2B328  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C2B32C  7C 08 02 A6 */	mflr r0
/* 80C2B330  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C2B334  48 00 23 F1 */	bl create__13daObjKABUTO_cFv
/* 80C2B338  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C2B33C  7C 08 03 A6 */	mtlr r0
/* 80C2B340  38 21 00 10 */	addi r1, r1, 0x10
/* 80C2B344  4E 80 00 20 */	blr 
