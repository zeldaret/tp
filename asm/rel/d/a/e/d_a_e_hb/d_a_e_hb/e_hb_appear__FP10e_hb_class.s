lbl_804FC85C:
/* 804FC85C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804FC860  7C 08 02 A6 */	mflr r0
/* 804FC864  90 01 00 24 */	stw r0, 0x24(r1)
/* 804FC868  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 804FC86C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 804FC870  7C 7E 1B 78 */	mr r30, r3
/* 804FC874  3C 80 80 50 */	lis r4, lit_3788@ha /* 0x80500B04@ha */
/* 804FC878  3B E4 0B 04 */	addi r31, r4, lit_3788@l /* 0x80500B04@l */
/* 804FC87C  80 83 05 B8 */	lwz r4, 0x5b8(r3)
/* 804FC880  C0 04 00 1C */	lfs f0, 0x1c(r4)
/* 804FC884  FC 00 00 1E */	fctiwz f0, f0
/* 804FC888  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 804FC88C  80 81 00 14 */	lwz r4, 0x14(r1)
/* 804FC890  A8 03 06 6C */	lha r0, 0x66c(r3)
/* 804FC894  2C 00 00 01 */	cmpwi r0, 1
/* 804FC898  41 82 01 1C */	beq lbl_804FC9B4
/* 804FC89C  40 80 01 E0 */	bge lbl_804FCA7C
/* 804FC8A0  2C 00 00 00 */	cmpwi r0, 0
/* 804FC8A4  40 80 00 08 */	bge lbl_804FC8AC
/* 804FC8A8  48 00 01 D4 */	b lbl_804FCA7C
lbl_804FC8AC:
/* 804FC8AC  38 80 00 05 */	li r4, 5
/* 804FC8B0  C0 3F 00 3C */	lfs f1, 0x3c(r31)
/* 804FC8B4  38 A0 00 00 */	li r5, 0
/* 804FC8B8  C0 5F 00 08 */	lfs f2, 8(r31)
/* 804FC8BC  4B FF F4 FD */	bl anm_init__FP10e_hb_classifUcf
/* 804FC8C0  7F C3 F3 78 */	mr r3, r30
/* 804FC8C4  38 80 00 13 */	li r4, 0x13
/* 804FC8C8  C0 3F 00 3C */	lfs f1, 0x3c(r31)
/* 804FC8CC  38 A0 00 02 */	li r5, 2
/* 804FC8D0  C0 5F 00 08 */	lfs f2, 8(r31)
/* 804FC8D4  4B FF F5 91 */	bl leaf_anm_init__FP10e_hb_classifUcf
/* 804FC8D8  38 00 00 01 */	li r0, 1
/* 804FC8DC  B0 1E 06 6C */	sth r0, 0x66c(r30)
/* 804FC8E0  C0 3F 00 00 */	lfs f1, 0(r31)
/* 804FC8E4  4B D6 B0 A9 */	bl cM_rndFX__Ff
/* 804FC8E8  C0 1E 04 A8 */	lfs f0, 0x4a8(r30)
/* 804FC8EC  EC 00 08 2A */	fadds f0, f0, f1
/* 804FC8F0  D0 1E 06 74 */	stfs f0, 0x674(r30)
/* 804FC8F4  C0 3F 00 00 */	lfs f1, 0(r31)
/* 804FC8F8  4B D6 B0 95 */	bl cM_rndFX__Ff
/* 804FC8FC  C0 1E 04 B0 */	lfs f0, 0x4b0(r30)
/* 804FC900  EC 00 08 2A */	fadds f0, f0, f1
/* 804FC904  D0 1E 06 7C */	stfs f0, 0x67c(r30)
/* 804FC908  88 1E 08 51 */	lbz r0, 0x851(r30)
/* 804FC90C  7C 00 07 75 */	extsb. r0, r0
/* 804FC910  41 82 00 24 */	beq lbl_804FC934
/* 804FC914  C0 3F 00 34 */	lfs f1, 0x34(r31)
/* 804FC918  4B D6 B0 75 */	bl cM_rndFX__Ff
/* 804FC91C  C0 1F 00 44 */	lfs f0, 0x44(r31)
/* 804FC920  EC 20 08 2A */	fadds f1, f0, f1
/* 804FC924  C0 1E 04 AC */	lfs f0, 0x4ac(r30)
/* 804FC928  EC 00 08 28 */	fsubs f0, f0, f1
/* 804FC92C  D0 1E 06 78 */	stfs f0, 0x678(r30)
/* 804FC930  48 00 00 20 */	b lbl_804FC950
lbl_804FC934:
/* 804FC934  C0 3F 00 34 */	lfs f1, 0x34(r31)
/* 804FC938  4B D6 B0 55 */	bl cM_rndFX__Ff
/* 804FC93C  C0 5F 00 44 */	lfs f2, 0x44(r31)
/* 804FC940  C0 1E 04 AC */	lfs f0, 0x4ac(r30)
/* 804FC944  EC 02 00 2A */	fadds f0, f2, f0
/* 804FC948  EC 00 08 2A */	fadds f0, f0, f1
/* 804FC94C  D0 1E 06 78 */	stfs f0, 0x678(r30)
lbl_804FC950:
/* 804FC950  C0 1F 00 48 */	lfs f0, 0x48(r31)
/* 804FC954  D0 1E 06 90 */	stfs f0, 0x690(r30)
/* 804FC958  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070080@ha */
/* 804FC95C  38 03 00 80 */	addi r0, r3, 0x0080 /* 0x00070080@l */
/* 804FC960  90 01 00 0C */	stw r0, 0xc(r1)
/* 804FC964  38 7E 05 BC */	addi r3, r30, 0x5bc
/* 804FC968  38 81 00 0C */	addi r4, r1, 0xc
/* 804FC96C  38 A0 00 00 */	li r5, 0
/* 804FC970  38 C0 FF FF */	li r6, -1
/* 804FC974  81 9E 05 BC */	lwz r12, 0x5bc(r30)
/* 804FC978  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 804FC97C  7D 89 03 A6 */	mtctr r12
/* 804FC980  4E 80 04 21 */	bctrl 
/* 804FC984  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007008C@ha */
/* 804FC988  38 03 00 8C */	addi r0, r3, 0x008C /* 0x0007008C@l */
/* 804FC98C  90 01 00 08 */	stw r0, 8(r1)
/* 804FC990  38 7E 05 BC */	addi r3, r30, 0x5bc
/* 804FC994  38 81 00 08 */	addi r4, r1, 8
/* 804FC998  38 A0 00 00 */	li r5, 0
/* 804FC99C  38 C0 FF FF */	li r6, -1
/* 804FC9A0  81 9E 05 BC */	lwz r12, 0x5bc(r30)
/* 804FC9A4  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 804FC9A8  7D 89 03 A6 */	mtctr r12
/* 804FC9AC  4E 80 04 21 */	bctrl 
/* 804FC9B0  48 00 00 CC */	b lbl_804FCA7C
lbl_804FC9B4:
/* 804FC9B4  2C 04 00 0F */	cmpwi r4, 0xf
/* 804FC9B8  41 80 00 14 */	blt lbl_804FC9CC
/* 804FC9BC  2C 04 00 23 */	cmpwi r4, 0x23
/* 804FC9C0  41 81 00 0C */	bgt lbl_804FC9CC
/* 804FC9C4  38 00 00 02 */	li r0, 2
/* 804FC9C8  98 1E 12 31 */	stb r0, 0x1231(r30)
lbl_804FC9CC:
/* 804FC9CC  38 00 00 01 */	li r0, 1
/* 804FC9D0  98 1E 0B 0C */	stb r0, 0xb0c(r30)
/* 804FC9D4  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 804FC9D8  C0 3E 06 74 */	lfs f1, 0x674(r30)
/* 804FC9DC  C0 5F 00 4C */	lfs f2, 0x4c(r31)
/* 804FC9E0  C0 7F 00 64 */	lfs f3, 0x64(r31)
/* 804FC9E4  C0 1E 06 90 */	lfs f0, 0x690(r30)
/* 804FC9E8  EC 63 00 32 */	fmuls f3, f3, f0
/* 804FC9EC  4B D7 30 51 */	bl cLib_addCalc2__FPffff
/* 804FC9F0  38 7E 04 D8 */	addi r3, r30, 0x4d8
/* 804FC9F4  C0 3E 06 7C */	lfs f1, 0x67c(r30)
/* 804FC9F8  C0 5F 00 4C */	lfs f2, 0x4c(r31)
/* 804FC9FC  C0 7F 00 64 */	lfs f3, 0x64(r31)
/* 804FCA00  C0 1E 06 90 */	lfs f0, 0x690(r30)
/* 804FCA04  EC 63 00 32 */	fmuls f3, f3, f0
/* 804FCA08  4B D7 30 35 */	bl cLib_addCalc2__FPffff
/* 804FCA0C  38 7E 04 D4 */	addi r3, r30, 0x4d4
/* 804FCA10  C0 3E 06 78 */	lfs f1, 0x678(r30)
/* 804FCA14  C0 5F 00 4C */	lfs f2, 0x4c(r31)
/* 804FCA18  C0 7F 00 64 */	lfs f3, 0x64(r31)
/* 804FCA1C  C0 1E 06 90 */	lfs f0, 0x690(r30)
/* 804FCA20  EC 63 00 32 */	fmuls f3, f3, f0
/* 804FCA24  4B D7 30 19 */	bl cLib_addCalc2__FPffff
/* 804FCA28  38 7E 06 90 */	addi r3, r30, 0x690
/* 804FCA2C  C0 3F 00 08 */	lfs f1, 8(r31)
/* 804FCA30  FC 40 08 90 */	fmr f2, f1
/* 804FCA34  C0 7F 00 60 */	lfs f3, 0x60(r31)
/* 804FCA38  4B D7 30 05 */	bl cLib_addCalc2__FPffff
/* 804FCA3C  80 7E 05 B8 */	lwz r3, 0x5b8(r30)
/* 804FCA40  38 80 00 01 */	li r4, 1
/* 804FCA44  88 03 00 11 */	lbz r0, 0x11(r3)
/* 804FCA48  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 804FCA4C  40 82 00 18 */	bne lbl_804FCA64
/* 804FCA50  C0 3F 00 04 */	lfs f1, 4(r31)
/* 804FCA54  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 804FCA58  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 804FCA5C  41 82 00 08 */	beq lbl_804FCA64
/* 804FCA60  38 80 00 00 */	li r4, 0
lbl_804FCA64:
/* 804FCA64  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 804FCA68  41 82 00 14 */	beq lbl_804FCA7C
/* 804FCA6C  38 00 00 03 */	li r0, 3
/* 804FCA70  B0 1E 06 6A */	sth r0, 0x66a(r30)
/* 804FCA74  38 00 00 00 */	li r0, 0
/* 804FCA78  B0 1E 06 6C */	sth r0, 0x66c(r30)
lbl_804FCA7C:
/* 804FCA7C  88 1E 08 51 */	lbz r0, 0x851(r30)
/* 804FCA80  7C 00 07 75 */	extsb. r0, r0
/* 804FCA84  41 82 00 3C */	beq lbl_804FCAC0
/* 804FCA88  38 7E 04 E6 */	addi r3, r30, 0x4e6
/* 804FCA8C  A8 9E 06 84 */	lha r4, 0x684(r30)
/* 804FCA90  3C 84 00 01 */	addis r4, r4, 1
/* 804FCA94  38 04 80 00 */	addi r0, r4, -32768
/* 804FCA98  7C 04 07 34 */	extsh r4, r0
/* 804FCA9C  38 A0 00 08 */	li r5, 8
/* 804FCAA0  38 C0 08 00 */	li r6, 0x800
/* 804FCAA4  4B D7 3B 65 */	bl cLib_addCalcAngleS2__FPssss
/* 804FCAA8  38 7E 04 E4 */	addi r3, r30, 0x4e4
/* 804FCAAC  38 80 80 00 */	li r4, -32768
/* 804FCAB0  38 A0 00 08 */	li r5, 8
/* 804FCAB4  38 C0 04 00 */	li r6, 0x400
/* 804FCAB8  4B D7 3B 51 */	bl cLib_addCalcAngleS2__FPssss
/* 804FCABC  48 00 00 2C */	b lbl_804FCAE8
lbl_804FCAC0:
/* 804FCAC0  38 7E 04 E6 */	addi r3, r30, 0x4e6
/* 804FCAC4  A8 9E 06 84 */	lha r4, 0x684(r30)
/* 804FCAC8  38 A0 00 08 */	li r5, 8
/* 804FCACC  38 C0 08 00 */	li r6, 0x800
/* 804FCAD0  4B D7 3B 39 */	bl cLib_addCalcAngleS2__FPssss
/* 804FCAD4  38 7E 04 E4 */	addi r3, r30, 0x4e4
/* 804FCAD8  38 80 00 00 */	li r4, 0
/* 804FCADC  38 A0 00 08 */	li r5, 8
/* 804FCAE0  38 C0 04 00 */	li r6, 0x400
/* 804FCAE4  4B D7 3B 25 */	bl cLib_addCalcAngleS2__FPssss
lbl_804FCAE8:
/* 804FCAE8  38 7E 06 94 */	addi r3, r30, 0x694
/* 804FCAEC  3C 80 80 50 */	lis r4, l_HIO@ha /* 0x80500E70@ha */
/* 804FCAF0  38 84 0E 70 */	addi r4, r4, l_HIO@l /* 0x80500E70@l */
/* 804FCAF4  C0 24 00 10 */	lfs f1, 0x10(r4)
/* 804FCAF8  C0 5F 00 08 */	lfs f2, 8(r31)
/* 804FCAFC  C0 7F 00 4C */	lfs f3, 0x4c(r31)
/* 804FCB00  4B D7 2F 3D */	bl cLib_addCalc2__FPffff
/* 804FCB04  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 804FCB08  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 804FCB0C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804FCB10  7C 08 03 A6 */	mtlr r0
/* 804FCB14  38 21 00 20 */	addi r1, r1, 0x20
/* 804FCB18  4E 80 00 20 */	blr 
