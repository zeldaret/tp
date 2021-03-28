lbl_801DE564:
/* 801DE564  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 801DE568  7C 08 02 A6 */	mflr r0
/* 801DE56C  90 01 00 44 */	stw r0, 0x44(r1)
/* 801DE570  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 801DE574  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 801DE578  39 61 00 30 */	addi r11, r1, 0x30
/* 801DE57C  48 18 3C 59 */	bl _savegpr_27
/* 801DE580  7C 7F 1B 78 */	mr r31, r3
/* 801DE584  3C 60 80 43 */	lis r3, g_drawHIO@ha
/* 801DE588  3B A3 EB C8 */	addi r29, r3, g_drawHIO@l
/* 801DE58C  A8 9D 07 5A */	lha r4, 0x75a(r29)
/* 801DE590  A8 7F 03 6A */	lha r3, 0x36a(r31)
/* 801DE594  38 03 00 01 */	addi r0, r3, 1
/* 801DE598  B0 1F 03 6A */	sth r0, 0x36a(r31)
/* 801DE59C  A8 1F 03 6A */	lha r0, 0x36a(r31)
/* 801DE5A0  7C 00 20 00 */	cmpw r0, r4
/* 801DE5A4  41 80 00 7C */	blt lbl_801DE620
/* 801DE5A8  38 00 00 04 */	li r0, 4
/* 801DE5AC  98 1F 03 6D */	stb r0, 0x36d(r31)
/* 801DE5B0  3B 60 00 00 */	li r27, 0
/* 801DE5B4  3B C0 00 00 */	li r30, 0
lbl_801DE5B8:
/* 801DE5B8  C0 1D 07 4C */	lfs f0, 0x74c(r29)
/* 801DE5BC  3B 9E 02 E0 */	addi r28, r30, 0x2e0
/* 801DE5C0  7C 7F E0 2E */	lwzx r3, r31, r28
/* 801DE5C4  80 63 00 04 */	lwz r3, 4(r3)
/* 801DE5C8  D0 03 00 CC */	stfs f0, 0xcc(r3)
/* 801DE5CC  D0 03 00 D0 */	stfs f0, 0xd0(r3)
/* 801DE5D0  81 83 00 00 */	lwz r12, 0(r3)
/* 801DE5D4  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 801DE5D8  7D 89 03 A6 */	mtctr r12
/* 801DE5DC  4E 80 04 21 */	bctrl 
/* 801DE5E0  7C 7F E0 2E */	lwzx r3, r31, r28
/* 801DE5E4  C0 22 A8 E4 */	lfs f1, lit_3828(r2)
/* 801DE5E8  48 07 71 E9 */	bl setAlphaRate__13CPaneMgrAlphaFf
/* 801DE5EC  3B 7B 00 01 */	addi r27, r27, 1
/* 801DE5F0  2C 1B 00 02 */	cmpwi r27, 2
/* 801DE5F4  3B DE 00 04 */	addi r30, r30, 4
/* 801DE5F8  41 80 FF C0 */	blt lbl_801DE5B8
/* 801DE5FC  80 7F 02 B4 */	lwz r3, 0x2b4(r31)
/* 801DE600  3C 80 80 43 */	lis r4, g_drawHIO@ha
/* 801DE604  38 84 EB C8 */	addi r4, r4, g_drawHIO@l
/* 801DE608  88 84 07 85 */	lbz r4, 0x785(r4)
/* 801DE60C  81 83 00 00 */	lwz r12, 0(r3)
/* 801DE610  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 801DE614  7D 89 03 A6 */	mtctr r12
/* 801DE618  4E 80 04 21 */	bctrl 
/* 801DE61C  48 00 00 D0 */	b lbl_801DE6EC
lbl_801DE620:
/* 801DE620  C8 42 A9 10 */	lfd f2, lit_4171(r2)
/* 801DE624  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 801DE628  90 01 00 0C */	stw r0, 0xc(r1)
/* 801DE62C  3C 60 43 30 */	lis r3, 0x4330
/* 801DE630  90 61 00 08 */	stw r3, 8(r1)
/* 801DE634  C8 01 00 08 */	lfd f0, 8(r1)
/* 801DE638  EC 20 10 28 */	fsubs f1, f0, f2
/* 801DE63C  6C 80 80 00 */	xoris r0, r4, 0x8000
/* 801DE640  90 01 00 14 */	stw r0, 0x14(r1)
/* 801DE644  90 61 00 10 */	stw r3, 0x10(r1)
/* 801DE648  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 801DE64C  EC 00 10 28 */	fsubs f0, f0, f2
/* 801DE650  EF E1 00 24 */	fdivs f31, f1, f0
/* 801DE654  3B 60 00 00 */	li r27, 0
/* 801DE658  3B C0 00 00 */	li r30, 0
lbl_801DE65C:
/* 801DE65C  C0 1D 07 4C */	lfs f0, 0x74c(r29)
/* 801DE660  EC 00 07 F2 */	fmuls f0, f0, f31
/* 801DE664  3B 9E 02 E0 */	addi r28, r30, 0x2e0
/* 801DE668  7C 7F E0 2E */	lwzx r3, r31, r28
/* 801DE66C  80 63 00 04 */	lwz r3, 4(r3)
/* 801DE670  D0 03 00 CC */	stfs f0, 0xcc(r3)
/* 801DE674  D0 03 00 D0 */	stfs f0, 0xd0(r3)
/* 801DE678  81 83 00 00 */	lwz r12, 0(r3)
/* 801DE67C  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 801DE680  7D 89 03 A6 */	mtctr r12
/* 801DE684  4E 80 04 21 */	bctrl 
/* 801DE688  7C 7F E0 2E */	lwzx r3, r31, r28
/* 801DE68C  FC 20 F8 90 */	fmr f1, f31
/* 801DE690  48 07 71 41 */	bl setAlphaRate__13CPaneMgrAlphaFf
/* 801DE694  3B 7B 00 01 */	addi r27, r27, 1
/* 801DE698  2C 1B 00 02 */	cmpwi r27, 2
/* 801DE69C  3B DE 00 04 */	addi r30, r30, 4
/* 801DE6A0  41 80 FF BC */	blt lbl_801DE65C
/* 801DE6A4  80 7F 02 B4 */	lwz r3, 0x2b4(r31)
/* 801DE6A8  3C 80 80 43 */	lis r4, g_drawHIO@ha
/* 801DE6AC  38 84 EB C8 */	addi r4, r4, g_drawHIO@l
/* 801DE6B0  88 04 07 85 */	lbz r0, 0x785(r4)
/* 801DE6B4  C8 22 A9 08 */	lfd f1, lit_4058(r2)
/* 801DE6B8  90 01 00 14 */	stw r0, 0x14(r1)
/* 801DE6BC  3C 00 43 30 */	lis r0, 0x4330
/* 801DE6C0  90 01 00 10 */	stw r0, 0x10(r1)
/* 801DE6C4  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 801DE6C8  EC 00 08 28 */	fsubs f0, f0, f1
/* 801DE6CC  EC 00 07 F2 */	fmuls f0, f0, f31
/* 801DE6D0  FC 00 00 1E */	fctiwz f0, f0
/* 801DE6D4  D8 01 00 08 */	stfd f0, 8(r1)
/* 801DE6D8  80 81 00 0C */	lwz r4, 0xc(r1)
/* 801DE6DC  81 83 00 00 */	lwz r12, 0(r3)
/* 801DE6E0  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 801DE6E4  7D 89 03 A6 */	mtctr r12
/* 801DE6E8  4E 80 04 21 */	bctrl 
lbl_801DE6EC:
/* 801DE6EC  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 801DE6F0  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 801DE6F4  39 61 00 30 */	addi r11, r1, 0x30
/* 801DE6F8  48 18 3B 29 */	bl _restgpr_27
/* 801DE6FC  80 01 00 44 */	lwz r0, 0x44(r1)
/* 801DE700  7C 08 03 A6 */	mtlr r0
/* 801DE704  38 21 00 40 */	addi r1, r1, 0x40
/* 801DE708  4E 80 00 20 */	blr 
