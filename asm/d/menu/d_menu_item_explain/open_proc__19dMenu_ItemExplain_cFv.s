lbl_801DBAB4:
/* 801DBAB4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801DBAB8  7C 08 02 A6 */	mflr r0
/* 801DBABC  90 01 00 24 */	stw r0, 0x24(r1)
/* 801DBAC0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 801DBAC4  7C 7F 1B 78 */	mr r31, r3
/* 801DBAC8  C0 23 00 BC */	lfs f1, 0xbc(r3)
/* 801DBACC  C0 02 A8 C8 */	lfs f0, lit_4452(r2)
/* 801DBAD0  EC 01 00 2A */	fadds f0, f1, f0
/* 801DBAD4  D0 03 00 BC */	stfs f0, 0xbc(r3)
/* 801DBAD8  C0 23 00 BC */	lfs f1, 0xbc(r3)
/* 801DBADC  C0 02 A8 8C */	lfs f0, lit_4063(r2)
/* 801DBAE0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801DBAE4  4C 41 13 82 */	cror 2, 1, 2
/* 801DBAE8  40 82 00 10 */	bne lbl_801DBAF8
/* 801DBAEC  D0 1F 00 BC */	stfs f0, 0xbc(r31)
/* 801DBAF0  38 00 00 02 */	li r0, 2
/* 801DBAF4  98 1F 00 E0 */	stb r0, 0xe0(r31)
lbl_801DBAF8:
/* 801DBAF8  80 1F 00 B4 */	lwz r0, 0xb4(r31)
/* 801DBAFC  28 00 00 00 */	cmplwi r0, 0
/* 801DBB00  41 82 00 3C */	beq lbl_801DBB3C
/* 801DBB04  7F E3 FB 78 */	mr r3, r31
/* 801DBB08  48 00 0C A5 */	bl getAlphaRatio__19dMenu_ItemExplain_cFv
/* 801DBB0C  C0 02 A8 C4 */	lfs f0, lit_4348(r2)
/* 801DBB10  EC 20 08 28 */	fsubs f1, f0, f1
/* 801DBB14  C0 02 A8 CC */	lfs f0, lit_4453(r2)
/* 801DBB18  EC 00 00 72 */	fmuls f0, f0, f1
/* 801DBB1C  FC 00 00 1E */	fctiwz f0, f0
/* 801DBB20  D8 01 00 08 */	stfd f0, 8(r1)
/* 801DBB24  80 81 00 0C */	lwz r4, 0xc(r1)
/* 801DBB28  80 7F 00 B4 */	lwz r3, 0xb4(r31)
/* 801DBB2C  81 83 00 00 */	lwz r12, 0(r3)
/* 801DBB30  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 801DBB34  7D 89 03 A6 */	mtctr r12
/* 801DBB38  4E 80 04 21 */	bctrl 
lbl_801DBB3C:
/* 801DBB3C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 801DBB40  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801DBB44  7C 08 03 A6 */	mtlr r0
/* 801DBB48  38 21 00 20 */	addi r1, r1, 0x20
/* 801DBB4C  4E 80 00 20 */	blr 
