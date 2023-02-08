lbl_8032E298:
/* 8032E298  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8032E29C  7C 08 02 A6 */	mflr r0
/* 8032E2A0  90 01 00 24 */	stw r0, 0x24(r1)
/* 8032E2A4  39 61 00 20 */	addi r11, r1, 0x20
/* 8032E2A8  48 03 3F 35 */	bl _savegpr_29
/* 8032E2AC  7C 7D 1B 78 */	mr r29, r3
/* 8032E2B0  7C 9F 23 78 */	mr r31, r4
/* 8032E2B4  80 64 00 04 */	lwz r3, 4(r4)
/* 8032E2B8  80 04 00 08 */	lwz r0, 8(r4)
/* 8032E2BC  90 04 00 04 */	stw r0, 4(r4)
/* 8032E2C0  90 64 00 08 */	stw r3, 8(r4)
/* 8032E2C4  80 64 00 0C */	lwz r3, 0xc(r4)
/* 8032E2C8  80 04 00 10 */	lwz r0, 0x10(r4)
/* 8032E2CC  90 04 00 0C */	stw r0, 0xc(r4)
/* 8032E2D0  90 64 00 10 */	stw r3, 0x10(r4)
/* 8032E2D4  3B C0 00 00 */	li r30, 0
/* 8032E2D8  48 00 00 28 */	b lbl_8032E300
lbl_8032E2DC:
/* 8032E2DC  80 9D 00 08 */	lwz r4, 8(r29)
/* 8032E2E0  57 C0 04 3E */	clrlwi r0, r30, 0x10
/* 8032E2E4  1C 60 00 24 */	mulli r3, r0, 0x24
/* 8032E2E8  38 03 00 20 */	addi r0, r3, 0x20
/* 8032E2EC  7C 64 00 2E */	lwzx r3, r4, r0
/* 8032E2F0  7F E4 FB 78 */	mr r4, r31
/* 8032E2F4  7F C5 F3 78 */	mr r5, r30
/* 8032E2F8  48 00 00 C5 */	bl deform__11J3DDeformerFP15J3DVertexBufferUs
/* 8032E2FC  3B DE 00 01 */	addi r30, r30, 1
lbl_8032E300:
/* 8032E300  57 C3 04 3E */	clrlwi r3, r30, 0x10
/* 8032E304  A0 1D 00 00 */	lhz r0, 0(r29)
/* 8032E308  7C 03 00 40 */	cmplw r3, r0
/* 8032E30C  41 80 FF D0 */	blt lbl_8032E2DC
/* 8032E310  80 7F 00 00 */	lwz r3, 0(r31)
/* 8032E314  80 03 00 00 */	lwz r0, 0(r3)
/* 8032E318  80 7F 00 04 */	lwz r3, 4(r31)
/* 8032E31C  1C 80 00 0C */	mulli r4, r0, 0xc
/* 8032E320  48 00 D3 19 */	bl DCStoreRangeNoSync
/* 8032E324  80 7F 00 00 */	lwz r3, 0(r31)
/* 8032E328  80 03 00 04 */	lwz r0, 4(r3)
/* 8032E32C  80 7F 00 0C */	lwz r3, 0xc(r31)
/* 8032E330  1C 80 00 0C */	mulli r4, r0, 0xc
/* 8032E334  48 00 D3 05 */	bl DCStoreRangeNoSync
/* 8032E338  48 00 B9 C1 */	bl PPCSync
/* 8032E33C  80 1F 00 04 */	lwz r0, 4(r31)
/* 8032E340  90 1F 00 2C */	stw r0, 0x2c(r31)
/* 8032E344  80 1F 00 0C */	lwz r0, 0xc(r31)
/* 8032E348  90 1F 00 30 */	stw r0, 0x30(r31)
/* 8032E34C  39 61 00 20 */	addi r11, r1, 0x20
/* 8032E350  48 03 3E D9 */	bl _restgpr_29
/* 8032E354  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8032E358  7C 08 03 A6 */	mtlr r0
/* 8032E35C  38 21 00 20 */	addi r1, r1, 0x20
/* 8032E360  4E 80 00 20 */	blr 
