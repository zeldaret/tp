lbl_8069B7C0:
/* 8069B7C0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8069B7C4  7C 08 02 A6 */	mflr r0
/* 8069B7C8  90 01 00 24 */	stw r0, 0x24(r1)
/* 8069B7CC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8069B7D0  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8069B7D4  7C 7E 1B 78 */	mr r30, r3
/* 8069B7D8  3C 80 80 6A */	lis r4, lit_3902@ha
/* 8069B7DC  3B E4 19 0C */	addi r31, r4, lit_3902@l
/* 8069B7E0  80 83 05 B8 */	lwz r4, 0x5b8(r3)
/* 8069B7E4  C0 04 00 1C */	lfs f0, 0x1c(r4)
/* 8069B7E8  FC 00 00 1E */	fctiwz f0, f0
/* 8069B7EC  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 8069B7F0  80 81 00 14 */	lwz r4, 0x14(r1)
/* 8069B7F4  A8 03 06 6C */	lha r0, 0x66c(r3)
/* 8069B7F8  2C 00 00 01 */	cmpwi r0, 1
/* 8069B7FC  41 82 01 1C */	beq lbl_8069B918
/* 8069B800  40 80 01 E0 */	bge lbl_8069B9E0
/* 8069B804  2C 00 00 00 */	cmpwi r0, 0
/* 8069B808  40 80 00 08 */	bge lbl_8069B810
/* 8069B80C  48 00 01 D4 */	b lbl_8069B9E0
lbl_8069B810:
/* 8069B810  38 80 00 05 */	li r4, 5
/* 8069B814  C0 3F 00 40 */	lfs f1, 0x40(r31)
/* 8069B818  38 A0 00 00 */	li r5, 0
/* 8069B81C  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8069B820  4B FF F3 15 */	bl anm_init__FP10e_db_classifUcf
/* 8069B824  7F C3 F3 78 */	mr r3, r30
/* 8069B828  38 80 00 13 */	li r4, 0x13
/* 8069B82C  C0 3F 00 40 */	lfs f1, 0x40(r31)
/* 8069B830  38 A0 00 02 */	li r5, 2
/* 8069B834  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8069B838  4B FF F3 A9 */	bl leaf_anm_init__FP10e_db_classifUcf
/* 8069B83C  38 00 00 01 */	li r0, 1
/* 8069B840  B0 1E 06 6C */	sth r0, 0x66c(r30)
/* 8069B844  C0 3F 00 00 */	lfs f1, 0(r31)
/* 8069B848  4B BC C1 44 */	b cM_rndFX__Ff
/* 8069B84C  C0 1E 04 A8 */	lfs f0, 0x4a8(r30)
/* 8069B850  EC 00 08 2A */	fadds f0, f0, f1
/* 8069B854  D0 1E 06 74 */	stfs f0, 0x674(r30)
/* 8069B858  C0 3F 00 00 */	lfs f1, 0(r31)
/* 8069B85C  4B BC C1 30 */	b cM_rndFX__Ff
/* 8069B860  C0 1E 04 B0 */	lfs f0, 0x4b0(r30)
/* 8069B864  EC 00 08 2A */	fadds f0, f0, f1
/* 8069B868  D0 1E 06 7C */	stfs f0, 0x67c(r30)
/* 8069B86C  88 1E 08 50 */	lbz r0, 0x850(r30)
/* 8069B870  7C 00 07 75 */	extsb. r0, r0
/* 8069B874  41 82 00 24 */	beq lbl_8069B898
/* 8069B878  C0 3F 00 38 */	lfs f1, 0x38(r31)
/* 8069B87C  4B BC C1 10 */	b cM_rndFX__Ff
/* 8069B880  C0 1F 00 60 */	lfs f0, 0x60(r31)
/* 8069B884  EC 20 08 2A */	fadds f1, f0, f1
/* 8069B888  C0 1E 04 AC */	lfs f0, 0x4ac(r30)
/* 8069B88C  EC 00 08 28 */	fsubs f0, f0, f1
/* 8069B890  D0 1E 06 78 */	stfs f0, 0x678(r30)
/* 8069B894  48 00 00 20 */	b lbl_8069B8B4
lbl_8069B898:
/* 8069B898  C0 3F 00 38 */	lfs f1, 0x38(r31)
/* 8069B89C  4B BC C0 F0 */	b cM_rndFX__Ff
/* 8069B8A0  C0 5F 00 60 */	lfs f2, 0x60(r31)
/* 8069B8A4  C0 1E 04 AC */	lfs f0, 0x4ac(r30)
/* 8069B8A8  EC 02 00 2A */	fadds f0, f2, f0
/* 8069B8AC  EC 00 08 2A */	fadds f0, f0, f1
/* 8069B8B0  D0 1E 06 78 */	stfs f0, 0x678(r30)
lbl_8069B8B4:
/* 8069B8B4  C0 1F 00 64 */	lfs f0, 0x64(r31)
/* 8069B8B8  D0 1E 06 8C */	stfs f0, 0x68c(r30)
/* 8069B8BC  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070080@ha */
/* 8069B8C0  38 03 00 80 */	addi r0, r3, 0x0080 /* 0x00070080@l */
/* 8069B8C4  90 01 00 0C */	stw r0, 0xc(r1)
/* 8069B8C8  38 7E 05 BC */	addi r3, r30, 0x5bc
/* 8069B8CC  38 81 00 0C */	addi r4, r1, 0xc
/* 8069B8D0  38 A0 00 00 */	li r5, 0
/* 8069B8D4  38 C0 FF FF */	li r6, -1
/* 8069B8D8  81 9E 05 BC */	lwz r12, 0x5bc(r30)
/* 8069B8DC  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8069B8E0  7D 89 03 A6 */	mtctr r12
/* 8069B8E4  4E 80 04 21 */	bctrl 
/* 8069B8E8  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007008C@ha */
/* 8069B8EC  38 03 00 8C */	addi r0, r3, 0x008C /* 0x0007008C@l */
/* 8069B8F0  90 01 00 08 */	stw r0, 8(r1)
/* 8069B8F4  38 7E 05 BC */	addi r3, r30, 0x5bc
/* 8069B8F8  38 81 00 08 */	addi r4, r1, 8
/* 8069B8FC  38 A0 00 00 */	li r5, 0
/* 8069B900  38 C0 FF FF */	li r6, -1
/* 8069B904  81 9E 05 BC */	lwz r12, 0x5bc(r30)
/* 8069B908  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8069B90C  7D 89 03 A6 */	mtctr r12
/* 8069B910  4E 80 04 21 */	bctrl 
/* 8069B914  48 00 00 CC */	b lbl_8069B9E0
lbl_8069B918:
/* 8069B918  2C 04 00 0F */	cmpwi r4, 0xf
/* 8069B91C  41 80 00 14 */	blt lbl_8069B930
/* 8069B920  2C 04 00 23 */	cmpwi r4, 0x23
/* 8069B924  41 81 00 0C */	bgt lbl_8069B930
/* 8069B928  38 00 00 02 */	li r0, 2
/* 8069B92C  98 1E 12 39 */	stb r0, 0x1239(r30)
lbl_8069B930:
/* 8069B930  38 00 00 01 */	li r0, 1
/* 8069B934  98 1E 0B 14 */	stb r0, 0xb14(r30)
/* 8069B938  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 8069B93C  C0 3E 06 74 */	lfs f1, 0x674(r30)
/* 8069B940  C0 5F 00 68 */	lfs f2, 0x68(r31)
/* 8069B944  C0 7F 00 4C */	lfs f3, 0x4c(r31)
/* 8069B948  C0 1E 06 8C */	lfs f0, 0x68c(r30)
/* 8069B94C  EC 63 00 32 */	fmuls f3, f3, f0
/* 8069B950  4B BD 40 EC */	b cLib_addCalc2__FPffff
/* 8069B954  38 7E 04 D8 */	addi r3, r30, 0x4d8
/* 8069B958  C0 3E 06 7C */	lfs f1, 0x67c(r30)
/* 8069B95C  C0 5F 00 68 */	lfs f2, 0x68(r31)
/* 8069B960  C0 7F 00 4C */	lfs f3, 0x4c(r31)
/* 8069B964  C0 1E 06 8C */	lfs f0, 0x68c(r30)
/* 8069B968  EC 63 00 32 */	fmuls f3, f3, f0
/* 8069B96C  4B BD 40 D0 */	b cLib_addCalc2__FPffff
/* 8069B970  38 7E 04 D4 */	addi r3, r30, 0x4d4
/* 8069B974  C0 3E 06 78 */	lfs f1, 0x678(r30)
/* 8069B978  C0 5F 00 68 */	lfs f2, 0x68(r31)
/* 8069B97C  C0 7F 00 4C */	lfs f3, 0x4c(r31)
/* 8069B980  C0 1E 06 8C */	lfs f0, 0x68c(r30)
/* 8069B984  EC 63 00 32 */	fmuls f3, f3, f0
/* 8069B988  4B BD 40 B4 */	b cLib_addCalc2__FPffff
/* 8069B98C  38 7E 06 8C */	addi r3, r30, 0x68c
/* 8069B990  C0 3F 00 08 */	lfs f1, 8(r31)
/* 8069B994  FC 40 08 90 */	fmr f2, f1
/* 8069B998  C0 7F 00 78 */	lfs f3, 0x78(r31)
/* 8069B99C  4B BD 40 A0 */	b cLib_addCalc2__FPffff
/* 8069B9A0  80 7E 05 B8 */	lwz r3, 0x5b8(r30)
/* 8069B9A4  38 80 00 01 */	li r4, 1
/* 8069B9A8  88 03 00 11 */	lbz r0, 0x11(r3)
/* 8069B9AC  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8069B9B0  40 82 00 18 */	bne lbl_8069B9C8
/* 8069B9B4  C0 3F 00 04 */	lfs f1, 4(r31)
/* 8069B9B8  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 8069B9BC  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8069B9C0  41 82 00 08 */	beq lbl_8069B9C8
/* 8069B9C4  38 80 00 00 */	li r4, 0
lbl_8069B9C8:
/* 8069B9C8  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 8069B9CC  41 82 00 14 */	beq lbl_8069B9E0
/* 8069B9D0  38 00 00 03 */	li r0, 3
/* 8069B9D4  B0 1E 06 6A */	sth r0, 0x66a(r30)
/* 8069B9D8  38 00 00 00 */	li r0, 0
/* 8069B9DC  B0 1E 06 6C */	sth r0, 0x66c(r30)
lbl_8069B9E0:
/* 8069B9E0  88 1E 08 50 */	lbz r0, 0x850(r30)
/* 8069B9E4  7C 00 07 75 */	extsb. r0, r0
/* 8069B9E8  41 82 00 3C */	beq lbl_8069BA24
/* 8069B9EC  38 7E 04 E6 */	addi r3, r30, 0x4e6
/* 8069B9F0  A8 9E 06 84 */	lha r4, 0x684(r30)
/* 8069B9F4  3C 84 00 01 */	addis r4, r4, 1
/* 8069B9F8  38 04 80 00 */	addi r0, r4, -32768
/* 8069B9FC  7C 04 07 34 */	extsh r4, r0
/* 8069BA00  38 A0 00 08 */	li r5, 8
/* 8069BA04  38 C0 08 00 */	li r6, 0x800
/* 8069BA08  4B BD 4C 00 */	b cLib_addCalcAngleS2__FPssss
/* 8069BA0C  38 7E 04 E4 */	addi r3, r30, 0x4e4
/* 8069BA10  38 80 80 00 */	li r4, -32768
/* 8069BA14  38 A0 00 08 */	li r5, 8
/* 8069BA18  38 C0 04 00 */	li r6, 0x400
/* 8069BA1C  4B BD 4B EC */	b cLib_addCalcAngleS2__FPssss
/* 8069BA20  48 00 00 2C */	b lbl_8069BA4C
lbl_8069BA24:
/* 8069BA24  38 7E 04 E6 */	addi r3, r30, 0x4e6
/* 8069BA28  A8 9E 06 84 */	lha r4, 0x684(r30)
/* 8069BA2C  38 A0 00 08 */	li r5, 8
/* 8069BA30  38 C0 08 00 */	li r6, 0x800
/* 8069BA34  4B BD 4B D4 */	b cLib_addCalcAngleS2__FPssss
/* 8069BA38  38 7E 04 E4 */	addi r3, r30, 0x4e4
/* 8069BA3C  38 80 00 00 */	li r4, 0
/* 8069BA40  38 A0 00 08 */	li r5, 8
/* 8069BA44  38 C0 04 00 */	li r6, 0x400
/* 8069BA48  4B BD 4B C0 */	b cLib_addCalcAngleS2__FPssss
lbl_8069BA4C:
/* 8069BA4C  38 7E 06 90 */	addi r3, r30, 0x690
/* 8069BA50  3C 80 80 6A */	lis r4, l_HIO@ha
/* 8069BA54  38 84 1D A8 */	addi r4, r4, l_HIO@l
/* 8069BA58  C0 24 00 10 */	lfs f1, 0x10(r4)
/* 8069BA5C  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8069BA60  C0 7F 00 68 */	lfs f3, 0x68(r31)
/* 8069BA64  4B BD 3F D8 */	b cLib_addCalc2__FPffff
/* 8069BA68  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8069BA6C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8069BA70  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8069BA74  7C 08 03 A6 */	mtlr r0
/* 8069BA78  38 21 00 20 */	addi r1, r1, 0x20
/* 8069BA7C  4E 80 00 20 */	blr 
