lbl_80360FB0:
/* 80360FB0  7C 08 02 A6 */	mflr r0
/* 80360FB4  90 01 00 04 */	stw r0, 4(r1)
/* 80360FB8  94 21 FF F8 */	stwu r1, -8(r1)
/* 80360FBC  80 8D 94 00 */	lwz r4, __GDCurrentDL(r13)
/* 80360FC0  80 64 00 00 */	lwz r3, 0(r4)
/* 80360FC4  80 84 00 04 */	lwz r4, 4(r4)
/* 80360FC8  4B FD A5 E5 */	bl DCFlushRange
/* 80360FCC  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80360FD0  38 21 00 08 */	addi r1, r1, 8
/* 80360FD4  7C 08 03 A6 */	mtlr r0
/* 80360FD8  4E 80 00 20 */	blr 
