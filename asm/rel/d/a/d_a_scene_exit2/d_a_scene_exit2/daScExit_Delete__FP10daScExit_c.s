lbl_8059E790:
/* 8059E790  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8059E794  7C 08 02 A6 */	mflr r0
/* 8059E798  90 01 00 14 */	stw r0, 0x14(r1)
/* 8059E79C  4B FF FF 81 */	bl _delete__10daScExit_cFv
/* 8059E7A0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8059E7A4  7C 08 03 A6 */	mtlr r0
/* 8059E7A8  38 21 00 10 */	addi r1, r1, 0x10
/* 8059E7AC  4E 80 00 20 */	blr 
