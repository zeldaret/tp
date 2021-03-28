lbl_807F342C:
/* 807F342C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 807F3430  7C 08 02 A6 */	mflr r0
/* 807F3434  90 01 00 34 */	stw r0, 0x34(r1)
/* 807F3438  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 807F343C  93 C1 00 28 */	stw r30, 0x28(r1)
/* 807F3440  7C 7E 1B 78 */	mr r30, r3
/* 807F3444  3C 60 80 7F */	lis r3, lit_3788@ha
/* 807F3448  3B E3 7A 00 */	addi r31, r3, lit_3788@l
/* 807F344C  38 00 00 0F */	li r0, 0xf
/* 807F3450  B0 1E 06 A2 */	sth r0, 0x6a2(r30)
/* 807F3454  A8 1E 06 70 */	lha r0, 0x670(r30)
/* 807F3458  2C 00 00 02 */	cmpwi r0, 2
/* 807F345C  41 82 00 80 */	beq lbl_807F34DC
/* 807F3460  40 80 00 14 */	bge lbl_807F3474
/* 807F3464  2C 00 00 00 */	cmpwi r0, 0
/* 807F3468  41 82 00 18 */	beq lbl_807F3480
/* 807F346C  40 80 00 1C */	bge lbl_807F3488
/* 807F3470  48 00 02 FC */	b lbl_807F376C
lbl_807F3474:
/* 807F3474  2C 00 00 05 */	cmpwi r0, 5
/* 807F3478  41 82 00 90 */	beq lbl_807F3508
/* 807F347C  48 00 02 F0 */	b lbl_807F376C
lbl_807F3480:
/* 807F3480  C0 1F 00 04 */	lfs f0, 4(r31)
/* 807F3484  D0 1E 06 7C */	stfs f0, 0x67c(r30)
lbl_807F3488:
/* 807F3488  7F C3 F3 78 */	mr r3, r30
/* 807F348C  38 80 00 0E */	li r4, 0xe
/* 807F3490  C0 3F 00 40 */	lfs f1, 0x40(r31)
/* 807F3494  38 A0 00 00 */	li r5, 0
/* 807F3498  C0 5F 00 08 */	lfs f2, 8(r31)
/* 807F349C  4B FF F9 85 */	bl anm_init__FP10e_yd_classifUcf
/* 807F34A0  7F C3 F3 78 */	mr r3, r30
/* 807F34A4  38 80 00 15 */	li r4, 0x15
/* 807F34A8  C0 3F 00 40 */	lfs f1, 0x40(r31)
/* 807F34AC  38 A0 00 02 */	li r5, 2
/* 807F34B0  C0 5F 00 04 */	lfs f2, 4(r31)
/* 807F34B4  4B FF FA 19 */	bl leaf_anm_init__FP10e_yd_classifUcf
/* 807F34B8  2C 03 00 00 */	cmpwi r3, 0
/* 807F34BC  41 82 02 B0 */	beq lbl_807F376C
/* 807F34C0  38 00 00 05 */	li r0, 5
/* 807F34C4  B0 1E 06 70 */	sth r0, 0x670(r30)
/* 807F34C8  C0 1F 00 04 */	lfs f0, 4(r31)
/* 807F34CC  D0 1E 06 94 */	stfs f0, 0x694(r30)
/* 807F34D0  38 00 00 32 */	li r0, 0x32
/* 807F34D4  B0 1E 06 9C */	sth r0, 0x69c(r30)
/* 807F34D8  48 00 02 94 */	b lbl_807F376C
lbl_807F34DC:
/* 807F34DC  88 1E 08 55 */	lbz r0, 0x855(r30)
/* 807F34E0  7C 00 07 75 */	extsb. r0, r0
/* 807F34E4  41 82 00 10 */	beq lbl_807F34F4
/* 807F34E8  C0 1F 00 44 */	lfs f0, 0x44(r31)
/* 807F34EC  D0 1E 06 7C */	stfs f0, 0x67c(r30)
/* 807F34F0  48 00 00 0C */	b lbl_807F34FC
lbl_807F34F4:
/* 807F34F4  C0 1F 00 48 */	lfs f0, 0x48(r31)
/* 807F34F8  D0 1E 06 7C */	stfs f0, 0x67c(r30)
lbl_807F34FC:
/* 807F34FC  38 00 00 01 */	li r0, 1
/* 807F3500  B0 1E 06 70 */	sth r0, 0x670(r30)
/* 807F3504  48 00 02 68 */	b lbl_807F376C
lbl_807F3508:
/* 807F3508  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 807F350C  C0 3E 04 A8 */	lfs f1, 0x4a8(r30)
/* 807F3510  C0 5F 00 4C */	lfs f2, 0x4c(r31)
/* 807F3514  C0 7F 00 40 */	lfs f3, 0x40(r31)
/* 807F3518  C0 1E 06 94 */	lfs f0, 0x694(r30)
/* 807F351C  EC 63 00 32 */	fmuls f3, f3, f0
/* 807F3520  4B A7 C5 1C */	b cLib_addCalc2__FPffff
/* 807F3524  38 7E 04 D4 */	addi r3, r30, 0x4d4
/* 807F3528  C0 3E 04 AC */	lfs f1, 0x4ac(r30)
/* 807F352C  C0 1E 06 7C */	lfs f0, 0x67c(r30)
/* 807F3530  EC 21 00 2A */	fadds f1, f1, f0
/* 807F3534  C0 5F 00 4C */	lfs f2, 0x4c(r31)
/* 807F3538  C0 7F 00 40 */	lfs f3, 0x40(r31)
/* 807F353C  C0 1E 06 94 */	lfs f0, 0x694(r30)
/* 807F3540  EC 63 00 32 */	fmuls f3, f3, f0
/* 807F3544  4B A7 C4 F8 */	b cLib_addCalc2__FPffff
/* 807F3548  38 7E 04 D8 */	addi r3, r30, 0x4d8
/* 807F354C  C0 3E 04 B0 */	lfs f1, 0x4b0(r30)
/* 807F3550  C0 5F 00 4C */	lfs f2, 0x4c(r31)
/* 807F3554  C0 7F 00 40 */	lfs f3, 0x40(r31)
/* 807F3558  C0 1E 06 94 */	lfs f0, 0x694(r30)
/* 807F355C  EC 63 00 32 */	fmuls f3, f3, f0
/* 807F3560  4B A7 C4 DC */	b cLib_addCalc2__FPffff
/* 807F3564  38 7E 06 94 */	addi r3, r30, 0x694
/* 807F3568  C0 3F 00 08 */	lfs f1, 8(r31)
/* 807F356C  FC 40 08 90 */	fmr f2, f1
/* 807F3570  C0 7F 00 50 */	lfs f3, 0x50(r31)
/* 807F3574  4B A7 C4 C8 */	b cLib_addCalc2__FPffff
/* 807F3578  38 61 00 0C */	addi r3, r1, 0xc
/* 807F357C  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 807F3580  38 BE 04 A8 */	addi r5, r30, 0x4a8
/* 807F3584  4B A7 35 B0 */	b __mi__4cXyzCFRC3Vec
/* 807F3588  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 807F358C  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 807F3590  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 807F3594  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 807F3598  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 807F359C  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 807F35A0  C0 1F 00 04 */	lfs f0, 4(r31)
/* 807F35A4  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 807F35A8  38 61 00 18 */	addi r3, r1, 0x18
/* 807F35AC  4B B5 3B 8C */	b PSVECSquareMag
/* 807F35B0  C0 1F 00 04 */	lfs f0, 4(r31)
/* 807F35B4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807F35B8  40 81 00 58 */	ble lbl_807F3610
/* 807F35BC  FC 00 08 34 */	frsqrte f0, f1
/* 807F35C0  C8 9F 00 10 */	lfd f4, 0x10(r31)
/* 807F35C4  FC 44 00 32 */	fmul f2, f4, f0
/* 807F35C8  C8 7F 00 18 */	lfd f3, 0x18(r31)
/* 807F35CC  FC 00 00 32 */	fmul f0, f0, f0
/* 807F35D0  FC 01 00 32 */	fmul f0, f1, f0
/* 807F35D4  FC 03 00 28 */	fsub f0, f3, f0
/* 807F35D8  FC 02 00 32 */	fmul f0, f2, f0
/* 807F35DC  FC 44 00 32 */	fmul f2, f4, f0
/* 807F35E0  FC 00 00 32 */	fmul f0, f0, f0
/* 807F35E4  FC 01 00 32 */	fmul f0, f1, f0
/* 807F35E8  FC 03 00 28 */	fsub f0, f3, f0
/* 807F35EC  FC 02 00 32 */	fmul f0, f2, f0
/* 807F35F0  FC 44 00 32 */	fmul f2, f4, f0
/* 807F35F4  FC 00 00 32 */	fmul f0, f0, f0
/* 807F35F8  FC 01 00 32 */	fmul f0, f1, f0
/* 807F35FC  FC 03 00 28 */	fsub f0, f3, f0
/* 807F3600  FC 02 00 32 */	fmul f0, f2, f0
/* 807F3604  FC 21 00 32 */	fmul f1, f1, f0
/* 807F3608  FC 20 08 18 */	frsp f1, f1
/* 807F360C  48 00 00 88 */	b lbl_807F3694
lbl_807F3610:
/* 807F3610  C8 1F 00 20 */	lfd f0, 0x20(r31)
/* 807F3614  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807F3618  40 80 00 10 */	bge lbl_807F3628
/* 807F361C  3C 60 80 45 */	lis r3, __float_nan@ha
/* 807F3620  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 807F3624  48 00 00 70 */	b lbl_807F3694
lbl_807F3628:
/* 807F3628  D0 21 00 08 */	stfs f1, 8(r1)
/* 807F362C  80 81 00 08 */	lwz r4, 8(r1)
/* 807F3630  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 807F3634  3C 00 7F 80 */	lis r0, 0x7f80
/* 807F3638  7C 03 00 00 */	cmpw r3, r0
/* 807F363C  41 82 00 14 */	beq lbl_807F3650
/* 807F3640  40 80 00 40 */	bge lbl_807F3680
/* 807F3644  2C 03 00 00 */	cmpwi r3, 0
/* 807F3648  41 82 00 20 */	beq lbl_807F3668
/* 807F364C  48 00 00 34 */	b lbl_807F3680
lbl_807F3650:
/* 807F3650  54 80 02 7F */	clrlwi. r0, r4, 9
/* 807F3654  41 82 00 0C */	beq lbl_807F3660
/* 807F3658  38 00 00 01 */	li r0, 1
/* 807F365C  48 00 00 28 */	b lbl_807F3684
lbl_807F3660:
/* 807F3660  38 00 00 02 */	li r0, 2
/* 807F3664  48 00 00 20 */	b lbl_807F3684
lbl_807F3668:
/* 807F3668  54 80 02 7F */	clrlwi. r0, r4, 9
/* 807F366C  41 82 00 0C */	beq lbl_807F3678
/* 807F3670  38 00 00 05 */	li r0, 5
/* 807F3674  48 00 00 10 */	b lbl_807F3684
lbl_807F3678:
/* 807F3678  38 00 00 03 */	li r0, 3
/* 807F367C  48 00 00 08 */	b lbl_807F3684
lbl_807F3680:
/* 807F3680  38 00 00 04 */	li r0, 4
lbl_807F3684:
/* 807F3684  2C 00 00 01 */	cmpwi r0, 1
/* 807F3688  40 82 00 0C */	bne lbl_807F3694
/* 807F368C  3C 60 80 45 */	lis r3, __float_nan@ha
/* 807F3690  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_807F3694:
/* 807F3694  C0 1F 00 54 */	lfs f0, 0x54(r31)
/* 807F3698  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807F369C  40 80 00 7C */	bge lbl_807F3718
/* 807F36A0  38 7E 06 7C */	addi r3, r30, 0x67c
/* 807F36A4  C0 3F 00 08 */	lfs f1, 8(r31)
/* 807F36A8  C0 5F 00 58 */	lfs f2, 0x58(r31)
/* 807F36AC  4B A7 C3 D4 */	b cLib_addCalc0__FPfff
/* 807F36B0  88 1E 08 55 */	lbz r0, 0x855(r30)
/* 807F36B4  7C 00 07 75 */	extsb. r0, r0
/* 807F36B8  41 82 00 1C */	beq lbl_807F36D4
/* 807F36BC  38 7E 04 E4 */	addi r3, r30, 0x4e4
/* 807F36C0  38 80 40 00 */	li r4, 0x4000
/* 807F36C4  38 A0 00 04 */	li r5, 4
/* 807F36C8  38 C0 02 00 */	li r6, 0x200
/* 807F36CC  4B A7 CF 3C */	b cLib_addCalcAngleS2__FPssss
/* 807F36D0  48 00 00 18 */	b lbl_807F36E8
lbl_807F36D4:
/* 807F36D4  38 7E 04 E4 */	addi r3, r30, 0x4e4
/* 807F36D8  38 80 C0 00 */	li r4, -16384
/* 807F36DC  38 A0 00 04 */	li r5, 4
/* 807F36E0  38 C0 02 00 */	li r6, 0x200
/* 807F36E4  4B A7 CF 24 */	b cLib_addCalcAngleS2__FPssss
lbl_807F36E8:
/* 807F36E8  38 7E 08 4C */	addi r3, r30, 0x84c
/* 807F36EC  C0 3F 00 5C */	lfs f1, 0x5c(r31)
/* 807F36F0  C0 5F 00 08 */	lfs f2, 8(r31)
/* 807F36F4  C0 7F 00 60 */	lfs f3, 0x60(r31)
/* 807F36F8  4B A7 C3 44 */	b cLib_addCalc2__FPffff
/* 807F36FC  38 7E 06 98 */	addi r3, r30, 0x698
/* 807F3700  3C 80 80 7F */	lis r4, l_HIO@ha
/* 807F3704  38 84 7D 78 */	addi r4, r4, l_HIO@l
/* 807F3708  C0 24 00 0C */	lfs f1, 0xc(r4)
/* 807F370C  C0 5F 00 08 */	lfs f2, 8(r31)
/* 807F3710  C0 7F 00 64 */	lfs f3, 0x64(r31)
/* 807F3714  4B A7 C3 28 */	b cLib_addCalc2__FPffff
lbl_807F3718:
/* 807F3718  A8 1E 06 9C */	lha r0, 0x69c(r30)
/* 807F371C  2C 00 00 00 */	cmpwi r0, 0
/* 807F3720  40 82 00 4C */	bne lbl_807F376C
/* 807F3724  88 1E 05 B7 */	lbz r0, 0x5b7(r30)
/* 807F3728  28 00 00 01 */	cmplwi r0, 1
/* 807F372C  41 82 00 18 */	beq lbl_807F3744
/* 807F3730  7F C3 F3 78 */	mr r3, r30
/* 807F3734  C0 3E 06 74 */	lfs f1, 0x674(r30)
/* 807F3738  4B FF FA 31 */	bl pl_check__FP10e_yd_classf
/* 807F373C  2C 03 00 00 */	cmpwi r3, 0
/* 807F3740  41 82 00 2C */	beq lbl_807F376C
lbl_807F3744:
/* 807F3744  88 1E 08 55 */	lbz r0, 0x855(r30)
/* 807F3748  7C 00 07 75 */	extsb. r0, r0
/* 807F374C  41 82 00 10 */	beq lbl_807F375C
/* 807F3750  38 00 00 02 */	li r0, 2
/* 807F3754  B0 1E 06 6E */	sth r0, 0x66e(r30)
/* 807F3758  48 00 00 0C */	b lbl_807F3764
lbl_807F375C:
/* 807F375C  38 00 00 01 */	li r0, 1
/* 807F3760  B0 1E 06 6E */	sth r0, 0x66e(r30)
lbl_807F3764:
/* 807F3764  38 00 00 00 */	li r0, 0
/* 807F3768  B0 1E 06 70 */	sth r0, 0x670(r30)
lbl_807F376C:
/* 807F376C  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 807F3770  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 807F3774  80 01 00 34 */	lwz r0, 0x34(r1)
/* 807F3778  7C 08 03 A6 */	mtlr r0
/* 807F377C  38 21 00 30 */	addi r1, r1, 0x30
/* 807F3780  4E 80 00 20 */	blr 
