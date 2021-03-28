lbl_80CF0148:
/* 80CF0148  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CF014C  7C 08 02 A6 */	mflr r0
/* 80CF0150  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CF0154  4B FF FF 25 */	bl draw__14daObj_Suisya_cFv
/* 80CF0158  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CF015C  7C 08 03 A6 */	mtlr r0
/* 80CF0160  38 21 00 10 */	addi r1, r1, 0x10
/* 80CF0164  4E 80 00 20 */	blr 
