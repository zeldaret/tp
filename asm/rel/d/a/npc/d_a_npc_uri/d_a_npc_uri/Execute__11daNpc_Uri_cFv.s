lbl_80B270C0:
/* 80B270C0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B270C4  7C 08 02 A6 */	mflr r0
/* 80B270C8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B270CC  4B 62 14 61 */	bl execute__8daNpcT_cFv
/* 80B270D0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B270D4  7C 08 03 A6 */	mtlr r0
/* 80B270D8  38 21 00 10 */	addi r1, r1, 0x10
/* 80B270DC  4E 80 00 20 */	blr 
