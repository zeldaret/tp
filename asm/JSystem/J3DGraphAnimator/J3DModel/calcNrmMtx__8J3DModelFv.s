lbl_80328190:
/* 80328190  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80328194  7C 08 02 A6 */	mflr r0
/* 80328198  90 01 00 14 */	stw r0, 0x14(r1)
/* 8032819C  80 63 00 84 */	lwz r3, 0x84(r3)
/* 803281A0  4B FF EB 9D */	bl calcNrmMtx__12J3DMtxBufferFv
/* 803281A4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803281A8  7C 08 03 A6 */	mtlr r0
/* 803281AC  38 21 00 10 */	addi r1, r1, 0x10
/* 803281B0  4E 80 00 20 */	blr 
