lbl_8007B2B0:
/* 8007B2B0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8007B2B4  7C 08 02 A6 */	mflr r0
/* 8007B2B8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8007B2BC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8007B2C0  7C 7F 1B 78 */	mr r31, r3
/* 8007B2C4  A0 84 00 00 */	lhz r4, 0(r4)
/* 8007B2C8  48 00 06 69 */	bl GetTriGrp__4cBgWCFi
/* 8007B2CC  80 9F 00 A0 */	lwz r4, 0xa0(r31)
/* 8007B2D0  80 84 00 24 */	lwz r4, 0x24(r4)
/* 8007B2D4  1C 03 00 34 */	mulli r0, r3, 0x34
/* 8007B2D8  7C 64 02 14 */	add r3, r4, r0
/* 8007B2DC  80 63 00 30 */	lwz r3, 0x30(r3)
/* 8007B2E0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8007B2E4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8007B2E8  7C 08 03 A6 */	mtlr r0
/* 8007B2EC  38 21 00 10 */	addi r1, r1, 0x10
/* 8007B2F0  4E 80 00 20 */	blr 
