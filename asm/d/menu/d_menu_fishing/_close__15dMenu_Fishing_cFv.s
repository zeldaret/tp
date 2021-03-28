lbl_801C5470:
/* 801C5470  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 801C5474  7C 08 02 A6 */	mflr r0
/* 801C5478  90 01 00 34 */	stw r0, 0x34(r1)
/* 801C547C  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 801C5480  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 801C5484  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 801C5488  7C 7F 1B 78 */	mr r31, r3
/* 801C548C  3C 60 80 43 */	lis r3, g_drawHIO@ha
/* 801C5490  38 63 EB C8 */	addi r3, r3, g_drawHIO@l
/* 801C5494  A8 A3 09 A6 */	lha r5, 0x9a6(r3)
/* 801C5498  38 60 00 00 */	li r3, 0
/* 801C549C  B0 7F 01 F8 */	sth r3, 0x1f8(r31)
/* 801C54A0  A8 9F 01 F8 */	lha r4, 0x1f8(r31)
/* 801C54A4  7C 80 07 35 */	extsh. r0, r4
/* 801C54A8  41 81 00 44 */	bgt lbl_801C54EC
/* 801C54AC  B0 7F 01 F8 */	sth r3, 0x1f8(r31)
/* 801C54B0  98 7F 01 FA */	stb r3, 0x1fa(r31)
/* 801C54B4  80 7F 00 48 */	lwz r3, 0x48(r31)
/* 801C54B8  80 63 00 04 */	lwz r3, 4(r3)
/* 801C54BC  C0 02 A7 08 */	lfs f0, lit_3904(r2)
/* 801C54C0  D0 03 00 CC */	stfs f0, 0xcc(r3)
/* 801C54C4  D0 03 00 D0 */	stfs f0, 0xd0(r3)
/* 801C54C8  81 83 00 00 */	lwz r12, 0(r3)
/* 801C54CC  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 801C54D0  7D 89 03 A6 */	mtctr r12
/* 801C54D4  4E 80 04 21 */	bctrl 
/* 801C54D8  80 7F 00 48 */	lwz r3, 0x48(r31)
/* 801C54DC  C0 22 A7 08 */	lfs f1, lit_3904(r2)
/* 801C54E0  48 09 02 F1 */	bl setAlphaRate__13CPaneMgrAlphaFf
/* 801C54E4  38 60 00 01 */	li r3, 1
/* 801C54E8  48 00 00 68 */	b lbl_801C5550
lbl_801C54EC:
/* 801C54EC  C8 42 A7 18 */	lfd f2, lit_4012(r2)
/* 801C54F0  6C 80 80 00 */	xoris r0, r4, 0x8000
/* 801C54F4  90 01 00 0C */	stw r0, 0xc(r1)
/* 801C54F8  3C 60 43 30 */	lis r3, 0x4330
/* 801C54FC  90 61 00 08 */	stw r3, 8(r1)
/* 801C5500  C8 01 00 08 */	lfd f0, 8(r1)
/* 801C5504  EC 20 10 28 */	fsubs f1, f0, f2
/* 801C5508  6C A0 80 00 */	xoris r0, r5, 0x8000
/* 801C550C  90 01 00 14 */	stw r0, 0x14(r1)
/* 801C5510  90 61 00 10 */	stw r3, 0x10(r1)
/* 801C5514  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 801C5518  EC 00 10 28 */	fsubs f0, f0, f2
/* 801C551C  EF E1 00 24 */	fdivs f31, f1, f0
/* 801C5520  80 7F 00 48 */	lwz r3, 0x48(r31)
/* 801C5524  80 63 00 04 */	lwz r3, 4(r3)
/* 801C5528  D3 E3 00 CC */	stfs f31, 0xcc(r3)
/* 801C552C  D3 E3 00 D0 */	stfs f31, 0xd0(r3)
/* 801C5530  81 83 00 00 */	lwz r12, 0(r3)
/* 801C5534  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 801C5538  7D 89 03 A6 */	mtctr r12
/* 801C553C  4E 80 04 21 */	bctrl 
/* 801C5540  80 7F 00 48 */	lwz r3, 0x48(r31)
/* 801C5544  FC 20 F8 90 */	fmr f1, f31
/* 801C5548  48 09 02 89 */	bl setAlphaRate__13CPaneMgrAlphaFf
/* 801C554C  38 60 00 00 */	li r3, 0
lbl_801C5550:
/* 801C5550  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 801C5554  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 801C5558  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 801C555C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 801C5560  7C 08 03 A6 */	mtlr r0
/* 801C5564  38 21 00 30 */	addi r1, r1, 0x30
/* 801C5568  4E 80 00 20 */	blr 
