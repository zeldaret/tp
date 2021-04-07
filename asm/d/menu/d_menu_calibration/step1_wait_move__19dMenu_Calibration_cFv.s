lbl_801AEF60:
/* 801AEF60  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 801AEF64  7C 08 02 A6 */	mflr r0
/* 801AEF68  90 01 00 34 */	stw r0, 0x34(r1)
/* 801AEF6C  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 801AEF70  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 801AEF74  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 801AEF78  7C 7F 1B 78 */	mr r31, r3
/* 801AEF7C  3C 60 80 43 */	lis r3, g_drawHIO@ha /* 0x8042EBC8@ha */
/* 801AEF80  38 63 EB C8 */	addi r3, r3, g_drawHIO@l /* 0x8042EBC8@l */
/* 801AEF84  A8 83 0A 2C */	lha r4, 0xa2c(r3)
/* 801AEF88  A8 7F 00 FA */	lha r3, 0xfa(r31)
/* 801AEF8C  38 03 00 01 */	addi r0, r3, 1
/* 801AEF90  B0 1F 00 FA */	sth r0, 0xfa(r31)
/* 801AEF94  A8 1F 00 FA */	lha r0, 0xfa(r31)
/* 801AEF98  7C 00 20 00 */	cmpw r0, r4
/* 801AEF9C  41 80 00 50 */	blt lbl_801AEFEC
/* 801AEFA0  80 7F 00 58 */	lwz r3, 0x58(r31)
/* 801AEFA4  C0 22 A5 14 */	lfs f1, lit_3885(r2)
/* 801AEFA8  48 0A 68 29 */	bl setAlphaRate__13CPaneMgrAlphaFf
/* 801AEFAC  80 7F 00 7C */	lwz r3, 0x7c(r31)
/* 801AEFB0  C0 22 A5 10 */	lfs f1, lit_3847(r2)
/* 801AEFB4  48 0A 68 1D */	bl setAlphaRate__13CPaneMgrAlphaFf
/* 801AEFB8  80 7F 00 5C */	lwz r3, 0x5c(r31)
/* 801AEFBC  C0 22 A5 10 */	lfs f1, lit_3847(r2)
/* 801AEFC0  48 0A 68 11 */	bl setAlphaRate__13CPaneMgrAlphaFf
/* 801AEFC4  80 7F 00 A8 */	lwz r3, 0xa8(r31)
/* 801AEFC8  C0 22 A5 14 */	lfs f1, lit_3885(r2)
/* 801AEFCC  4B FE 62 D5 */	bl setAlphaRate__16dSelect_cursor_cFf
/* 801AEFD0  80 7F 00 A8 */	lwz r3, 0xa8(r31)
/* 801AEFD4  88 03 00 B4 */	lbz r0, 0xb4(r3)
/* 801AEFD8  60 00 00 01 */	ori r0, r0, 1
/* 801AEFDC  98 03 00 B4 */	stb r0, 0xb4(r3)
/* 801AEFE0  38 00 00 01 */	li r0, 1
/* 801AEFE4  98 1F 01 00 */	stb r0, 0x100(r31)
/* 801AEFE8  48 00 00 80 */	b lbl_801AF068
lbl_801AEFEC:
/* 801AEFEC  C8 42 A5 18 */	lfd f2, lit_3887(r2)
/* 801AEFF0  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 801AEFF4  90 01 00 0C */	stw r0, 0xc(r1)
/* 801AEFF8  3C 60 43 30 */	lis r3, 0x4330
/* 801AEFFC  90 61 00 08 */	stw r3, 8(r1)
/* 801AF000  C8 01 00 08 */	lfd f0, 8(r1)
/* 801AF004  EC 20 10 28 */	fsubs f1, f0, f2
/* 801AF008  6C 80 80 00 */	xoris r0, r4, 0x8000
/* 801AF00C  90 01 00 14 */	stw r0, 0x14(r1)
/* 801AF010  90 61 00 10 */	stw r3, 0x10(r1)
/* 801AF014  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 801AF018  EC 00 10 28 */	fsubs f0, f0, f2
/* 801AF01C  EF E1 00 24 */	fdivs f31, f1, f0
/* 801AF020  80 7F 00 58 */	lwz r3, 0x58(r31)
/* 801AF024  FC 20 F8 90 */	fmr f1, f31
/* 801AF028  48 0A 67 A9 */	bl setAlphaRate__13CPaneMgrAlphaFf
/* 801AF02C  80 7F 00 7C */	lwz r3, 0x7c(r31)
/* 801AF030  C0 22 A5 10 */	lfs f1, lit_3847(r2)
/* 801AF034  48 0A 67 9D */	bl setAlphaRate__13CPaneMgrAlphaFf
/* 801AF038  80 7F 00 A8 */	lwz r3, 0xa8(r31)
/* 801AF03C  FC 20 F8 90 */	fmr f1, f31
/* 801AF040  4B FE 62 61 */	bl setAlphaRate__16dSelect_cursor_cFf
/* 801AF044  80 7F 00 5C */	lwz r3, 0x5c(r31)
/* 801AF048  48 0A 67 E1 */	bl getAlphaRate__13CPaneMgrAlphaFv
/* 801AF04C  C0 02 A5 10 */	lfs f0, lit_3847(r2)
/* 801AF050  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 801AF054  41 82 00 14 */	beq lbl_801AF068
/* 801AF058  80 7F 00 5C */	lwz r3, 0x5c(r31)
/* 801AF05C  C0 02 A5 14 */	lfs f0, lit_3885(r2)
/* 801AF060  EC 20 F8 28 */	fsubs f1, f0, f31
/* 801AF064  48 0A 67 6D */	bl setAlphaRate__13CPaneMgrAlphaFf
lbl_801AF068:
/* 801AF068  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 801AF06C  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 801AF070  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 801AF074  80 01 00 34 */	lwz r0, 0x34(r1)
/* 801AF078  7C 08 03 A6 */	mtlr r0
/* 801AF07C  38 21 00 30 */	addi r1, r1, 0x30
/* 801AF080  4E 80 00 20 */	blr 
