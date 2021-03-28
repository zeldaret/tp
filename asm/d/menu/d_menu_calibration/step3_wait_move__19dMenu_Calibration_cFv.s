lbl_801AF4F8:
/* 801AF4F8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 801AF4FC  7C 08 02 A6 */	mflr r0
/* 801AF500  90 01 00 34 */	stw r0, 0x34(r1)
/* 801AF504  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 801AF508  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 801AF50C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 801AF510  7C 7F 1B 78 */	mr r31, r3
/* 801AF514  3C 60 80 43 */	lis r3, g_drawHIO@ha
/* 801AF518  38 63 EB C8 */	addi r3, r3, g_drawHIO@l
/* 801AF51C  A8 83 0A 2C */	lha r4, 0xa2c(r3)
/* 801AF520  A8 7F 00 FA */	lha r3, 0xfa(r31)
/* 801AF524  38 03 00 01 */	addi r0, r3, 1
/* 801AF528  B0 1F 00 FA */	sth r0, 0xfa(r31)
/* 801AF52C  A8 1F 00 FA */	lha r0, 0xfa(r31)
/* 801AF530  7C 00 20 00 */	cmpw r0, r4
/* 801AF534  41 80 00 34 */	blt lbl_801AF568
/* 801AF538  80 7F 00 60 */	lwz r3, 0x60(r31)
/* 801AF53C  C0 22 A5 14 */	lfs f1, lit_3885(r2)
/* 801AF540  48 0A 62 91 */	bl setAlphaRate__13CPaneMgrAlphaFf
/* 801AF544  80 7F 00 90 */	lwz r3, 0x90(r31)
/* 801AF548  C0 22 A5 10 */	lfs f1, lit_3847(r2)
/* 801AF54C  48 0A 62 85 */	bl setAlphaRate__13CPaneMgrAlphaFf
/* 801AF550  80 7F 00 5C */	lwz r3, 0x5c(r31)
/* 801AF554  C0 22 A5 10 */	lfs f1, lit_3847(r2)
/* 801AF558  48 0A 62 79 */	bl setAlphaRate__13CPaneMgrAlphaFf
/* 801AF55C  38 00 00 05 */	li r0, 5
/* 801AF560  98 1F 01 00 */	stb r0, 0x100(r31)
/* 801AF564  48 00 00 74 */	b lbl_801AF5D8
lbl_801AF568:
/* 801AF568  C8 42 A5 18 */	lfd f2, lit_3887(r2)
/* 801AF56C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 801AF570  90 01 00 0C */	stw r0, 0xc(r1)
/* 801AF574  3C 60 43 30 */	lis r3, 0x4330
/* 801AF578  90 61 00 08 */	stw r3, 8(r1)
/* 801AF57C  C8 01 00 08 */	lfd f0, 8(r1)
/* 801AF580  EC 20 10 28 */	fsubs f1, f0, f2
/* 801AF584  6C 80 80 00 */	xoris r0, r4, 0x8000
/* 801AF588  90 01 00 14 */	stw r0, 0x14(r1)
/* 801AF58C  90 61 00 10 */	stw r3, 0x10(r1)
/* 801AF590  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 801AF594  EC 00 10 28 */	fsubs f0, f0, f2
/* 801AF598  EF E1 00 24 */	fdivs f31, f1, f0
/* 801AF59C  80 7F 00 60 */	lwz r3, 0x60(r31)
/* 801AF5A0  FC 20 F8 90 */	fmr f1, f31
/* 801AF5A4  48 0A 62 2D */	bl setAlphaRate__13CPaneMgrAlphaFf
/* 801AF5A8  80 7F 00 90 */	lwz r3, 0x90(r31)
/* 801AF5AC  C0 22 A5 10 */	lfs f1, lit_3847(r2)
/* 801AF5B0  48 0A 62 21 */	bl setAlphaRate__13CPaneMgrAlphaFf
/* 801AF5B4  80 7F 00 5C */	lwz r3, 0x5c(r31)
/* 801AF5B8  48 0A 62 71 */	bl getAlphaRate__13CPaneMgrAlphaFv
/* 801AF5BC  C0 02 A5 10 */	lfs f0, lit_3847(r2)
/* 801AF5C0  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 801AF5C4  41 82 00 14 */	beq lbl_801AF5D8
/* 801AF5C8  80 7F 00 5C */	lwz r3, 0x5c(r31)
/* 801AF5CC  C0 02 A5 14 */	lfs f0, lit_3885(r2)
/* 801AF5D0  EC 20 F8 28 */	fsubs f1, f0, f31
/* 801AF5D4  48 0A 61 FD */	bl setAlphaRate__13CPaneMgrAlphaFf
lbl_801AF5D8:
/* 801AF5D8  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 801AF5DC  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 801AF5E0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 801AF5E4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 801AF5E8  7C 08 03 A6 */	mtlr r0
/* 801AF5EC  38 21 00 30 */	addi r1, r1, 0x30
/* 801AF5F0  4E 80 00 20 */	blr 
