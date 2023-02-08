lbl_8059E7B0:
/* 8059E7B0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8059E7B4  7C 08 02 A6 */	mflr r0
/* 8059E7B8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8059E7BC  4B FF FA 75 */	bl create__10daScExit_cFv
/* 8059E7C0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8059E7C4  7C 08 03 A6 */	mtlr r0
/* 8059E7C8  38 21 00 10 */	addi r1, r1, 0x10
/* 8059E7CC  4E 80 00 20 */	blr 
