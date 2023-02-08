lbl_80190A14:
/* 80190A14  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80190A18  7C 08 02 A6 */	mflr r0
/* 80190A1C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80190A20  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80190A24  7C 7F 1B 78 */	mr r31, r3
/* 80190A28  80 03 00 10 */	lwz r0, 0x10(r3)
/* 80190A2C  28 00 00 00 */	cmplwi r0, 0
/* 80190A30  41 82 00 7C */	beq lbl_80190AAC
/* 80190A34  C0 3F 03 C4 */	lfs f1, 0x3c4(r31)
/* 80190A38  C0 02 9F 40 */	lfs f0, lit_4611(r2)
/* 80190A3C  EC 01 00 2A */	fadds f0, f1, f0
/* 80190A40  D0 1F 03 C4 */	stfs f0, 0x3c4(r31)
/* 80190A44  80 7F 00 10 */	lwz r3, 0x10(r31)
/* 80190A48  A8 83 00 08 */	lha r4, 8(r3)
/* 80190A4C  C8 42 9F 38 */	lfd f2, lit_4342(r2)
/* 80190A50  6C 80 80 00 */	xoris r0, r4, 0x8000
/* 80190A54  90 01 00 0C */	stw r0, 0xc(r1)
/* 80190A58  3C 60 43 30 */	lis r3, 0x4330
/* 80190A5C  90 61 00 08 */	stw r3, 8(r1)
/* 80190A60  C8 01 00 08 */	lfd f0, 8(r1)
/* 80190A64  EC 00 10 28 */	fsubs f0, f0, f2
/* 80190A68  C0 3F 03 C4 */	lfs f1, 0x3c4(r31)
/* 80190A6C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80190A70  4C 41 13 82 */	cror 2, 1, 2
/* 80190A74  40 82 00 24 */	bne lbl_80190A98
/* 80190A78  7C 80 07 34 */	extsh r0, r4
/* 80190A7C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80190A80  90 01 00 0C */	stw r0, 0xc(r1)
/* 80190A84  90 61 00 08 */	stw r3, 8(r1)
/* 80190A88  C8 01 00 08 */	lfd f0, 8(r1)
/* 80190A8C  EC 00 10 28 */	fsubs f0, f0, f2
/* 80190A90  EC 01 00 28 */	fsubs f0, f1, f0
/* 80190A94  D0 1F 03 C4 */	stfs f0, 0x3c4(r31)
lbl_80190A98:
/* 80190A98  C0 1F 03 C4 */	lfs f0, 0x3c4(r31)
/* 80190A9C  80 7F 00 10 */	lwz r3, 0x10(r31)
/* 80190AA0  D0 03 00 10 */	stfs f0, 0x10(r3)
/* 80190AA4  80 7F 00 10 */	lwz r3, 0x10(r31)
/* 80190AA8  4B E7 C9 81 */	bl play__14mDoExt_baseAnmFv
lbl_80190AAC:
/* 80190AAC  80 1F 00 0C */	lwz r0, 0xc(r31)
/* 80190AB0  28 00 00 00 */	cmplwi r0, 0
/* 80190AB4  41 82 00 7C */	beq lbl_80190B30
/* 80190AB8  C0 3F 03 C8 */	lfs f1, 0x3c8(r31)
/* 80190ABC  C0 02 9F 40 */	lfs f0, lit_4611(r2)
/* 80190AC0  EC 01 00 2A */	fadds f0, f1, f0
/* 80190AC4  D0 1F 03 C8 */	stfs f0, 0x3c8(r31)
/* 80190AC8  80 7F 00 0C */	lwz r3, 0xc(r31)
/* 80190ACC  A8 83 00 08 */	lha r4, 8(r3)
/* 80190AD0  C8 42 9F 38 */	lfd f2, lit_4342(r2)
/* 80190AD4  6C 80 80 00 */	xoris r0, r4, 0x8000
/* 80190AD8  90 01 00 0C */	stw r0, 0xc(r1)
/* 80190ADC  3C 60 43 30 */	lis r3, 0x4330
/* 80190AE0  90 61 00 08 */	stw r3, 8(r1)
/* 80190AE4  C8 01 00 08 */	lfd f0, 8(r1)
/* 80190AE8  EC 00 10 28 */	fsubs f0, f0, f2
/* 80190AEC  C0 3F 03 C8 */	lfs f1, 0x3c8(r31)
/* 80190AF0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80190AF4  4C 41 13 82 */	cror 2, 1, 2
/* 80190AF8  40 82 00 24 */	bne lbl_80190B1C
/* 80190AFC  7C 80 07 34 */	extsh r0, r4
/* 80190B00  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80190B04  90 01 00 0C */	stw r0, 0xc(r1)
/* 80190B08  90 61 00 08 */	stw r3, 8(r1)
/* 80190B0C  C8 01 00 08 */	lfd f0, 8(r1)
/* 80190B10  EC 00 10 28 */	fsubs f0, f0, f2
/* 80190B14  EC 01 00 28 */	fsubs f0, f1, f0
/* 80190B18  D0 1F 03 C8 */	stfs f0, 0x3c8(r31)
lbl_80190B1C:
/* 80190B1C  C0 1F 03 C8 */	lfs f0, 0x3c8(r31)
/* 80190B20  80 7F 00 0C */	lwz r3, 0xc(r31)
/* 80190B24  D0 03 00 10 */	stfs f0, 0x10(r3)
/* 80190B28  80 7F 00 0C */	lwz r3, 0xc(r31)
/* 80190B2C  4B E7 C8 FD */	bl play__14mDoExt_baseAnmFv
lbl_80190B30:
/* 80190B30  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80190B34  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80190B38  7C 08 03 A6 */	mtlr r0
/* 80190B3C  38 21 00 20 */	addi r1, r1, 0x20
/* 80190B40  4E 80 00 20 */	blr 
