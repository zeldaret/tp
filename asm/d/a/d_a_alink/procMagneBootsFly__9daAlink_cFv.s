lbl_800E3454:
/* 800E3454  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 800E3458  7C 08 02 A6 */	mflr r0
/* 800E345C  90 01 00 54 */	stw r0, 0x54(r1)
/* 800E3460  93 E1 00 4C */	stw r31, 0x4c(r1)
/* 800E3464  93 C1 00 48 */	stw r30, 0x48(r1)
/* 800E3468  7C 7F 1B 78 */	mr r31, r3
/* 800E346C  C0 23 34 78 */	lfs f1, 0x3478(r3)
/* 800E3470  3C 60 80 39 */	lis r3, m__24daAlinkHIO_magneBoots_c0@ha
/* 800E3474  38 63 E7 F4 */	addi r3, r3, m__24daAlinkHIO_magneBoots_c0@l
/* 800E3478  C0 03 00 34 */	lfs f0, 0x34(r3)
/* 800E347C  EC 01 00 2A */	fadds f0, f1, f0
/* 800E3480  D0 1F 34 78 */	stfs f0, 0x3478(r31)
/* 800E3484  C0 1F 34 78 */	lfs f0, 0x3478(r31)
/* 800E3488  C0 3F 05 94 */	lfs f1, 0x594(r31)
/* 800E348C  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 800E3490  40 81 00 08 */	ble lbl_800E3498
/* 800E3494  D0 3F 34 78 */	stfs f1, 0x3478(r31)
lbl_800E3498:
/* 800E3498  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 800E349C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 800E34A0  3B C3 0F 38 */	addi r30, r3, 0xf38
/* 800E34A4  7F C3 F3 78 */	mr r3, r30
/* 800E34A8  38 9F 1E 2C */	addi r4, r31, 0x1e2c
/* 800E34AC  4B F9 11 B5 */	bl ChkPolySafe__4cBgSFRC13cBgS_PolyInfo
/* 800E34B0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800E34B4  41 82 00 8C */	beq lbl_800E3540
/* 800E34B8  80 1F 05 70 */	lwz r0, 0x570(r31)
/* 800E34BC  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 800E34C0  41 82 00 80 */	beq lbl_800E3540
/* 800E34C4  7F C3 F3 78 */	mr r3, r30
/* 800E34C8  38 9F 1E 2C */	addi r4, r31, 0x1e2c
/* 800E34CC  4B F9 15 F1 */	bl ChkMoveBG__4dBgSFRC13cBgS_PolyInfo
/* 800E34D0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800E34D4  41 82 00 58 */	beq lbl_800E352C
/* 800E34D8  C0 1F 37 C8 */	lfs f0, 0x37c8(r31)
/* 800E34DC  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 800E34E0  C0 1F 37 CC */	lfs f0, 0x37cc(r31)
/* 800E34E4  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 800E34E8  C0 1F 37 D0 */	lfs f0, 0x37d0(r31)
/* 800E34EC  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 800E34F0  7F C3 F3 78 */	mr r3, r30
/* 800E34F4  38 9F 1E 2C */	addi r4, r31, 0x1e2c
/* 800E34F8  38 A0 00 01 */	li r5, 1
/* 800E34FC  38 DF 37 C8 */	addi r6, r31, 0x37c8
/* 800E3500  38 E0 00 00 */	li r7, 0
/* 800E3504  39 00 00 00 */	li r8, 0
/* 800E3508  4B F9 23 79 */	bl MoveBgTransPos__4dBgSFRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz
/* 800E350C  38 61 00 18 */	addi r3, r1, 0x18
/* 800E3510  38 9F 37 C8 */	addi r4, r31, 0x37c8
/* 800E3514  38 A1 00 30 */	addi r5, r1, 0x30
/* 800E3518  48 18 36 1D */	bl __mi__4cXyzCFRC3Vec
/* 800E351C  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 800E3520  38 81 00 18 */	addi r4, r1, 0x18
/* 800E3524  7C 65 1B 78 */	mr r5, r3
/* 800E3528  48 26 3B 69 */	bl PSVECAdd
lbl_800E352C:
/* 800E352C  7F E3 FB 78 */	mr r3, r31
/* 800E3530  38 9F 1E 2C */	addi r4, r31, 0x1e2c
/* 800E3534  38 A0 00 01 */	li r5, 1
/* 800E3538  4B FF F2 D1 */	bl setMagneBootsMtx__9daAlink_cFP13cBgS_PolyInfoi
/* 800E353C  48 00 00 20 */	b lbl_800E355C
lbl_800E3540:
/* 800E3540  7F E3 FB 78 */	mr r3, r31
/* 800E3544  4B FF F8 81 */	bl cancelMagneBootsOn__9daAlink_cFv
/* 800E3548  7F E3 FB 78 */	mr r3, r31
/* 800E354C  38 80 00 01 */	li r4, 1
/* 800E3550  C0 22 93 3C */	lfs f1, lit_7808(r2)
/* 800E3554  4B FE 34 F5 */	bl procFallInit__9daAlink_cFif
/* 800E3558  48 00 01 F0 */	b lbl_800E3748
lbl_800E355C:
/* 800E355C  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 800E3560  38 9F 37 C8 */	addi r4, r31, 0x37c8
/* 800E3564  C0 3F 34 78 */	lfs f1, 0x3478(r31)
/* 800E3568  48 18 D2 45 */	bl cLib_chasePos__FP4cXyzRC4cXyzf
/* 800E356C  38 7F 37 C8 */	addi r3, r31, 0x37c8
/* 800E3570  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 800E3574  48 26 3E 29 */	bl PSVECSquareDistance
/* 800E3578  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800E357C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800E3580  40 81 00 58 */	ble lbl_800E35D8
/* 800E3584  FC 00 08 34 */	frsqrte f0, f1
/* 800E3588  C8 82 92 E8 */	lfd f4, lit_6846(r2)
/* 800E358C  FC 44 00 32 */	fmul f2, f4, f0
/* 800E3590  C8 62 92 F0 */	lfd f3, lit_6847(r2)
/* 800E3594  FC 00 00 32 */	fmul f0, f0, f0
/* 800E3598  FC 01 00 32 */	fmul f0, f1, f0
/* 800E359C  FC 03 00 28 */	fsub f0, f3, f0
/* 800E35A0  FC 02 00 32 */	fmul f0, f2, f0
/* 800E35A4  FC 44 00 32 */	fmul f2, f4, f0
/* 800E35A8  FC 00 00 32 */	fmul f0, f0, f0
/* 800E35AC  FC 01 00 32 */	fmul f0, f1, f0
/* 800E35B0  FC 03 00 28 */	fsub f0, f3, f0
/* 800E35B4  FC 02 00 32 */	fmul f0, f2, f0
/* 800E35B8  FC 44 00 32 */	fmul f2, f4, f0
/* 800E35BC  FC 00 00 32 */	fmul f0, f0, f0
/* 800E35C0  FC 01 00 32 */	fmul f0, f1, f0
/* 800E35C4  FC 03 00 28 */	fsub f0, f3, f0
/* 800E35C8  FC 02 00 32 */	fmul f0, f2, f0
/* 800E35CC  FC 21 00 32 */	fmul f1, f1, f0
/* 800E35D0  FC 20 08 18 */	frsp f1, f1
/* 800E35D4  48 00 00 88 */	b lbl_800E365C
lbl_800E35D8:
/* 800E35D8  C8 02 92 F8 */	lfd f0, lit_6848(r2)
/* 800E35DC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800E35E0  40 80 00 10 */	bge lbl_800E35F0
/* 800E35E4  3C 60 80 45 */	lis r3, __float_nan@ha
/* 800E35E8  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 800E35EC  48 00 00 70 */	b lbl_800E365C
lbl_800E35F0:
/* 800E35F0  D0 21 00 08 */	stfs f1, 8(r1)
/* 800E35F4  80 81 00 08 */	lwz r4, 8(r1)
/* 800E35F8  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 800E35FC  3C 00 7F 80 */	lis r0, 0x7f80
/* 800E3600  7C 03 00 00 */	cmpw r3, r0
/* 800E3604  41 82 00 14 */	beq lbl_800E3618
/* 800E3608  40 80 00 40 */	bge lbl_800E3648
/* 800E360C  2C 03 00 00 */	cmpwi r3, 0
/* 800E3610  41 82 00 20 */	beq lbl_800E3630
/* 800E3614  48 00 00 34 */	b lbl_800E3648
lbl_800E3618:
/* 800E3618  54 80 02 7F */	clrlwi. r0, r4, 9
/* 800E361C  41 82 00 0C */	beq lbl_800E3628
/* 800E3620  38 00 00 01 */	li r0, 1
/* 800E3624  48 00 00 28 */	b lbl_800E364C
lbl_800E3628:
/* 800E3628  38 00 00 02 */	li r0, 2
/* 800E362C  48 00 00 20 */	b lbl_800E364C
lbl_800E3630:
/* 800E3630  54 80 02 7F */	clrlwi. r0, r4, 9
/* 800E3634  41 82 00 0C */	beq lbl_800E3640
/* 800E3638  38 00 00 05 */	li r0, 5
/* 800E363C  48 00 00 10 */	b lbl_800E364C
lbl_800E3640:
/* 800E3640  38 00 00 03 */	li r0, 3
/* 800E3644  48 00 00 08 */	b lbl_800E364C
lbl_800E3648:
/* 800E3648  38 00 00 04 */	li r0, 4
lbl_800E364C:
/* 800E364C  2C 00 00 01 */	cmpwi r0, 1
/* 800E3650  40 82 00 0C */	bne lbl_800E365C
/* 800E3654  3C 60 80 45 */	lis r3, __float_nan@ha
/* 800E3658  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_800E365C:
/* 800E365C  C0 02 93 00 */	lfs f0, lit_6895(r2)
/* 800E3660  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800E3664  40 80 00 44 */	bge lbl_800E36A8
/* 800E3668  C0 1F 37 C8 */	lfs f0, 0x37c8(r31)
/* 800E366C  D0 1F 04 D0 */	stfs f0, 0x4d0(r31)
/* 800E3670  C0 1F 37 CC */	lfs f0, 0x37cc(r31)
/* 800E3674  D0 1F 04 D4 */	stfs f0, 0x4d4(r31)
/* 800E3678  C0 1F 37 D0 */	lfs f0, 0x37d0(r31)
/* 800E367C  D0 1F 04 D8 */	stfs f0, 0x4d8(r31)
/* 800E3680  80 1F 05 70 */	lwz r0, 0x570(r31)
/* 800E3684  60 00 10 00 */	ori r0, r0, 0x1000
/* 800E3688  90 1F 05 70 */	stw r0, 0x570(r31)
/* 800E368C  38 7F 2C A8 */	addi r3, r31, 0x2ca8
/* 800E3690  38 80 00 01 */	li r4, 1
/* 800E3694  48 1E 04 59 */	bl setMagnetized__14Z2CreatureLinkFb
/* 800E3698  7F E3 FB 78 */	mr r3, r31
/* 800E369C  38 80 00 00 */	li r4, 0
/* 800E36A0  4B FF 77 71 */	bl procLandDamageInit__9daAlink_cFi
/* 800E36A4  48 00 00 A0 */	b lbl_800E3744
lbl_800E36A8:
/* 800E36A8  80 7F 06 50 */	lwz r3, 0x650(r31)
/* 800E36AC  80 63 00 84 */	lwz r3, 0x84(r3)
/* 800E36B0  80 63 00 0C */	lwz r3, 0xc(r3)
/* 800E36B4  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 800E36B8  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 800E36BC  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 800E36C0  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 800E36C4  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 800E36C8  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 800E36CC  38 61 00 0C */	addi r3, r1, 0xc
/* 800E36D0  38 9F 37 C8 */	addi r4, r31, 0x37c8
/* 800E36D4  38 A1 00 24 */	addi r5, r1, 0x24
/* 800E36D8  48 18 34 5D */	bl __mi__4cXyzCFRC3Vec
/* 800E36DC  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 800E36E0  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 800E36E4  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 800E36E8  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 800E36EC  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 800E36F0  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 800E36F4  38 61 00 24 */	addi r3, r1, 0x24
/* 800E36F8  48 18 3A 59 */	bl atan2sY_XZ__4cXyzCFv
/* 800E36FC  38 03 C0 00 */	addi r0, r3, -16384
/* 800E3700  7C 04 07 34 */	extsh r4, r0
/* 800E3704  38 7F 04 E4 */	addi r3, r31, 0x4e4
/* 800E3708  38 A0 00 05 */	li r5, 5
/* 800E370C  38 C0 10 00 */	li r6, 0x1000
/* 800E3710  38 E0 01 00 */	li r7, 0x100
/* 800E3714  48 18 CE 2D */	bl cLib_addCalcAngleS__FPsssss
/* 800E3718  38 61 00 24 */	addi r3, r1, 0x24
/* 800E371C  48 18 3A 0D */	bl atan2sX_Z__4cXyzCFv
/* 800E3720  7C 64 1B 78 */	mr r4, r3
/* 800E3724  38 7F 04 E6 */	addi r3, r31, 0x4e6
/* 800E3728  38 A0 00 05 */	li r5, 5
/* 800E372C  38 C0 10 00 */	li r6, 0x1000
/* 800E3730  38 E0 01 00 */	li r7, 0x100
/* 800E3734  48 18 CE 0D */	bl cLib_addCalcAngleS__FPsssss
/* 800E3738  A8 7F 30 0C */	lha r3, 0x300c(r31)
/* 800E373C  38 03 1C 00 */	addi r0, r3, 0x1c00
/* 800E3740  B0 1F 30 0C */	sth r0, 0x300c(r31)
lbl_800E3744:
/* 800E3744  38 60 00 01 */	li r3, 1
lbl_800E3748:
/* 800E3748  83 E1 00 4C */	lwz r31, 0x4c(r1)
/* 800E374C  83 C1 00 48 */	lwz r30, 0x48(r1)
/* 800E3750  80 01 00 54 */	lwz r0, 0x54(r1)
/* 800E3754  7C 08 03 A6 */	mtlr r0
/* 800E3758  38 21 00 50 */	addi r1, r1, 0x50
/* 800E375C  4E 80 00 20 */	blr 
