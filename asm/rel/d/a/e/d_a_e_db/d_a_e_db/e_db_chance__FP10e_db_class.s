lbl_8069D234:
/* 8069D234  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8069D238  7C 08 02 A6 */	mflr r0
/* 8069D23C  90 01 00 34 */	stw r0, 0x34(r1)
/* 8069D240  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8069D244  93 C1 00 28 */	stw r30, 0x28(r1)
/* 8069D248  7C 7E 1B 78 */	mr r30, r3
/* 8069D24C  3C 80 80 6A */	lis r4, lit_3902@ha
/* 8069D250  3B E4 19 0C */	addi r31, r4, lit_3902@l
/* 8069D254  A8 03 06 6C */	lha r0, 0x66c(r3)
/* 8069D258  2C 00 00 01 */	cmpwi r0, 1
/* 8069D25C  41 82 00 88 */	beq lbl_8069D2E4
/* 8069D260  40 80 00 10 */	bge lbl_8069D270
/* 8069D264  2C 00 00 00 */	cmpwi r0, 0
/* 8069D268  40 80 00 14 */	bge lbl_8069D27C
/* 8069D26C  48 00 02 64 */	b lbl_8069D4D0
lbl_8069D270:
/* 8069D270  2C 00 00 03 */	cmpwi r0, 3
/* 8069D274  40 80 02 5C */	bge lbl_8069D4D0
/* 8069D278  48 00 02 10 */	b lbl_8069D488
lbl_8069D27C:
/* 8069D27C  88 1E 08 50 */	lbz r0, 0x850(r30)
/* 8069D280  7C 00 07 75 */	extsb. r0, r0
/* 8069D284  41 82 00 1C */	beq lbl_8069D2A0
/* 8069D288  38 80 00 0A */	li r4, 0xa
/* 8069D28C  C0 3F 00 50 */	lfs f1, 0x50(r31)
/* 8069D290  38 A0 00 02 */	li r5, 2
/* 8069D294  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8069D298  4B FF D8 9D */	bl anm_init__FP10e_db_classifUcf
/* 8069D29C  48 00 00 18 */	b lbl_8069D2B4
lbl_8069D2A0:
/* 8069D2A0  38 80 00 09 */	li r4, 9
/* 8069D2A4  C0 3F 00 50 */	lfs f1, 0x50(r31)
/* 8069D2A8  38 A0 00 02 */	li r5, 2
/* 8069D2AC  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8069D2B0  4B FF D8 85 */	bl anm_init__FP10e_db_classifUcf
lbl_8069D2B4:
/* 8069D2B4  7F C3 F3 78 */	mr r3, r30
/* 8069D2B8  38 80 00 14 */	li r4, 0x14
/* 8069D2BC  C0 3F 00 50 */	lfs f1, 0x50(r31)
/* 8069D2C0  38 A0 00 02 */	li r5, 2
/* 8069D2C4  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8069D2C8  4B FF D9 19 */	bl leaf_anm_init__FP10e_db_classifUcf
/* 8069D2CC  38 00 00 01 */	li r0, 1
/* 8069D2D0  B0 1E 06 6C */	sth r0, 0x66c(r30)
/* 8069D2D4  38 00 00 3C */	li r0, 0x3c
/* 8069D2D8  B0 1E 06 94 */	sth r0, 0x694(r30)
/* 8069D2DC  C0 1F 00 04 */	lfs f0, 4(r31)
/* 8069D2E0  D0 1E 06 8C */	stfs f0, 0x68c(r30)
lbl_8069D2E4:
/* 8069D2E4  A8 9E 06 68 */	lha r4, 0x668(r30)
/* 8069D2E8  1C 04 03 84 */	mulli r0, r4, 0x384
/* 8069D2EC  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 8069D2F0  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 8069D2F4  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 8069D2F8  7C 23 04 2E */	lfsx f1, r3, r0
/* 8069D2FC  C0 1F 00 48 */	lfs f0, 0x48(r31)
/* 8069D300  EC 20 00 72 */	fmuls f1, f0, f1
/* 8069D304  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 8069D308  1C 04 03 E8 */	mulli r0, r4, 0x3e8
/* 8069D30C  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 8069D310  7C 63 02 14 */	add r3, r3, r0
/* 8069D314  C0 43 00 04 */	lfs f2, 4(r3)
/* 8069D318  EC 00 00 B2 */	fmuls f0, f0, f2
/* 8069D31C  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 8069D320  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 8069D324  C0 1E 04 A8 */	lfs f0, 0x4a8(r30)
/* 8069D328  EC 20 08 2A */	fadds f1, f0, f1
/* 8069D32C  C0 5F 00 68 */	lfs f2, 0x68(r31)
/* 8069D330  C0 7F 00 54 */	lfs f3, 0x54(r31)
/* 8069D334  C0 1E 06 8C */	lfs f0, 0x68c(r30)
/* 8069D338  EC 63 00 32 */	fmuls f3, f3, f0
/* 8069D33C  4B BD 27 00 */	b cLib_addCalc2__FPffff
/* 8069D340  38 7E 04 D8 */	addi r3, r30, 0x4d8
/* 8069D344  C0 3E 04 B0 */	lfs f1, 0x4b0(r30)
/* 8069D348  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 8069D34C  EC 21 00 2A */	fadds f1, f1, f0
/* 8069D350  C0 5F 00 68 */	lfs f2, 0x68(r31)
/* 8069D354  C0 7F 00 54 */	lfs f3, 0x54(r31)
/* 8069D358  C0 1E 06 8C */	lfs f0, 0x68c(r30)
/* 8069D35C  EC 63 00 32 */	fmuls f3, f3, f0
/* 8069D360  4B BD 26 DC */	b cLib_addCalc2__FPffff
/* 8069D364  88 1E 08 50 */	lbz r0, 0x850(r30)
/* 8069D368  7C 00 07 75 */	extsb. r0, r0
/* 8069D36C  41 82 00 2C */	beq lbl_8069D398
/* 8069D370  38 7E 04 D4 */	addi r3, r30, 0x4d4
/* 8069D374  C0 3E 04 AC */	lfs f1, 0x4ac(r30)
/* 8069D378  C0 1F 00 CC */	lfs f0, 0xcc(r31)
/* 8069D37C  EC 21 00 28 */	fsubs f1, f1, f0
/* 8069D380  C0 5F 00 68 */	lfs f2, 0x68(r31)
/* 8069D384  C0 7F 00 54 */	lfs f3, 0x54(r31)
/* 8069D388  C0 1E 06 8C */	lfs f0, 0x68c(r30)
/* 8069D38C  EC 63 00 32 */	fmuls f3, f3, f0
/* 8069D390  4B BD 26 AC */	b cLib_addCalc2__FPffff
/* 8069D394  48 00 00 28 */	b lbl_8069D3BC
lbl_8069D398:
/* 8069D398  38 7E 04 D4 */	addi r3, r30, 0x4d4
/* 8069D39C  C0 3F 00 CC */	lfs f1, 0xcc(r31)
/* 8069D3A0  C0 1E 04 AC */	lfs f0, 0x4ac(r30)
/* 8069D3A4  EC 21 00 2A */	fadds f1, f1, f0
/* 8069D3A8  C0 5F 00 68 */	lfs f2, 0x68(r31)
/* 8069D3AC  C0 7F 00 54 */	lfs f3, 0x54(r31)
/* 8069D3B0  C0 1E 06 8C */	lfs f0, 0x68c(r30)
/* 8069D3B4  EC 63 00 32 */	fmuls f3, f3, f0
/* 8069D3B8  4B BD 26 84 */	b cLib_addCalc2__FPffff
lbl_8069D3BC:
/* 8069D3BC  38 7E 06 8C */	addi r3, r30, 0x68c
/* 8069D3C0  C0 3F 00 08 */	lfs f1, 8(r31)
/* 8069D3C4  FC 40 08 90 */	fmr f2, f1
/* 8069D3C8  C0 7F 00 68 */	lfs f3, 0x68(r31)
/* 8069D3CC  4B BD 26 70 */	b cLib_addCalc2__FPffff
/* 8069D3D0  A8 1E 06 94 */	lha r0, 0x694(r30)
/* 8069D3D4  2C 00 00 32 */	cmpwi r0, 0x32
/* 8069D3D8  41 81 00 38 */	bgt lbl_8069D410
/* 8069D3DC  2C 00 00 0A */	cmpwi r0, 0xa
/* 8069D3E0  41 80 00 30 */	blt lbl_8069D410
/* 8069D3E4  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070088@ha */
/* 8069D3E8  38 03 00 88 */	addi r0, r3, 0x0088 /* 0x00070088@l */
/* 8069D3EC  90 01 00 0C */	stw r0, 0xc(r1)
/* 8069D3F0  38 7E 05 BC */	addi r3, r30, 0x5bc
/* 8069D3F4  38 81 00 0C */	addi r4, r1, 0xc
/* 8069D3F8  38 A0 00 00 */	li r5, 0
/* 8069D3FC  38 C0 FF FF */	li r6, -1
/* 8069D400  81 9E 05 BC */	lwz r12, 0x5bc(r30)
/* 8069D404  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 8069D408  7D 89 03 A6 */	mtctr r12
/* 8069D40C  4E 80 04 21 */	bctrl 
lbl_8069D410:
/* 8069D410  A8 1E 06 94 */	lha r0, 0x694(r30)
/* 8069D414  2C 00 00 00 */	cmpwi r0, 0
/* 8069D418  40 82 00 B8 */	bne lbl_8069D4D0
/* 8069D41C  A8 7E 06 6C */	lha r3, 0x66c(r30)
/* 8069D420  38 03 00 01 */	addi r0, r3, 1
/* 8069D424  B0 1E 06 6C */	sth r0, 0x66c(r30)
/* 8069D428  7F C3 F3 78 */	mr r3, r30
/* 8069D42C  38 80 00 11 */	li r4, 0x11
/* 8069D430  C0 3F 00 D0 */	lfs f1, 0xd0(r31)
/* 8069D434  38 A0 00 00 */	li r5, 0
/* 8069D438  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8069D43C  4B FF D6 F9 */	bl anm_init__FP10e_db_classifUcf
/* 8069D440  7F C3 F3 78 */	mr r3, r30
/* 8069D444  38 80 00 13 */	li r4, 0x13
/* 8069D448  C0 3F 00 D0 */	lfs f1, 0xd0(r31)
/* 8069D44C  38 A0 00 02 */	li r5, 2
/* 8069D450  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8069D454  4B FF D7 8D */	bl leaf_anm_init__FP10e_db_classifUcf
/* 8069D458  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070080@ha */
/* 8069D45C  38 03 00 80 */	addi r0, r3, 0x0080 /* 0x00070080@l */
/* 8069D460  90 01 00 08 */	stw r0, 8(r1)
/* 8069D464  38 7E 05 BC */	addi r3, r30, 0x5bc
/* 8069D468  38 81 00 08 */	addi r4, r1, 8
/* 8069D46C  38 A0 00 00 */	li r5, 0
/* 8069D470  38 C0 FF FF */	li r6, -1
/* 8069D474  81 9E 05 BC */	lwz r12, 0x5bc(r30)
/* 8069D478  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8069D47C  7D 89 03 A6 */	mtctr r12
/* 8069D480  4E 80 04 21 */	bctrl 
/* 8069D484  48 00 00 4C */	b lbl_8069D4D0
lbl_8069D488:
/* 8069D488  80 7E 05 B8 */	lwz r3, 0x5b8(r30)
/* 8069D48C  38 80 00 01 */	li r4, 1
/* 8069D490  88 03 00 11 */	lbz r0, 0x11(r3)
/* 8069D494  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8069D498  40 82 00 18 */	bne lbl_8069D4B0
/* 8069D49C  C0 3F 00 04 */	lfs f1, 4(r31)
/* 8069D4A0  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 8069D4A4  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8069D4A8  41 82 00 08 */	beq lbl_8069D4B0
/* 8069D4AC  38 80 00 00 */	li r4, 0
lbl_8069D4B0:
/* 8069D4B0  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 8069D4B4  41 82 00 1C */	beq lbl_8069D4D0
/* 8069D4B8  38 00 00 03 */	li r0, 3
/* 8069D4BC  B0 1E 06 6A */	sth r0, 0x66a(r30)
/* 8069D4C0  38 00 00 00 */	li r0, 0
/* 8069D4C4  B0 1E 06 6C */	sth r0, 0x66c(r30)
/* 8069D4C8  C0 1F 00 04 */	lfs f0, 4(r31)
/* 8069D4CC  D0 1E 08 48 */	stfs f0, 0x848(r30)
lbl_8069D4D0:
/* 8069D4D0  88 1E 08 50 */	lbz r0, 0x850(r30)
/* 8069D4D4  7C 00 07 75 */	extsb. r0, r0
/* 8069D4D8  41 82 00 1C */	beq lbl_8069D4F4
/* 8069D4DC  38 7E 04 E4 */	addi r3, r30, 0x4e4
/* 8069D4E0  38 80 40 00 */	li r4, 0x4000
/* 8069D4E4  38 A0 00 04 */	li r5, 4
/* 8069D4E8  38 C0 04 00 */	li r6, 0x400
/* 8069D4EC  4B BD 31 1C */	b cLib_addCalcAngleS2__FPssss
/* 8069D4F0  48 00 00 18 */	b lbl_8069D508
lbl_8069D4F4:
/* 8069D4F4  38 7E 04 E4 */	addi r3, r30, 0x4e4
/* 8069D4F8  38 80 C0 00 */	li r4, -16384
/* 8069D4FC  38 A0 00 04 */	li r5, 4
/* 8069D500  38 C0 04 00 */	li r6, 0x400
/* 8069D504  4B BD 31 04 */	b cLib_addCalcAngleS2__FPssss
lbl_8069D508:
/* 8069D508  38 7E 08 44 */	addi r3, r30, 0x844
/* 8069D50C  C0 3F 00 2C */	lfs f1, 0x2c(r31)
/* 8069D510  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8069D514  C0 7F 00 78 */	lfs f3, 0x78(r31)
/* 8069D518  4B BD 25 24 */	b cLib_addCalc2__FPffff
/* 8069D51C  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 8069D520  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 8069D524  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8069D528  7C 08 03 A6 */	mtlr r0
/* 8069D52C  38 21 00 30 */	addi r1, r1, 0x30
/* 8069D530  4E 80 00 20 */	blr 
