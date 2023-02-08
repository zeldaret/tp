lbl_805520C0:
/* 805520C0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805520C4  7C 08 02 A6 */	mflr r0
/* 805520C8  90 01 00 14 */	stw r0, 0x14(r1)
/* 805520CC  4B FF DB 45 */	bl Delete__12daNpc_Kkri_cFv
/* 805520D0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805520D4  7C 08 03 A6 */	mtlr r0
/* 805520D8  38 21 00 10 */	addi r1, r1, 0x10
/* 805520DC  4E 80 00 20 */	blr 
