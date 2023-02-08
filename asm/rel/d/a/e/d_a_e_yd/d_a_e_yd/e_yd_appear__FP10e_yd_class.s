lbl_807F3784:
/* 807F3784  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 807F3788  7C 08 02 A6 */	mflr r0
/* 807F378C  90 01 00 24 */	stw r0, 0x24(r1)
/* 807F3790  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 807F3794  93 C1 00 18 */	stw r30, 0x18(r1)
/* 807F3798  7C 7E 1B 78 */	mr r30, r3
/* 807F379C  3C 80 80 7F */	lis r4, lit_3788@ha /* 0x807F7A00@ha */
/* 807F37A0  3B E4 7A 00 */	addi r31, r4, lit_3788@l /* 0x807F7A00@l */
/* 807F37A4  80 83 05 B8 */	lwz r4, 0x5b8(r3)
/* 807F37A8  C0 04 00 1C */	lfs f0, 0x1c(r4)
/* 807F37AC  FC 00 00 1E */	fctiwz f0, f0
/* 807F37B0  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 807F37B4  80 81 00 14 */	lwz r4, 0x14(r1)
/* 807F37B8  A8 03 06 70 */	lha r0, 0x670(r3)
/* 807F37BC  2C 00 00 01 */	cmpwi r0, 1
/* 807F37C0  41 82 01 1C */	beq lbl_807F38DC
/* 807F37C4  40 80 01 E0 */	bge lbl_807F39A4
/* 807F37C8  2C 00 00 00 */	cmpwi r0, 0
/* 807F37CC  40 80 00 08 */	bge lbl_807F37D4
/* 807F37D0  48 00 01 D4 */	b lbl_807F39A4
lbl_807F37D4:
/* 807F37D4  38 80 00 06 */	li r4, 6
/* 807F37D8  C0 3F 00 40 */	lfs f1, 0x40(r31)
/* 807F37DC  38 A0 00 00 */	li r5, 0
/* 807F37E0  C0 5F 00 08 */	lfs f2, 8(r31)
/* 807F37E4  4B FF F6 3D */	bl anm_init__FP10e_yd_classifUcf
/* 807F37E8  7F C3 F3 78 */	mr r3, r30
/* 807F37EC  38 80 00 14 */	li r4, 0x14
/* 807F37F0  C0 3F 00 40 */	lfs f1, 0x40(r31)
/* 807F37F4  38 A0 00 02 */	li r5, 2
/* 807F37F8  C0 5F 00 08 */	lfs f2, 8(r31)
/* 807F37FC  4B FF F6 D1 */	bl leaf_anm_init__FP10e_yd_classifUcf
/* 807F3800  38 00 00 01 */	li r0, 1
/* 807F3804  B0 1E 06 70 */	sth r0, 0x670(r30)
/* 807F3808  C0 3F 00 00 */	lfs f1, 0(r31)
/* 807F380C  4B A7 41 81 */	bl cM_rndFX__Ff
/* 807F3810  C0 1E 04 A8 */	lfs f0, 0x4a8(r30)
/* 807F3814  EC 00 08 2A */	fadds f0, f0, f1
/* 807F3818  D0 1E 06 78 */	stfs f0, 0x678(r30)
/* 807F381C  C0 3F 00 00 */	lfs f1, 0(r31)
/* 807F3820  4B A7 41 6D */	bl cM_rndFX__Ff
/* 807F3824  C0 1E 04 B0 */	lfs f0, 0x4b0(r30)
/* 807F3828  EC 00 08 2A */	fadds f0, f0, f1
/* 807F382C  D0 1E 06 80 */	stfs f0, 0x680(r30)
/* 807F3830  88 1E 08 55 */	lbz r0, 0x855(r30)
/* 807F3834  7C 00 07 75 */	extsb. r0, r0
/* 807F3838  41 82 00 24 */	beq lbl_807F385C
/* 807F383C  C0 3F 00 38 */	lfs f1, 0x38(r31)
/* 807F3840  4B A7 41 4D */	bl cM_rndFX__Ff
/* 807F3844  C0 1F 00 48 */	lfs f0, 0x48(r31)
/* 807F3848  EC 20 08 2A */	fadds f1, f0, f1
/* 807F384C  C0 1E 04 AC */	lfs f0, 0x4ac(r30)
/* 807F3850  EC 00 08 28 */	fsubs f0, f0, f1
/* 807F3854  D0 1E 06 7C */	stfs f0, 0x67c(r30)
/* 807F3858  48 00 00 20 */	b lbl_807F3878
lbl_807F385C:
/* 807F385C  C0 3F 00 38 */	lfs f1, 0x38(r31)
/* 807F3860  4B A7 41 2D */	bl cM_rndFX__Ff
/* 807F3864  C0 5F 00 48 */	lfs f2, 0x48(r31)
/* 807F3868  C0 1E 04 AC */	lfs f0, 0x4ac(r30)
/* 807F386C  EC 02 00 2A */	fadds f0, f2, f0
/* 807F3870  EC 00 08 2A */	fadds f0, f0, f1
/* 807F3874  D0 1E 06 7C */	stfs f0, 0x67c(r30)
lbl_807F3878:
/* 807F3878  C0 1F 00 4C */	lfs f0, 0x4c(r31)
/* 807F387C  D0 1E 06 94 */	stfs f0, 0x694(r30)
/* 807F3880  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070080@ha */
/* 807F3884  38 03 00 80 */	addi r0, r3, 0x0080 /* 0x00070080@l */
/* 807F3888  90 01 00 0C */	stw r0, 0xc(r1)
/* 807F388C  38 7E 05 BC */	addi r3, r30, 0x5bc
/* 807F3890  38 81 00 0C */	addi r4, r1, 0xc
/* 807F3894  38 A0 00 00 */	li r5, 0
/* 807F3898  38 C0 FF FF */	li r6, -1
/* 807F389C  81 9E 05 BC */	lwz r12, 0x5bc(r30)
/* 807F38A0  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 807F38A4  7D 89 03 A6 */	mtctr r12
/* 807F38A8  4E 80 04 21 */	bctrl 
/* 807F38AC  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007008C@ha */
/* 807F38B0  38 03 00 8C */	addi r0, r3, 0x008C /* 0x0007008C@l */
/* 807F38B4  90 01 00 08 */	stw r0, 8(r1)
/* 807F38B8  38 7E 05 BC */	addi r3, r30, 0x5bc
/* 807F38BC  38 81 00 08 */	addi r4, r1, 8
/* 807F38C0  38 A0 00 00 */	li r5, 0
/* 807F38C4  38 C0 FF FF */	li r6, -1
/* 807F38C8  81 9E 05 BC */	lwz r12, 0x5bc(r30)
/* 807F38CC  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 807F38D0  7D 89 03 A6 */	mtctr r12
/* 807F38D4  4E 80 04 21 */	bctrl 
/* 807F38D8  48 00 00 CC */	b lbl_807F39A4
lbl_807F38DC:
/* 807F38DC  2C 04 00 0F */	cmpwi r4, 0xf
/* 807F38E0  41 80 00 14 */	blt lbl_807F38F4
/* 807F38E4  2C 04 00 23 */	cmpwi r4, 0x23
/* 807F38E8  41 81 00 0C */	bgt lbl_807F38F4
/* 807F38EC  38 00 00 02 */	li r0, 2
/* 807F38F0  98 1E 12 35 */	stb r0, 0x1235(r30)
lbl_807F38F4:
/* 807F38F4  38 00 00 01 */	li r0, 1
/* 807F38F8  98 1E 0B 10 */	stb r0, 0xb10(r30)
/* 807F38FC  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 807F3900  C0 3E 06 78 */	lfs f1, 0x678(r30)
/* 807F3904  C0 5F 00 50 */	lfs f2, 0x50(r31)
/* 807F3908  C0 7F 00 68 */	lfs f3, 0x68(r31)
/* 807F390C  C0 1E 06 94 */	lfs f0, 0x694(r30)
/* 807F3910  EC 63 00 32 */	fmuls f3, f3, f0
/* 807F3914  4B A7 C1 29 */	bl cLib_addCalc2__FPffff
/* 807F3918  38 7E 04 D8 */	addi r3, r30, 0x4d8
/* 807F391C  C0 3E 06 80 */	lfs f1, 0x680(r30)
/* 807F3920  C0 5F 00 50 */	lfs f2, 0x50(r31)
/* 807F3924  C0 7F 00 68 */	lfs f3, 0x68(r31)
/* 807F3928  C0 1E 06 94 */	lfs f0, 0x694(r30)
/* 807F392C  EC 63 00 32 */	fmuls f3, f3, f0
/* 807F3930  4B A7 C1 0D */	bl cLib_addCalc2__FPffff
/* 807F3934  38 7E 04 D4 */	addi r3, r30, 0x4d4
/* 807F3938  C0 3E 06 7C */	lfs f1, 0x67c(r30)
/* 807F393C  C0 5F 00 50 */	lfs f2, 0x50(r31)
/* 807F3940  C0 7F 00 68 */	lfs f3, 0x68(r31)
/* 807F3944  C0 1E 06 94 */	lfs f0, 0x694(r30)
/* 807F3948  EC 63 00 32 */	fmuls f3, f3, f0
/* 807F394C  4B A7 C0 F1 */	bl cLib_addCalc2__FPffff
/* 807F3950  38 7E 06 94 */	addi r3, r30, 0x694
/* 807F3954  C0 3F 00 08 */	lfs f1, 8(r31)
/* 807F3958  FC 40 08 90 */	fmr f2, f1
/* 807F395C  C0 7F 00 64 */	lfs f3, 0x64(r31)
/* 807F3960  4B A7 C0 DD */	bl cLib_addCalc2__FPffff
/* 807F3964  80 7E 05 B8 */	lwz r3, 0x5b8(r30)
/* 807F3968  38 80 00 01 */	li r4, 1
/* 807F396C  88 03 00 11 */	lbz r0, 0x11(r3)
/* 807F3970  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 807F3974  40 82 00 18 */	bne lbl_807F398C
/* 807F3978  C0 3F 00 04 */	lfs f1, 4(r31)
/* 807F397C  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 807F3980  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 807F3984  41 82 00 08 */	beq lbl_807F398C
/* 807F3988  38 80 00 00 */	li r4, 0
lbl_807F398C:
/* 807F398C  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 807F3990  41 82 00 14 */	beq lbl_807F39A4
/* 807F3994  38 00 00 03 */	li r0, 3
/* 807F3998  B0 1E 06 6E */	sth r0, 0x66e(r30)
/* 807F399C  38 00 00 00 */	li r0, 0
/* 807F39A0  B0 1E 06 70 */	sth r0, 0x670(r30)
lbl_807F39A4:
/* 807F39A4  88 1E 08 55 */	lbz r0, 0x855(r30)
/* 807F39A8  7C 00 07 75 */	extsb. r0, r0
/* 807F39AC  41 82 00 3C */	beq lbl_807F39E8
/* 807F39B0  38 7E 04 E6 */	addi r3, r30, 0x4e6
/* 807F39B4  A8 9E 06 88 */	lha r4, 0x688(r30)
/* 807F39B8  3C 84 00 01 */	addis r4, r4, 1
/* 807F39BC  38 04 80 00 */	addi r0, r4, -32768
/* 807F39C0  7C 04 07 34 */	extsh r4, r0
/* 807F39C4  38 A0 00 08 */	li r5, 8
/* 807F39C8  38 C0 08 00 */	li r6, 0x800
/* 807F39CC  4B A7 CC 3D */	bl cLib_addCalcAngleS2__FPssss
/* 807F39D0  38 7E 04 E4 */	addi r3, r30, 0x4e4
/* 807F39D4  38 80 80 00 */	li r4, -32768
/* 807F39D8  38 A0 00 08 */	li r5, 8
/* 807F39DC  38 C0 04 00 */	li r6, 0x400
/* 807F39E0  4B A7 CC 29 */	bl cLib_addCalcAngleS2__FPssss
/* 807F39E4  48 00 00 2C */	b lbl_807F3A10
lbl_807F39E8:
/* 807F39E8  38 7E 04 E6 */	addi r3, r30, 0x4e6
/* 807F39EC  A8 9E 06 88 */	lha r4, 0x688(r30)
/* 807F39F0  38 A0 00 08 */	li r5, 8
/* 807F39F4  38 C0 08 00 */	li r6, 0x800
/* 807F39F8  4B A7 CC 11 */	bl cLib_addCalcAngleS2__FPssss
/* 807F39FC  38 7E 04 E4 */	addi r3, r30, 0x4e4
/* 807F3A00  38 80 00 00 */	li r4, 0
/* 807F3A04  38 A0 00 08 */	li r5, 8
/* 807F3A08  38 C0 04 00 */	li r6, 0x400
/* 807F3A0C  4B A7 CB FD */	bl cLib_addCalcAngleS2__FPssss
lbl_807F3A10:
/* 807F3A10  38 7E 06 98 */	addi r3, r30, 0x698
/* 807F3A14  3C 80 80 7F */	lis r4, l_HIO@ha /* 0x807F7D78@ha */
/* 807F3A18  38 84 7D 78 */	addi r4, r4, l_HIO@l /* 0x807F7D78@l */
/* 807F3A1C  C0 24 00 10 */	lfs f1, 0x10(r4)
/* 807F3A20  C0 5F 00 08 */	lfs f2, 8(r31)
/* 807F3A24  C0 7F 00 50 */	lfs f3, 0x50(r31)
/* 807F3A28  4B A7 C0 15 */	bl cLib_addCalc2__FPffff
/* 807F3A2C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 807F3A30  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 807F3A34  80 01 00 24 */	lwz r0, 0x24(r1)
/* 807F3A38  7C 08 03 A6 */	mtlr r0
/* 807F3A3C  38 21 00 20 */	addi r1, r1, 0x20
/* 807F3A40  4E 80 00 20 */	blr 
