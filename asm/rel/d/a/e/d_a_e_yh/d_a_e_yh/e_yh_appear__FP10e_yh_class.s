lbl_807FE1C4:
/* 807FE1C4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 807FE1C8  7C 08 02 A6 */	mflr r0
/* 807FE1CC  90 01 00 24 */	stw r0, 0x24(r1)
/* 807FE1D0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 807FE1D4  93 C1 00 18 */	stw r30, 0x18(r1)
/* 807FE1D8  7C 7E 1B 78 */	mr r30, r3
/* 807FE1DC  3C 80 80 80 */	lis r4, lit_3902@ha /* 0x8080427C@ha */
/* 807FE1E0  3B E4 42 7C */	addi r31, r4, lit_3902@l /* 0x8080427C@l */
/* 807FE1E4  80 83 05 B8 */	lwz r4, 0x5b8(r3)
/* 807FE1E8  C0 04 00 1C */	lfs f0, 0x1c(r4)
/* 807FE1EC  FC 00 00 1E */	fctiwz f0, f0
/* 807FE1F0  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 807FE1F4  80 81 00 14 */	lwz r4, 0x14(r1)
/* 807FE1F8  A8 03 06 70 */	lha r0, 0x670(r3)
/* 807FE1FC  2C 00 00 01 */	cmpwi r0, 1
/* 807FE200  41 82 01 1C */	beq lbl_807FE31C
/* 807FE204  40 80 01 E0 */	bge lbl_807FE3E4
/* 807FE208  2C 00 00 00 */	cmpwi r0, 0
/* 807FE20C  40 80 00 08 */	bge lbl_807FE214
/* 807FE210  48 00 01 D4 */	b lbl_807FE3E4
lbl_807FE214:
/* 807FE214  38 80 00 06 */	li r4, 6
/* 807FE218  C0 3F 00 44 */	lfs f1, 0x44(r31)
/* 807FE21C  38 A0 00 00 */	li r5, 0
/* 807FE220  C0 5F 00 08 */	lfs f2, 8(r31)
/* 807FE224  4B FF F4 99 */	bl anm_init__FP10e_yh_classifUcf
/* 807FE228  7F C3 F3 78 */	mr r3, r30
/* 807FE22C  38 80 00 14 */	li r4, 0x14
/* 807FE230  C0 3F 00 44 */	lfs f1, 0x44(r31)
/* 807FE234  38 A0 00 02 */	li r5, 2
/* 807FE238  C0 5F 00 08 */	lfs f2, 8(r31)
/* 807FE23C  4B FF F5 2D */	bl leaf_anm_init__FP10e_yh_classifUcf
/* 807FE240  38 00 00 01 */	li r0, 1
/* 807FE244  B0 1E 06 70 */	sth r0, 0x670(r30)
/* 807FE248  C0 3F 00 00 */	lfs f1, 0(r31)
/* 807FE24C  4B A6 97 41 */	bl cM_rndFX__Ff
/* 807FE250  C0 1E 04 A8 */	lfs f0, 0x4a8(r30)
/* 807FE254  EC 00 08 2A */	fadds f0, f0, f1
/* 807FE258  D0 1E 06 78 */	stfs f0, 0x678(r30)
/* 807FE25C  C0 3F 00 00 */	lfs f1, 0(r31)
/* 807FE260  4B A6 97 2D */	bl cM_rndFX__Ff
/* 807FE264  C0 1E 04 B0 */	lfs f0, 0x4b0(r30)
/* 807FE268  EC 00 08 2A */	fadds f0, f0, f1
/* 807FE26C  D0 1E 06 80 */	stfs f0, 0x680(r30)
/* 807FE270  88 1E 08 54 */	lbz r0, 0x854(r30)
/* 807FE274  7C 00 07 75 */	extsb. r0, r0
/* 807FE278  41 82 00 24 */	beq lbl_807FE29C
/* 807FE27C  C0 3F 00 3C */	lfs f1, 0x3c(r31)
/* 807FE280  4B A6 97 0D */	bl cM_rndFX__Ff
/* 807FE284  C0 1F 00 64 */	lfs f0, 0x64(r31)
/* 807FE288  EC 20 08 2A */	fadds f1, f0, f1
/* 807FE28C  C0 1E 04 AC */	lfs f0, 0x4ac(r30)
/* 807FE290  EC 00 08 28 */	fsubs f0, f0, f1
/* 807FE294  D0 1E 06 7C */	stfs f0, 0x67c(r30)
/* 807FE298  48 00 00 20 */	b lbl_807FE2B8
lbl_807FE29C:
/* 807FE29C  C0 3F 00 3C */	lfs f1, 0x3c(r31)
/* 807FE2A0  4B A6 96 ED */	bl cM_rndFX__Ff
/* 807FE2A4  C0 5F 00 64 */	lfs f2, 0x64(r31)
/* 807FE2A8  C0 1E 04 AC */	lfs f0, 0x4ac(r30)
/* 807FE2AC  EC 02 00 2A */	fadds f0, f2, f0
/* 807FE2B0  EC 00 08 2A */	fadds f0, f0, f1
/* 807FE2B4  D0 1E 06 7C */	stfs f0, 0x67c(r30)
lbl_807FE2B8:
/* 807FE2B8  C0 1F 00 68 */	lfs f0, 0x68(r31)
/* 807FE2BC  D0 1E 06 90 */	stfs f0, 0x690(r30)
/* 807FE2C0  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070080@ha */
/* 807FE2C4  38 03 00 80 */	addi r0, r3, 0x0080 /* 0x00070080@l */
/* 807FE2C8  90 01 00 0C */	stw r0, 0xc(r1)
/* 807FE2CC  38 7E 05 BC */	addi r3, r30, 0x5bc
/* 807FE2D0  38 81 00 0C */	addi r4, r1, 0xc
/* 807FE2D4  38 A0 00 00 */	li r5, 0
/* 807FE2D8  38 C0 FF FF */	li r6, -1
/* 807FE2DC  81 9E 05 BC */	lwz r12, 0x5bc(r30)
/* 807FE2E0  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 807FE2E4  7D 89 03 A6 */	mtctr r12
/* 807FE2E8  4E 80 04 21 */	bctrl 
/* 807FE2EC  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007008C@ha */
/* 807FE2F0  38 03 00 8C */	addi r0, r3, 0x008C /* 0x0007008C@l */
/* 807FE2F4  90 01 00 08 */	stw r0, 8(r1)
/* 807FE2F8  38 7E 05 BC */	addi r3, r30, 0x5bc
/* 807FE2FC  38 81 00 08 */	addi r4, r1, 8
/* 807FE300  38 A0 00 00 */	li r5, 0
/* 807FE304  38 C0 FF FF */	li r6, -1
/* 807FE308  81 9E 05 BC */	lwz r12, 0x5bc(r30)
/* 807FE30C  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 807FE310  7D 89 03 A6 */	mtctr r12
/* 807FE314  4E 80 04 21 */	bctrl 
/* 807FE318  48 00 00 CC */	b lbl_807FE3E4
lbl_807FE31C:
/* 807FE31C  2C 04 00 0F */	cmpwi r4, 0xf
/* 807FE320  41 80 00 14 */	blt lbl_807FE334
/* 807FE324  2C 04 00 23 */	cmpwi r4, 0x23
/* 807FE328  41 81 00 0C */	bgt lbl_807FE334
/* 807FE32C  38 00 00 02 */	li r0, 2
/* 807FE330  98 1E 12 3D */	stb r0, 0x123d(r30)
lbl_807FE334:
/* 807FE334  38 00 00 01 */	li r0, 1
/* 807FE338  98 1E 0B 18 */	stb r0, 0xb18(r30)
/* 807FE33C  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 807FE340  C0 3E 06 78 */	lfs f1, 0x678(r30)
/* 807FE344  C0 5F 00 6C */	lfs f2, 0x6c(r31)
/* 807FE348  C0 7F 00 50 */	lfs f3, 0x50(r31)
/* 807FE34C  C0 1E 06 90 */	lfs f0, 0x690(r30)
/* 807FE350  EC 63 00 32 */	fmuls f3, f3, f0
/* 807FE354  4B A7 16 E9 */	bl cLib_addCalc2__FPffff
/* 807FE358  38 7E 04 D8 */	addi r3, r30, 0x4d8
/* 807FE35C  C0 3E 06 80 */	lfs f1, 0x680(r30)
/* 807FE360  C0 5F 00 6C */	lfs f2, 0x6c(r31)
/* 807FE364  C0 7F 00 50 */	lfs f3, 0x50(r31)
/* 807FE368  C0 1E 06 90 */	lfs f0, 0x690(r30)
/* 807FE36C  EC 63 00 32 */	fmuls f3, f3, f0
/* 807FE370  4B A7 16 CD */	bl cLib_addCalc2__FPffff
/* 807FE374  38 7E 04 D4 */	addi r3, r30, 0x4d4
/* 807FE378  C0 3E 06 7C */	lfs f1, 0x67c(r30)
/* 807FE37C  C0 5F 00 6C */	lfs f2, 0x6c(r31)
/* 807FE380  C0 7F 00 50 */	lfs f3, 0x50(r31)
/* 807FE384  C0 1E 06 90 */	lfs f0, 0x690(r30)
/* 807FE388  EC 63 00 32 */	fmuls f3, f3, f0
/* 807FE38C  4B A7 16 B1 */	bl cLib_addCalc2__FPffff
/* 807FE390  38 7E 06 90 */	addi r3, r30, 0x690
/* 807FE394  C0 3F 00 08 */	lfs f1, 8(r31)
/* 807FE398  FC 40 08 90 */	fmr f2, f1
/* 807FE39C  C0 7F 00 7C */	lfs f3, 0x7c(r31)
/* 807FE3A0  4B A7 16 9D */	bl cLib_addCalc2__FPffff
/* 807FE3A4  80 7E 05 B8 */	lwz r3, 0x5b8(r30)
/* 807FE3A8  38 80 00 01 */	li r4, 1
/* 807FE3AC  88 03 00 11 */	lbz r0, 0x11(r3)
/* 807FE3B0  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 807FE3B4  40 82 00 18 */	bne lbl_807FE3CC
/* 807FE3B8  C0 3F 00 04 */	lfs f1, 4(r31)
/* 807FE3BC  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 807FE3C0  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 807FE3C4  41 82 00 08 */	beq lbl_807FE3CC
/* 807FE3C8  38 80 00 00 */	li r4, 0
lbl_807FE3CC:
/* 807FE3CC  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 807FE3D0  41 82 00 14 */	beq lbl_807FE3E4
/* 807FE3D4  38 00 00 03 */	li r0, 3
/* 807FE3D8  B0 1E 06 6E */	sth r0, 0x66e(r30)
/* 807FE3DC  38 00 00 00 */	li r0, 0
/* 807FE3E0  B0 1E 06 70 */	sth r0, 0x670(r30)
lbl_807FE3E4:
/* 807FE3E4  88 1E 08 54 */	lbz r0, 0x854(r30)
/* 807FE3E8  7C 00 07 75 */	extsb. r0, r0
/* 807FE3EC  41 82 00 3C */	beq lbl_807FE428
/* 807FE3F0  38 7E 04 E6 */	addi r3, r30, 0x4e6
/* 807FE3F4  A8 9E 06 88 */	lha r4, 0x688(r30)
/* 807FE3F8  3C 84 00 01 */	addis r4, r4, 1
/* 807FE3FC  38 04 80 00 */	addi r0, r4, -32768
/* 807FE400  7C 04 07 34 */	extsh r4, r0
/* 807FE404  38 A0 00 08 */	li r5, 8
/* 807FE408  38 C0 08 00 */	li r6, 0x800
/* 807FE40C  4B A7 21 FD */	bl cLib_addCalcAngleS2__FPssss
/* 807FE410  38 7E 04 E4 */	addi r3, r30, 0x4e4
/* 807FE414  38 80 80 00 */	li r4, -32768
/* 807FE418  38 A0 00 08 */	li r5, 8
/* 807FE41C  38 C0 04 00 */	li r6, 0x400
/* 807FE420  4B A7 21 E9 */	bl cLib_addCalcAngleS2__FPssss
/* 807FE424  48 00 00 2C */	b lbl_807FE450
lbl_807FE428:
/* 807FE428  38 7E 04 E6 */	addi r3, r30, 0x4e6
/* 807FE42C  A8 9E 06 88 */	lha r4, 0x688(r30)
/* 807FE430  38 A0 00 08 */	li r5, 8
/* 807FE434  38 C0 08 00 */	li r6, 0x800
/* 807FE438  4B A7 21 D1 */	bl cLib_addCalcAngleS2__FPssss
/* 807FE43C  38 7E 04 E4 */	addi r3, r30, 0x4e4
/* 807FE440  38 80 00 00 */	li r4, 0
/* 807FE444  38 A0 00 08 */	li r5, 8
/* 807FE448  38 C0 04 00 */	li r6, 0x400
/* 807FE44C  4B A7 21 BD */	bl cLib_addCalcAngleS2__FPssss
lbl_807FE450:
/* 807FE450  38 7E 06 94 */	addi r3, r30, 0x694
/* 807FE454  3C 80 80 80 */	lis r4, l_HIO@ha /* 0x80804728@ha */
/* 807FE458  38 84 47 28 */	addi r4, r4, l_HIO@l /* 0x80804728@l */
/* 807FE45C  C0 24 00 10 */	lfs f1, 0x10(r4)
/* 807FE460  C0 5F 00 08 */	lfs f2, 8(r31)
/* 807FE464  C0 7F 00 6C */	lfs f3, 0x6c(r31)
/* 807FE468  4B A7 15 D5 */	bl cLib_addCalc2__FPffff
/* 807FE46C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 807FE470  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 807FE474  80 01 00 24 */	lwz r0, 0x24(r1)
/* 807FE478  7C 08 03 A6 */	mtlr r0
/* 807FE47C  38 21 00 20 */	addi r1, r1, 0x20
/* 807FE480  4E 80 00 20 */	blr 
