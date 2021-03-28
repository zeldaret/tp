lbl_80323590:
/* 80323590  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80323594  7C 08 02 A6 */	mflr r0
/* 80323598  90 01 00 24 */	stw r0, 0x24(r1)
/* 8032359C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 803235A0  93 C1 00 18 */	stw r30, 0x18(r1)
/* 803235A4  7C 7E 1B 78 */	mr r30, r3
/* 803235A8  7C 9F 23 78 */	mr r31, r4
/* 803235AC  80 8D 94 00 */	lwz r4, __GDCurrentDL(r13)
/* 803235B0  80 64 00 08 */	lwz r3, 8(r4)
/* 803235B4  38 63 00 48 */	addi r3, r3, 0x48
/* 803235B8  80 04 00 0C */	lwz r0, 0xc(r4)
/* 803235BC  7C 03 00 40 */	cmplw r3, r0
/* 803235C0  40 81 00 08 */	ble lbl_803235C8
/* 803235C4  48 03 DB 11 */	bl GDOverflowed
lbl_803235C8:
/* 803235C8  38 00 00 01 */	li r0, 1
/* 803235CC  7C 1F F8 30 */	slw r31, r0, r31
/* 803235D0  7F E3 FB 78 */	mr r3, r31
/* 803235D4  C0 3E 00 00 */	lfs f1, 0(r30)
/* 803235D8  C0 5E 00 04 */	lfs f2, 4(r30)
/* 803235DC  C0 7E 00 08 */	lfs f3, 8(r30)
/* 803235E0  4B FE A1 8D */	bl J3DGDSetLightPos__F10_GXLightIDfff
/* 803235E4  7F E3 FB 78 */	mr r3, r31
/* 803235E8  C0 3E 00 1C */	lfs f1, 0x1c(r30)
/* 803235EC  C0 5E 00 20 */	lfs f2, 0x20(r30)
/* 803235F0  C0 7E 00 24 */	lfs f3, 0x24(r30)
/* 803235F4  C0 9E 00 28 */	lfs f4, 0x28(r30)
/* 803235F8  C0 BE 00 2C */	lfs f5, 0x2c(r30)
/* 803235FC  C0 DE 00 30 */	lfs f6, 0x30(r30)
/* 80323600  4B FE 9D 65 */	bl J3DGDSetLightAttn__F10_GXLightIDffffff
/* 80323604  80 1E 00 18 */	lwz r0, 0x18(r30)
/* 80323608  90 01 00 08 */	stw r0, 8(r1)
/* 8032360C  7F E3 FB 78 */	mr r3, r31
/* 80323610  38 81 00 08 */	addi r4, r1, 8
/* 80323614  4B FE A0 49 */	bl J3DGDSetLightColor__F10_GXLightID8_GXColor
/* 80323618  7F E3 FB 78 */	mr r3, r31
/* 8032361C  C0 3E 00 0C */	lfs f1, 0xc(r30)
/* 80323620  C0 5E 00 10 */	lfs f2, 0x10(r30)
/* 80323624  C0 7E 00 14 */	lfs f3, 0x14(r30)
/* 80323628  4B FE A3 11 */	bl J3DGDSetLightDir__F10_GXLightIDfff
/* 8032362C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80323630  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80323634  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80323638  7C 08 03 A6 */	mtlr r0
/* 8032363C  38 21 00 20 */	addi r1, r1, 0x20
/* 80323640  4E 80 00 20 */	blr 
