lbl_80BF3538:
/* 80BF3538  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 80BF353C  7C 08 02 A6 */	mflr r0
/* 80BF3540  90 01 00 64 */	stw r0, 0x64(r1)
/* 80BF3544  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 80BF3548  F3 E1 00 58 */	psq_st f31, 88(r1), 0, 0 /* qr0 */
/* 80BF354C  39 61 00 50 */	addi r11, r1, 0x50
/* 80BF3550  4B 76 EC 85 */	bl _savegpr_27
/* 80BF3554  7C 7B 1B 78 */	mr r27, r3
/* 80BF3558  3C 60 80 BF */	lis r3, m__20daObj_Gadget_Param_c@ha /* 0x80BF4944@ha */
/* 80BF355C  3B A3 49 44 */	addi r29, r3, m__20daObj_Gadget_Param_c@l /* 0x80BF4944@l */
/* 80BF3560  80 1B 04 9C */	lwz r0, 0x49c(r27)
/* 80BF3564  54 1E 9F FE */	rlwinm r30, r0, 0x13, 0x1f, 0x1f
/* 80BF3568  3B FD 00 00 */	addi r31, r29, 0
/* 80BF356C  C3 FF 00 28 */	lfs f31, 0x28(r31)
/* 80BF3570  C0 1F 00 08 */	lfs f0, 8(r31)
/* 80BF3574  D0 1B 04 EC */	stfs f0, 0x4ec(r27)
/* 80BF3578  D0 1B 04 F0 */	stfs f0, 0x4f0(r27)
/* 80BF357C  D0 1B 04 F4 */	stfs f0, 0x4f4(r27)
/* 80BF3580  38 00 00 00 */	li r0, 0
/* 80BF3584  90 1B 05 5C */	stw r0, 0x55c(r27)
/* 80BF3588  38 00 00 06 */	li r0, 6
/* 80BF358C  98 1B 05 48 */	stb r0, 0x548(r27)
/* 80BF3590  38 7B 07 8C */	addi r3, r27, 0x78c
/* 80BF3594  C0 3F 00 1C */	lfs f1, 0x1c(r31)
/* 80BF3598  4B 48 29 A9 */	bl SetWallR__12dBgS_AcchCirFf
/* 80BF359C  7F E3 FB 78 */	mr r3, r31
/* 80BF35A0  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 80BF35A4  D0 1B 07 BC */	stfs f0, 0x7bc(r27)
/* 80BF35A8  C0 1F 00 04 */	lfs f0, 4(r31)
/* 80BF35AC  D0 1B 05 30 */	stfs f0, 0x530(r27)
/* 80BF35B0  2C 1E 00 00 */	cmpwi r30, 0
/* 80BF35B4  41 82 00 78 */	beq lbl_80BF362C
/* 80BF35B8  80 1B 05 A4 */	lwz r0, 0x5a4(r27)
/* 80BF35BC  54 00 07 34 */	rlwinm r0, r0, 0, 0x1c, 0x1a
/* 80BF35C0  90 1B 05 A4 */	stw r0, 0x5a4(r27)
/* 80BF35C4  80 1B 05 A4 */	lwz r0, 0x5a4(r27)
/* 80BF35C8  54 00 06 F2 */	rlwinm r0, r0, 0, 0x1b, 0x19
/* 80BF35CC  90 1B 05 A4 */	stw r0, 0x5a4(r27)
/* 80BF35D0  80 1B 05 A4 */	lwz r0, 0x5a4(r27)
/* 80BF35D4  60 00 00 04 */	ori r0, r0, 4
/* 80BF35D8  90 1B 05 A4 */	stw r0, 0x5a4(r27)
/* 80BF35DC  80 1B 05 A4 */	lwz r0, 0x5a4(r27)
/* 80BF35E0  60 00 00 02 */	ori r0, r0, 2
/* 80BF35E4  90 1B 05 A4 */	stw r0, 0x5a4(r27)
/* 80BF35E8  C0 1D 00 70 */	lfs f0, 0x70(r29)
/* 80BF35EC  D0 1B 0A 00 */	stfs f0, 0xa00(r27)
/* 80BF35F0  38 00 00 00 */	li r0, 0
/* 80BF35F4  98 1B 07 64 */	stb r0, 0x764(r27)
/* 80BF35F8  D0 1B 04 F8 */	stfs f0, 0x4f8(r27)
/* 80BF35FC  D0 1B 04 FC */	stfs f0, 0x4fc(r27)
/* 80BF3600  D0 1B 05 00 */	stfs f0, 0x500(r27)
/* 80BF3604  D0 1B 05 2C */	stfs f0, 0x52c(r27)
/* 80BF3608  D0 1B 05 30 */	stfs f0, 0x530(r27)
/* 80BF360C  B0 1B 09 EC */	sth r0, 0x9ec(r27)
/* 80BF3610  B0 1B 09 EE */	sth r0, 0x9ee(r27)
/* 80BF3614  B0 1B 09 F0 */	sth r0, 0x9f0(r27)
/* 80BF3618  98 1B 0A 41 */	stb r0, 0xa41(r27)
/* 80BF361C  98 1B 0A 42 */	stb r0, 0xa42(r27)
/* 80BF3620  98 1B 0A 43 */	stb r0, 0xa43(r27)
/* 80BF3624  98 1B 0A 46 */	stb r0, 0xa46(r27)
/* 80BF3628  48 00 05 9C */	b lbl_80BF3BC4
lbl_80BF362C:
/* 80BF362C  C0 03 00 10 */	lfs f0, 0x10(r3)
/* 80BF3630  FC 00 00 1E */	fctiwz f0, f0
/* 80BF3634  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 80BF3638  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 80BF363C  98 1B 07 64 */	stb r0, 0x764(r27)
/* 80BF3640  80 1B 05 A4 */	lwz r0, 0x5a4(r27)
/* 80BF3644  54 00 07 B8 */	rlwinm r0, r0, 0, 0x1e, 0x1c
/* 80BF3648  90 1B 05 A4 */	stw r0, 0x5a4(r27)
/* 80BF364C  80 1B 05 A4 */	lwz r0, 0x5a4(r27)
/* 80BF3650  54 00 07 FA */	rlwinm r0, r0, 0, 0x1f, 0x1d
/* 80BF3654  90 1B 05 A4 */	stw r0, 0x5a4(r27)
/* 80BF3658  88 1B 0A 45 */	lbz r0, 0xa45(r27)
/* 80BF365C  28 00 00 00 */	cmplwi r0, 0
/* 80BF3660  41 82 00 98 */	beq lbl_80BF36F8
/* 80BF3664  C0 1B 05 2C */	lfs f0, 0x52c(r27)
/* 80BF3668  FC 00 02 10 */	fabs f0, f0
/* 80BF366C  FC 20 00 18 */	frsp f1, f0
/* 80BF3670  3C 60 80 45 */	lis r3, G_CM3D_F_ABS_MIN@ha /* 0x80451180@ha */
/* 80BF3674  C0 03 11 80 */	lfs f0, G_CM3D_F_ABS_MIN@l(r3)  /* 0x80451180@l */
/* 80BF3678  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80BF367C  7C 00 00 26 */	mfcr r0
/* 80BF3680  54 00 0F FF */	rlwinm. r0, r0, 1, 0x1f, 0x1f
/* 80BF3684  40 82 00 74 */	bne lbl_80BF36F8
/* 80BF3688  7F 63 DB 78 */	mr r3, r27
/* 80BF368C  4B 42 9B 71 */	bl fopAcM_carryOffRevise__FP10fopAc_ac_c
/* 80BF3690  C0 5F 00 24 */	lfs f2, 0x24(r31)
/* 80BF3694  C0 3F 00 20 */	lfs f1, 0x20(r31)
/* 80BF3698  C0 1D 00 74 */	lfs f0, 0x74(r29)
/* 80BF369C  EC 00 00 B2 */	fmuls f0, f0, f2
/* 80BF36A0  FC 00 00 1E */	fctiwz f0, f0
/* 80BF36A4  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 80BF36A8  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 80BF36AC  C0 1D 00 70 */	lfs f0, 0x70(r29)
/* 80BF36B0  D0 1B 04 F8 */	stfs f0, 0x4f8(r27)
/* 80BF36B4  D0 1B 04 FC */	stfs f0, 0x4fc(r27)
/* 80BF36B8  D0 1B 05 00 */	stfs f0, 0x500(r27)
/* 80BF36BC  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80BF36C0  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 80BF36C4  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 80BF36C8  7C 03 04 2E */	lfsx f0, r3, r0
/* 80BF36CC  EC 01 00 32 */	fmuls f0, f1, f0
/* 80BF36D0  D0 1B 04 FC */	stfs f0, 0x4fc(r27)
/* 80BF36D4  7C 63 02 14 */	add r3, r3, r0
/* 80BF36D8  C0 03 00 04 */	lfs f0, 4(r3)
/* 80BF36DC  EC 01 00 32 */	fmuls f0, f1, f0
/* 80BF36E0  D0 1B 05 2C */	stfs f0, 0x52c(r27)
/* 80BF36E4  38 00 40 00 */	li r0, 0x4000
/* 80BF36E8  B0 1B 0A 14 */	sth r0, 0xa14(r27)
/* 80BF36EC  38 00 00 01 */	li r0, 1
/* 80BF36F0  98 1B 0A 43 */	stb r0, 0xa43(r27)
/* 80BF36F4  48 00 04 D0 */	b lbl_80BF3BC4
lbl_80BF36F8:
/* 80BF36F8  38 7B 04 D0 */	addi r3, r27, 0x4d0
/* 80BF36FC  38 9B 0A 04 */	addi r4, r27, 0xa04
/* 80BF3700  4B 42 A1 91 */	bl fopAcM_getWaterY__FPC4cXyzPf
/* 80BF3704  C0 1D 00 6C */	lfs f0, 0x6c(r29)
/* 80BF3708  C0 3B 0A 04 */	lfs f1, 0xa04(r27)
/* 80BF370C  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 80BF3710  41 82 00 C8 */	beq lbl_80BF37D8
/* 80BF3714  C0 1B 0A 00 */	lfs f0, 0xa00(r27)
/* 80BF3718  EC 01 00 28 */	fsubs f0, f1, f0
/* 80BF371C  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 80BF3720  40 80 00 B8 */	bge lbl_80BF37D8
/* 80BF3724  C0 1B 04 D4 */	lfs f0, 0x4d4(r27)
/* 80BF3728  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 80BF372C  4C 40 13 82 */	cror 2, 0, 2
/* 80BF3730  40 82 00 A8 */	bne lbl_80BF37D8
/* 80BF3734  88 1B 0A 42 */	lbz r0, 0xa42(r27)
/* 80BF3738  28 00 00 00 */	cmplwi r0, 0
/* 80BF373C  40 82 00 9C */	bne lbl_80BF37D8
/* 80BF3740  88 1B 0A 43 */	lbz r0, 0xa43(r27)
/* 80BF3744  28 00 00 00 */	cmplwi r0, 0
/* 80BF3748  40 82 00 1C */	bne lbl_80BF3764
/* 80BF374C  88 1B 0A 46 */	lbz r0, 0xa46(r27)
/* 80BF3750  28 00 00 00 */	cmplwi r0, 0
/* 80BF3754  40 82 00 10 */	bne lbl_80BF3764
/* 80BF3758  88 1B 0A 45 */	lbz r0, 0xa45(r27)
/* 80BF375C  28 00 00 00 */	cmplwi r0, 0
/* 80BF3760  41 82 00 0C */	beq lbl_80BF376C
lbl_80BF3764:
/* 80BF3764  7F 63 DB 78 */	mr r3, r27
/* 80BF3768  48 00 0E 99 */	bl setWaterPrtcl__14daObj_Gadget_cFv
lbl_80BF376C:
/* 80BF376C  88 1B 0A 43 */	lbz r0, 0xa43(r27)
/* 80BF3770  28 00 00 00 */	cmplwi r0, 0
/* 80BF3774  40 82 00 10 */	bne lbl_80BF3784
/* 80BF3778  88 1B 0A 46 */	lbz r0, 0xa46(r27)
/* 80BF377C  28 00 00 00 */	cmplwi r0, 0
/* 80BF3780  41 82 00 28 */	beq lbl_80BF37A8
lbl_80BF3784:
/* 80BF3784  C0 3B 04 FC */	lfs f1, 0x4fc(r27)
/* 80BF3788  C0 1D 00 70 */	lfs f0, 0x70(r29)
/* 80BF378C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80BF3790  40 80 00 0C */	bge lbl_80BF379C
/* 80BF3794  C0 1D 00 78 */	lfs f0, 0x78(r29)
/* 80BF3798  D0 1B 0A 0C */	stfs f0, 0xa0c(r27)
lbl_80BF379C:
/* 80BF379C  38 00 00 00 */	li r0, 0
/* 80BF37A0  98 1B 0A 43 */	stb r0, 0xa43(r27)
/* 80BF37A4  98 1B 0A 46 */	stb r0, 0xa46(r27)
lbl_80BF37A8:
/* 80BF37A8  C0 3B 05 2C */	lfs f1, 0x52c(r27)
/* 80BF37AC  C0 1D 00 7C */	lfs f0, 0x7c(r29)
/* 80BF37B0  EC 01 00 32 */	fmuls f0, f1, f0
/* 80BF37B4  D0 1B 05 2C */	stfs f0, 0x52c(r27)
/* 80BF37B8  C0 3B 04 FC */	lfs f1, 0x4fc(r27)
/* 80BF37BC  C0 1D 00 80 */	lfs f0, 0x80(r29)
/* 80BF37C0  EC 01 00 32 */	fmuls f0, f1, f0
/* 80BF37C4  D0 1B 04 FC */	stfs f0, 0x4fc(r27)
/* 80BF37C8  38 00 00 00 */	li r0, 0
/* 80BF37CC  98 1B 0A 41 */	stb r0, 0xa41(r27)
/* 80BF37D0  38 00 00 01 */	li r0, 1
/* 80BF37D4  98 1B 0A 42 */	stb r0, 0xa42(r27)
lbl_80BF37D8:
/* 80BF37D8  88 1B 0A 42 */	lbz r0, 0xa42(r27)
/* 80BF37DC  28 00 00 00 */	cmplwi r0, 0
/* 80BF37E0  41 82 00 84 */	beq lbl_80BF3864
/* 80BF37E4  88 1B 0A 41 */	lbz r0, 0xa41(r27)
/* 80BF37E8  28 00 00 00 */	cmplwi r0, 0
/* 80BF37EC  40 82 00 78 */	bne lbl_80BF3864
/* 80BF37F0  C0 3B 04 FC */	lfs f1, 0x4fc(r27)
/* 80BF37F4  C0 1D 00 70 */	lfs f0, 0x70(r29)
/* 80BF37F8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80BF37FC  40 80 00 20 */	bge lbl_80BF381C
/* 80BF3800  38 7B 04 FC */	addi r3, r27, 0x4fc
/* 80BF3804  C0 3D 00 84 */	lfs f1, 0x84(r29)
/* 80BF3808  C0 5D 00 80 */	lfs f2, 0x80(r29)
/* 80BF380C  C0 7D 00 88 */	lfs f3, 0x88(r29)
/* 80BF3810  FC 80 10 90 */	fmr f4, f2
/* 80BF3814  4B 67 C1 69 */	bl cLib_addCalc__FPfffff
/* 80BF3818  48 00 00 1C */	b lbl_80BF3834
lbl_80BF381C:
/* 80BF381C  38 7B 04 FC */	addi r3, r27, 0x4fc
/* 80BF3820  C0 3D 00 84 */	lfs f1, 0x84(r29)
/* 80BF3824  C0 5D 00 80 */	lfs f2, 0x80(r29)
/* 80BF3828  FC 60 10 90 */	fmr f3, f2
/* 80BF382C  FC 80 10 90 */	fmr f4, f2
/* 80BF3830  4B 67 C1 4D */	bl cLib_addCalc__FPfffff
lbl_80BF3834:
/* 80BF3834  C0 3B 0A 04 */	lfs f1, 0xa04(r27)
/* 80BF3838  C0 1B 04 D4 */	lfs f0, 0x4d4(r27)
/* 80BF383C  EC 00 F8 2A */	fadds f0, f0, f31
/* 80BF3840  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80BF3844  40 80 00 20 */	bge lbl_80BF3864
/* 80BF3848  38 00 01 00 */	li r0, 0x100
/* 80BF384C  B0 1B 09 EE */	sth r0, 0x9ee(r27)
/* 80BF3850  80 1B 05 A4 */	lwz r0, 0x5a4(r27)
/* 80BF3854  54 00 06 F2 */	rlwinm r0, r0, 0, 0x1b, 0x19
/* 80BF3858  90 1B 05 A4 */	stw r0, 0x5a4(r27)
/* 80BF385C  38 00 00 01 */	li r0, 1
/* 80BF3860  98 1B 0A 41 */	stb r0, 0xa41(r27)
lbl_80BF3864:
/* 80BF3864  88 1B 0A 41 */	lbz r0, 0xa41(r27)
/* 80BF3868  28 00 00 00 */	cmplwi r0, 0
/* 80BF386C  41 82 01 CC */	beq lbl_80BF3A38
/* 80BF3870  80 1B 05 A4 */	lwz r0, 0x5a4(r27)
/* 80BF3874  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 80BF3878  41 82 00 34 */	beq lbl_80BF38AC
/* 80BF387C  38 00 00 00 */	li r0, 0
/* 80BF3880  98 1B 0A 41 */	stb r0, 0xa41(r27)
/* 80BF3884  98 1B 0A 42 */	stb r0, 0xa42(r27)
/* 80BF3888  B0 1B 09 EC */	sth r0, 0x9ec(r27)
/* 80BF388C  B0 1B 09 EE */	sth r0, 0x9ee(r27)
/* 80BF3890  B0 1B 09 F0 */	sth r0, 0x9f0(r27)
/* 80BF3894  C0 1D 00 70 */	lfs f0, 0x70(r29)
/* 80BF3898  D0 1B 05 2C */	stfs f0, 0x52c(r27)
/* 80BF389C  D0 1B 04 F8 */	stfs f0, 0x4f8(r27)
/* 80BF38A0  D0 1B 04 FC */	stfs f0, 0x4fc(r27)
/* 80BF38A4  D0 1B 05 00 */	stfs f0, 0x500(r27)
/* 80BF38A8  48 00 02 E0 */	b lbl_80BF3B88
lbl_80BF38AC:
/* 80BF38AC  38 7B 07 E0 */	addi r3, r27, 0x7e0
/* 80BF38B0  38 81 00 1C */	addi r4, r1, 0x1c
/* 80BF38B4  38 A1 00 0C */	addi r5, r1, 0xc
/* 80BF38B8  4B 45 E0 A5 */	bl dPath_GetPolyRoomPathVec__FRC13cBgS_PolyInfoP4cXyzPi
/* 80BF38BC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80BF38C0  41 82 00 90 */	beq lbl_80BF3950
/* 80BF38C4  38 61 00 10 */	addi r3, r1, 0x10
/* 80BF38C8  38 81 00 1C */	addi r4, r1, 0x1c
/* 80BF38CC  4B 67 36 7D */	bl normalizeZP__4cXyzFv
/* 80BF38D0  C0 21 00 1C */	lfs f1, 0x1c(r1)
/* 80BF38D4  C0 41 00 24 */	lfs f2, 0x24(r1)
/* 80BF38D8  4B 67 3D 9D */	bl cM_atan2s__Fff
/* 80BF38DC  7C 64 1B 78 */	mr r4, r3
/* 80BF38E0  38 7B 04 DE */	addi r3, r27, 0x4de
/* 80BF38E4  38 A0 00 08 */	li r5, 8
/* 80BF38E8  38 C0 04 00 */	li r6, 0x400
/* 80BF38EC  4B 67 CD 1D */	bl cLib_addCalcAngleS2__FPssss
/* 80BF38F0  38 7B 09 EE */	addi r3, r27, 0x9ee
/* 80BF38F4  A8 1B 09 EE */	lha r0, 0x9ee(r27)
/* 80BF38F8  2C 00 00 00 */	cmpwi r0, 0
/* 80BF38FC  38 00 00 80 */	li r0, 0x80
/* 80BF3900  40 80 00 08 */	bge lbl_80BF3908
/* 80BF3904  38 00 FF 80 */	li r0, -128
lbl_80BF3908:
/* 80BF3908  7C 04 07 34 */	extsh r4, r0
/* 80BF390C  38 A0 00 10 */	li r5, 0x10
/* 80BF3910  4B 67 D2 81 */	bl cLib_chaseAngleS__FPsss
/* 80BF3914  38 7B 05 2C */	addi r3, r27, 0x52c
/* 80BF3918  C0 5D 00 8C */	lfs f2, 0x8c(r29)
/* 80BF391C  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80BF3920  C8 3D 00 C0 */	lfd f1, 0xc0(r29)
/* 80BF3924  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80BF3928  90 01 00 2C */	stw r0, 0x2c(r1)
/* 80BF392C  3C 00 43 30 */	lis r0, 0x4330
/* 80BF3930  90 01 00 28 */	stw r0, 0x28(r1)
/* 80BF3934  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 80BF3938  EC 00 08 28 */	fsubs f0, f0, f1
/* 80BF393C  EC 22 00 32 */	fmuls f1, f2, f0
/* 80BF3940  C0 5D 00 90 */	lfs f2, 0x90(r29)
/* 80BF3944  C0 7D 00 94 */	lfs f3, 0x94(r29)
/* 80BF3948  4B 67 C0 F5 */	bl cLib_addCalc2__FPffff
/* 80BF394C  48 00 00 14 */	b lbl_80BF3960
lbl_80BF3950:
/* 80BF3950  38 7B 05 2C */	addi r3, r27, 0x52c
/* 80BF3954  C0 3D 00 70 */	lfs f1, 0x70(r29)
/* 80BF3958  C0 5D 00 98 */	lfs f2, 0x98(r29)
/* 80BF395C  4B 67 CD E5 */	bl cLib_chaseF__FPfff
lbl_80BF3960:
/* 80BF3960  38 7B 04 D4 */	addi r3, r27, 0x4d4
/* 80BF3964  C0 1B 0A 04 */	lfs f0, 0xa04(r27)
/* 80BF3968  EC 20 F8 28 */	fsubs f1, f0, f31
/* 80BF396C  C0 5D 00 80 */	lfs f2, 0x80(r29)
/* 80BF3970  C0 7D 00 84 */	lfs f3, 0x84(r29)
/* 80BF3974  4B 67 C0 C9 */	bl cLib_addCalc2__FPffff
/* 80BF3978  C0 1D 00 70 */	lfs f0, 0x70(r29)
/* 80BF397C  D0 1B 04 FC */	stfs f0, 0x4fc(r27)
/* 80BF3980  7F 63 DB 78 */	mr r3, r27
/* 80BF3984  48 00 0D A5 */	bl setHamonPrtcl__14daObj_Gadget_cFv
/* 80BF3988  C0 1D 00 70 */	lfs f0, 0x70(r29)
/* 80BF398C  D0 1B 05 30 */	stfs f0, 0x530(r27)
/* 80BF3990  80 1B 09 F4 */	lwz r0, 0x9f4(r27)
/* 80BF3994  2C 00 00 00 */	cmpwi r0, 0
/* 80BF3998  40 82 01 F0 */	bne lbl_80BF3B88
/* 80BF399C  80 1B 05 A4 */	lwz r0, 0x5a4(r27)
/* 80BF39A0  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 80BF39A4  41 82 01 E4 */	beq lbl_80BF3B88
/* 80BF39A8  7F 63 DB 78 */	mr r3, r27
/* 80BF39AC  A8 9B 04 DE */	lha r4, 0x4de(r27)
/* 80BF39B0  38 A1 00 08 */	addi r5, r1, 8
/* 80BF39B4  48 00 0A 41 */	bl getWallAngle__14daObj_Gadget_cFsPs
/* 80BF39B8  2C 03 00 00 */	cmpwi r3, 0
/* 80BF39BC  41 82 01 CC */	beq lbl_80BF3B88
/* 80BF39C0  38 00 00 0A */	li r0, 0xa
/* 80BF39C4  90 1B 09 F4 */	stw r0, 0x9f4(r27)
/* 80BF39C8  A8 61 00 08 */	lha r3, 8(r1)
/* 80BF39CC  A8 1B 04 DE */	lha r0, 0x4de(r27)
/* 80BF39D0  7C 03 00 50 */	subf r0, r3, r0
/* 80BF39D4  7C 1C 07 34 */	extsh r28, r0
/* 80BF39D8  C0 3D 00 9C */	lfs f1, 0x9c(r29)
/* 80BF39DC  4B 67 3F B1 */	bl cM_rndFX__Ff
/* 80BF39E0  FC 00 08 1E */	fctiwz f0, f1
/* 80BF39E4  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 80BF39E8  80 A1 00 2C */	lwz r5, 0x2c(r1)
/* 80BF39EC  57 84 08 3C */	slwi r4, r28, 1
/* 80BF39F0  3C 60 00 01 */	lis r3, 0x0001 /* 0x00008000@ha */
/* 80BF39F4  38 03 80 00 */	addi r0, r3, 0x8000 /* 0x00008000@l */
/* 80BF39F8  7C 04 00 50 */	subf r0, r4, r0
/* 80BF39FC  7C 00 2A 14 */	add r0, r0, r5
/* 80BF3A00  7C 03 07 34 */	extsh r3, r0
/* 80BF3A04  A8 1B 04 DE */	lha r0, 0x4de(r27)
/* 80BF3A08  7C 00 1A 14 */	add r0, r0, r3
/* 80BF3A0C  B0 1B 04 DE */	sth r0, 0x4de(r27)
/* 80BF3A10  A8 1B 09 EE */	lha r0, 0x9ee(r27)
/* 80BF3A14  7C 00 00 D0 */	neg r0, r0
/* 80BF3A18  7C 00 0E 70 */	srawi r0, r0, 1
/* 80BF3A1C  7C 00 01 94 */	addze r0, r0
/* 80BF3A20  B0 1B 09 EE */	sth r0, 0x9ee(r27)
/* 80BF3A24  C0 3B 05 2C */	lfs f1, 0x52c(r27)
/* 80BF3A28  C0 1D 00 7C */	lfs f0, 0x7c(r29)
/* 80BF3A2C  EC 01 00 32 */	fmuls f0, f1, f0
/* 80BF3A30  D0 1B 05 2C */	stfs f0, 0x52c(r27)
/* 80BF3A34  48 00 01 54 */	b lbl_80BF3B88
lbl_80BF3A38:
/* 80BF3A38  88 1B 0A 42 */	lbz r0, 0xa42(r27)
/* 80BF3A3C  28 00 00 00 */	cmplwi r0, 0
/* 80BF3A40  41 82 00 20 */	beq lbl_80BF3A60
/* 80BF3A44  38 7B 05 2C */	addi r3, r27, 0x52c
/* 80BF3A48  C0 3D 00 70 */	lfs f1, 0x70(r29)
/* 80BF3A4C  C0 5D 00 7C */	lfs f2, 0x7c(r29)
/* 80BF3A50  4B 67 CC F1 */	bl cLib_chaseF__FPfff
/* 80BF3A54  C0 1D 00 70 */	lfs f0, 0x70(r29)
/* 80BF3A58  D0 1B 05 30 */	stfs f0, 0x530(r27)
/* 80BF3A5C  48 00 01 2C */	b lbl_80BF3B88
lbl_80BF3A60:
/* 80BF3A60  88 1B 0A 43 */	lbz r0, 0xa43(r27)
/* 80BF3A64  28 00 00 00 */	cmplwi r0, 0
/* 80BF3A68  41 82 00 B4 */	beq lbl_80BF3B1C
/* 80BF3A6C  80 1B 05 A4 */	lwz r0, 0x5a4(r27)
/* 80BF3A70  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 80BF3A74  41 82 00 74 */	beq lbl_80BF3AE8
/* 80BF3A78  7F 63 DB 78 */	mr r3, r27
/* 80BF3A7C  A8 9B 04 DE */	lha r4, 0x4de(r27)
/* 80BF3A80  38 A1 00 08 */	addi r5, r1, 8
/* 80BF3A84  48 00 09 71 */	bl getWallAngle__14daObj_Gadget_cFsPs
/* 80BF3A88  2C 03 00 00 */	cmpwi r3, 0
/* 80BF3A8C  41 82 00 5C */	beq lbl_80BF3AE8
/* 80BF3A90  A8 61 00 08 */	lha r3, 8(r1)
/* 80BF3A94  A8 1B 04 DE */	lha r0, 0x4de(r27)
/* 80BF3A98  7C 03 00 50 */	subf r0, r3, r0
/* 80BF3A9C  7C 1C 07 34 */	extsh r28, r0
/* 80BF3AA0  C0 3D 00 A0 */	lfs f1, 0xa0(r29)
/* 80BF3AA4  4B 67 3E E9 */	bl cM_rndFX__Ff
/* 80BF3AA8  FC 00 08 1E */	fctiwz f0, f1
/* 80BF3AAC  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 80BF3AB0  80 A1 00 2C */	lwz r5, 0x2c(r1)
/* 80BF3AB4  57 84 08 3C */	slwi r4, r28, 1
/* 80BF3AB8  3C 60 00 01 */	lis r3, 0x0001 /* 0x00008000@ha */
/* 80BF3ABC  38 03 80 00 */	addi r0, r3, 0x8000 /* 0x00008000@l */
/* 80BF3AC0  7C 04 00 50 */	subf r0, r4, r0
/* 80BF3AC4  7C 00 2A 14 */	add r0, r0, r5
/* 80BF3AC8  7C 03 07 34 */	extsh r3, r0
/* 80BF3ACC  A8 1B 04 DE */	lha r0, 0x4de(r27)
/* 80BF3AD0  7C 00 1A 14 */	add r0, r0, r3
/* 80BF3AD4  B0 1B 04 DE */	sth r0, 0x4de(r27)
/* 80BF3AD8  C0 3B 05 2C */	lfs f1, 0x52c(r27)
/* 80BF3ADC  C0 1D 00 80 */	lfs f0, 0x80(r29)
/* 80BF3AE0  EC 01 00 32 */	fmuls f0, f1, f0
/* 80BF3AE4  D0 1B 05 2C */	stfs f0, 0x52c(r27)
lbl_80BF3AE8:
/* 80BF3AE8  80 1B 05 A4 */	lwz r0, 0x5a4(r27)
/* 80BF3AEC  54 00 06 31 */	rlwinm. r0, r0, 0, 0x18, 0x18
/* 80BF3AF0  41 82 00 98 */	beq lbl_80BF3B88
/* 80BF3AF4  7F 63 DB 78 */	mr r3, r27
/* 80BF3AF8  48 00 0A 8D */	bl setSmokePrtcl__14daObj_Gadget_cFv
/* 80BF3AFC  38 00 00 00 */	li r0, 0
/* 80BF3B00  98 1B 0A 43 */	stb r0, 0xa43(r27)
/* 80BF3B04  C0 1D 00 70 */	lfs f0, 0x70(r29)
/* 80BF3B08  D0 1B 05 2C */	stfs f0, 0x52c(r27)
/* 80BF3B0C  D0 1B 04 F8 */	stfs f0, 0x4f8(r27)
/* 80BF3B10  D0 1B 04 FC */	stfs f0, 0x4fc(r27)
/* 80BF3B14  D0 1B 05 00 */	stfs f0, 0x500(r27)
/* 80BF3B18  48 00 00 70 */	b lbl_80BF3B88
lbl_80BF3B1C:
/* 80BF3B1C  88 1B 0A 46 */	lbz r0, 0xa46(r27)
/* 80BF3B20  28 00 00 00 */	cmplwi r0, 0
/* 80BF3B24  41 82 00 38 */	beq lbl_80BF3B5C
/* 80BF3B28  80 1B 05 A4 */	lwz r0, 0x5a4(r27)
/* 80BF3B2C  54 00 06 31 */	rlwinm. r0, r0, 0, 0x18, 0x18
/* 80BF3B30  41 82 00 58 */	beq lbl_80BF3B88
/* 80BF3B34  7F 63 DB 78 */	mr r3, r27
/* 80BF3B38  48 00 0A 4D */	bl setSmokePrtcl__14daObj_Gadget_cFv
/* 80BF3B3C  38 00 00 00 */	li r0, 0
/* 80BF3B40  98 1B 0A 46 */	stb r0, 0xa46(r27)
/* 80BF3B44  C0 1D 00 70 */	lfs f0, 0x70(r29)
/* 80BF3B48  D0 1B 05 2C */	stfs f0, 0x52c(r27)
/* 80BF3B4C  D0 1B 04 F8 */	stfs f0, 0x4f8(r27)
/* 80BF3B50  D0 1B 04 FC */	stfs f0, 0x4fc(r27)
/* 80BF3B54  D0 1B 05 00 */	stfs f0, 0x500(r27)
/* 80BF3B58  48 00 00 30 */	b lbl_80BF3B88
lbl_80BF3B5C:
/* 80BF3B5C  88 1B 0A 45 */	lbz r0, 0xa45(r27)
/* 80BF3B60  28 00 00 00 */	cmplwi r0, 0
/* 80BF3B64  41 82 00 10 */	beq lbl_80BF3B74
/* 80BF3B68  7F 63 DB 78 */	mr r3, r27
/* 80BF3B6C  48 00 0A 19 */	bl setSmokePrtcl__14daObj_Gadget_cFv
/* 80BF3B70  48 00 00 18 */	b lbl_80BF3B88
lbl_80BF3B74:
/* 80BF3B74  80 1B 05 A4 */	lwz r0, 0x5a4(r27)
/* 80BF3B78  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 80BF3B7C  40 82 00 0C */	bne lbl_80BF3B88
/* 80BF3B80  38 00 00 01 */	li r0, 1
/* 80BF3B84  98 1B 0A 46 */	stb r0, 0xa46(r27)
lbl_80BF3B88:
/* 80BF3B88  88 1B 0A 44 */	lbz r0, 0xa44(r27)
/* 80BF3B8C  28 00 00 00 */	cmplwi r0, 0
/* 80BF3B90  40 82 00 34 */	bne lbl_80BF3BC4
/* 80BF3B94  88 1B 0A 43 */	lbz r0, 0xa43(r27)
/* 80BF3B98  28 00 00 00 */	cmplwi r0, 0
/* 80BF3B9C  40 82 00 28 */	bne lbl_80BF3BC4
/* 80BF3BA0  88 1B 0A 46 */	lbz r0, 0xa46(r27)
/* 80BF3BA4  28 00 00 00 */	cmplwi r0, 0
/* 80BF3BA8  40 82 00 1C */	bne lbl_80BF3BC4
/* 80BF3BAC  88 1B 04 9A */	lbz r0, 0x49a(r27)
/* 80BF3BB0  60 00 00 04 */	ori r0, r0, 4
/* 80BF3BB4  98 1B 04 9A */	stb r0, 0x49a(r27)
/* 80BF3BB8  80 1B 05 5C */	lwz r0, 0x55c(r27)
/* 80BF3BBC  60 00 00 10 */	ori r0, r0, 0x10
/* 80BF3BC0  90 1B 05 5C */	stw r0, 0x55c(r27)
lbl_80BF3BC4:
/* 80BF3BC4  C0 1B 04 F8 */	lfs f0, 0x4f8(r27)
/* 80BF3BC8  D0 1B 09 D4 */	stfs f0, 0x9d4(r27)
/* 80BF3BCC  C0 1B 04 FC */	lfs f0, 0x4fc(r27)
/* 80BF3BD0  D0 1B 09 D8 */	stfs f0, 0x9d8(r27)
/* 80BF3BD4  C0 1B 05 00 */	lfs f0, 0x500(r27)
/* 80BF3BD8  D0 1B 09 DC */	stfs f0, 0x9dc(r27)
/* 80BF3BDC  88 1B 0A 42 */	lbz r0, 0xa42(r27)
/* 80BF3BE0  28 00 00 00 */	cmplwi r0, 0
/* 80BF3BE4  41 82 00 2C */	beq lbl_80BF3C10
/* 80BF3BE8  38 7B 0A 0C */	addi r3, r27, 0xa0c
/* 80BF3BEC  34 1B 07 50 */	addic. r0, r27, 0x750
/* 80BF3BF0  41 82 00 0C */	beq lbl_80BF3BFC
/* 80BF3BF4  C0 3D 00 A4 */	lfs f1, 0xa4(r29)
/* 80BF3BF8  48 00 00 08 */	b lbl_80BF3C00
lbl_80BF3BFC:
/* 80BF3BFC  C0 3D 00 A8 */	lfs f1, 0xa8(r29)
lbl_80BF3C00:
/* 80BF3C00  C0 5D 00 AC */	lfs f2, 0xac(r29)
/* 80BF3C04  C0 7D 00 B0 */	lfs f3, 0xb0(r29)
/* 80BF3C08  4B 67 BE 35 */	bl cLib_addCalc2__FPffff
/* 80BF3C0C  48 00 00 18 */	b lbl_80BF3C24
lbl_80BF3C10:
/* 80BF3C10  38 7B 0A 0C */	addi r3, r27, 0xa0c
/* 80BF3C14  C0 3D 00 70 */	lfs f1, 0x70(r29)
/* 80BF3C18  C0 5D 00 90 */	lfs f2, 0x90(r29)
/* 80BF3C1C  C0 7D 00 B0 */	lfs f3, 0xb0(r29)
/* 80BF3C20  4B 67 BE 1D */	bl cLib_addCalc2__FPffff
lbl_80BF3C24:
/* 80BF3C24  A8 1B 0A 10 */	lha r0, 0xa10(r27)
/* 80BF3C28  1C 00 03 E8 */	mulli r0, r0, 0x3e8
/* 80BF3C2C  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80BF3C30  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 80BF3C34  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 80BF3C38  7C 23 04 2E */	lfsx f1, r3, r0
/* 80BF3C3C  C0 1B 0A 0C */	lfs f0, 0xa0c(r27)
/* 80BF3C40  EC 00 00 72 */	fmuls f0, f0, f1
/* 80BF3C44  FC 00 00 1E */	fctiwz f0, f0
/* 80BF3C48  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 80BF3C4C  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 80BF3C50  B0 1B 04 E4 */	sth r0, 0x4e4(r27)
/* 80BF3C54  3B 83 00 04 */	addi r28, r3, 4
/* 80BF3C58  A8 1B 0A 10 */	lha r0, 0xa10(r27)
/* 80BF3C5C  1C 00 03 E8 */	mulli r0, r0, 0x3e8
/* 80BF3C60  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80BF3C64  7C 3C 04 2E */	lfsx f1, r28, r0
/* 80BF3C68  C0 1B 0A 0C */	lfs f0, 0xa0c(r27)
/* 80BF3C6C  EC 00 00 72 */	fmuls f0, f0, f1
/* 80BF3C70  FC 00 00 1E */	fctiwz f0, f0
/* 80BF3C74  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 80BF3C78  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80BF3C7C  B0 1B 04 E8 */	sth r0, 0x4e8(r27)
/* 80BF3C80  38 7B 09 EE */	addi r3, r27, 0x9ee
/* 80BF3C84  38 80 00 00 */	li r4, 0
/* 80BF3C88  38 A0 00 0A */	li r5, 0xa
/* 80BF3C8C  4B 67 CF 05 */	bl cLib_chaseAngleS__FPsss
/* 80BF3C90  A8 7B 04 E6 */	lha r3, 0x4e6(r27)
/* 80BF3C94  A8 1B 09 EE */	lha r0, 0x9ee(r27)
/* 80BF3C98  7C 03 02 14 */	add r0, r3, r0
/* 80BF3C9C  B0 1B 04 E6 */	sth r0, 0x4e6(r27)
/* 80BF3CA0  A8 7B 0A 10 */	lha r3, 0xa10(r27)
/* 80BF3CA4  38 03 00 01 */	addi r0, r3, 1
/* 80BF3CA8  B0 1B 0A 10 */	sth r0, 0xa10(r27)
/* 80BF3CAC  38 7B 09 FC */	addi r3, r27, 0x9fc
/* 80BF3CB0  C0 3D 00 70 */	lfs f1, 0x70(r29)
/* 80BF3CB4  C0 5D 00 AC */	lfs f2, 0xac(r29)
/* 80BF3CB8  4B 67 CA 89 */	bl cLib_chaseF__FPfff
/* 80BF3CBC  88 1B 0A 41 */	lbz r0, 0xa41(r27)
/* 80BF3CC0  28 00 00 00 */	cmplwi r0, 0
/* 80BF3CC4  41 82 00 8C */	beq lbl_80BF3D50
/* 80BF3CC8  80 1B 09 F8 */	lwz r0, 0x9f8(r27)
/* 80BF3CCC  2C 00 00 00 */	cmpwi r0, 0
/* 80BF3CD0  40 82 00 88 */	bne lbl_80BF3D58
/* 80BF3CD4  C0 3B 07 50 */	lfs f1, 0x750(r27)
/* 80BF3CD8  EC 41 00 72 */	fmuls f2, f1, f1
/* 80BF3CDC  C0 1B 07 58 */	lfs f0, 0x758(r27)
/* 80BF3CE0  EC 00 00 32 */	fmuls f0, f0, f0
/* 80BF3CE4  EF E2 00 2A */	fadds f31, f2, f0
/* 80BF3CE8  C0 1D 00 70 */	lfs f0, 0x70(r29)
/* 80BF3CEC  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 80BF3CF0  40 81 00 0C */	ble lbl_80BF3CFC
/* 80BF3CF4  FC 00 F8 34 */	frsqrte f0, f31
/* 80BF3CF8  EF E0 07 F2 */	fmuls f31, f0, f31
lbl_80BF3CFC:
/* 80BF3CFC  C0 1D 00 94 */	lfs f0, 0x94(r29)
/* 80BF3D00  FC 00 F8 40 */	fcmpo cr0, f0, f31
/* 80BF3D04  40 80 00 54 */	bge lbl_80BF3D58
/* 80BF3D08  C0 5B 07 58 */	lfs f2, 0x758(r27)
/* 80BF3D0C  4B 67 39 69 */	bl cM_atan2s__Fff
/* 80BF3D10  B0 7B 0A 18 */	sth r3, 0xa18(r27)
/* 80BF3D14  C0 3B 09 FC */	lfs f1, 0x9fc(r27)
/* 80BF3D18  C0 1D 00 B4 */	lfs f0, 0xb4(r29)
/* 80BF3D1C  EC 00 07 F2 */	fmuls f0, f0, f31
/* 80BF3D20  EC 01 00 2A */	fadds f0, f1, f0
/* 80BF3D24  D0 1B 09 FC */	stfs f0, 0x9fc(r27)
/* 80BF3D28  C0 3D 00 B8 */	lfs f1, 0xb8(r29)
/* 80BF3D2C  C0 1B 09 FC */	lfs f0, 0x9fc(r27)
/* 80BF3D30  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80BF3D34  40 80 00 08 */	bge lbl_80BF3D3C
/* 80BF3D38  D0 3B 09 FC */	stfs f1, 0x9fc(r27)
lbl_80BF3D3C:
/* 80BF3D3C  38 00 02 00 */	li r0, 0x200
/* 80BF3D40  B0 1B 09 EE */	sth r0, 0x9ee(r27)
/* 80BF3D44  38 00 00 0A */	li r0, 0xa
/* 80BF3D48  90 1B 09 F8 */	stw r0, 0x9f8(r27)
/* 80BF3D4C  48 00 00 0C */	b lbl_80BF3D58
lbl_80BF3D50:
/* 80BF3D50  C0 1D 00 70 */	lfs f0, 0x70(r29)
/* 80BF3D54  D0 1B 09 FC */	stfs f0, 0x9fc(r27)
lbl_80BF3D58:
/* 80BF3D58  A8 1B 0A 18 */	lha r0, 0xa18(r27)
/* 80BF3D5C  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80BF3D60  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 80BF3D64  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 80BF3D68  7C 23 04 2E */	lfsx f1, r3, r0
/* 80BF3D6C  C0 1B 09 FC */	lfs f0, 0x9fc(r27)
/* 80BF3D70  EC 00 00 72 */	fmuls f0, f0, f1
/* 80BF3D74  D0 1B 09 E0 */	stfs f0, 0x9e0(r27)
/* 80BF3D78  A8 1B 0A 18 */	lha r0, 0xa18(r27)
/* 80BF3D7C  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80BF3D80  7C 3C 04 2E */	lfsx f1, r28, r0
/* 80BF3D84  C0 1B 09 FC */	lfs f0, 0x9fc(r27)
/* 80BF3D88  EC 00 00 72 */	fmuls f0, f0, f1
/* 80BF3D8C  D0 1B 09 E8 */	stfs f0, 0x9e8(r27)
/* 80BF3D90  C0 1D 00 70 */	lfs f0, 0x70(r29)
/* 80BF3D94  D0 1B 09 E4 */	stfs f0, 0x9e4(r27)
/* 80BF3D98  2C 1E 00 00 */	cmpwi r30, 0
/* 80BF3D9C  40 82 00 28 */	bne lbl_80BF3DC4
/* 80BF3DA0  7F 63 DB 78 */	mr r3, r27
/* 80BF3DA4  4B 42 68 69 */	bl fopAcM_calcSpeed__FP10fopAc_ac_c
/* 80BF3DA8  38 7B 04 F8 */	addi r3, r27, 0x4f8
/* 80BF3DAC  38 9B 09 E0 */	addi r4, r27, 0x9e0
/* 80BF3DB0  7C 65 1B 78 */	mr r5, r3
/* 80BF3DB4  4B 75 32 DD */	bl PSVECAdd
/* 80BF3DB8  7F 63 DB 78 */	mr r3, r27
/* 80BF3DBC  38 9B 07 50 */	addi r4, r27, 0x750
/* 80BF3DC0  4B 42 68 A1 */	bl fopAcM_posMove__FP10fopAc_ac_cPC4cXyz
lbl_80BF3DC4:
/* 80BF3DC4  88 1B 0A 41 */	lbz r0, 0xa41(r27)
/* 80BF3DC8  28 00 00 00 */	cmplwi r0, 0
/* 80BF3DCC  41 82 00 18 */	beq lbl_80BF3DE4
/* 80BF3DD0  38 7B 04 D0 */	addi r3, r27, 0x4d0
/* 80BF3DD4  38 9B 0A 16 */	addi r4, r27, 0xa16
/* 80BF3DD8  38 BB 0A 08 */	addi r5, r27, 0xa08
/* 80BF3DDC  C0 3D 00 80 */	lfs f1, 0x80(r29)
/* 80BF3DE0  4B 42 94 15 */	bl fopAcM_riverStream__FP4cXyzPsPff
lbl_80BF3DE4:
/* 80BF3DE4  38 7B 05 78 */	addi r3, r27, 0x578
/* 80BF3DE8  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80BF3DEC  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80BF3DF0  38 84 0F 38 */	addi r4, r4, 0xf38
/* 80BF3DF4  4B 48 2C B9 */	bl CrrPos__9dBgS_AcchFR4dBgS
/* 80BF3DF8  80 1B 06 54 */	lwz r0, 0x654(r27)
/* 80BF3DFC  90 1B 07 CC */	stw r0, 0x7cc(r27)
/* 80BF3E00  80 1B 06 58 */	lwz r0, 0x658(r27)
/* 80BF3E04  90 1B 07 D0 */	stw r0, 0x7d0(r27)
/* 80BF3E08  80 1B 06 5C */	lwz r0, 0x65c(r27)
/* 80BF3E0C  90 1B 07 D4 */	stw r0, 0x7d4(r27)
/* 80BF3E10  88 1B 06 60 */	lbz r0, 0x660(r27)
/* 80BF3E14  98 1B 07 D8 */	stb r0, 0x7d8(r27)
/* 80BF3E18  A0 1B 06 68 */	lhz r0, 0x668(r27)
/* 80BF3E1C  B0 1B 07 E0 */	sth r0, 0x7e0(r27)
/* 80BF3E20  A0 1B 06 6A */	lhz r0, 0x66a(r27)
/* 80BF3E24  B0 1B 07 E2 */	sth r0, 0x7e2(r27)
/* 80BF3E28  80 1B 06 6C */	lwz r0, 0x66c(r27)
/* 80BF3E2C  90 1B 07 E4 */	stw r0, 0x7e4(r27)
/* 80BF3E30  80 1B 06 70 */	lwz r0, 0x670(r27)
/* 80BF3E34  90 1B 07 E8 */	stw r0, 0x7e8(r27)
/* 80BF3E38  C0 1B 06 78 */	lfs f0, 0x678(r27)
/* 80BF3E3C  D0 1B 07 F0 */	stfs f0, 0x7f0(r27)
/* 80BF3E40  C0 1B 06 7C */	lfs f0, 0x67c(r27)
/* 80BF3E44  D0 1B 07 F4 */	stfs f0, 0x7f4(r27)
/* 80BF3E48  C0 1B 06 80 */	lfs f0, 0x680(r27)
/* 80BF3E4C  D0 1B 07 F8 */	stfs f0, 0x7f8(r27)
/* 80BF3E50  80 1B 06 84 */	lwz r0, 0x684(r27)
/* 80BF3E54  90 1B 07 FC */	stw r0, 0x7fc(r27)
/* 80BF3E58  C0 1B 06 88 */	lfs f0, 0x688(r27)
/* 80BF3E5C  D0 1B 08 00 */	stfs f0, 0x800(r27)
/* 80BF3E60  80 1B 06 8C */	lwz r0, 0x68c(r27)
/* 80BF3E64  90 1B 08 04 */	stw r0, 0x804(r27)
/* 80BF3E68  2C 1E 00 00 */	cmpwi r30, 0
/* 80BF3E6C  40 82 00 0C */	bne lbl_80BF3E78
/* 80BF3E70  C0 1B 06 10 */	lfs f0, 0x610(r27)
/* 80BF3E74  D0 1B 0A 00 */	stfs f0, 0xa00(r27)
lbl_80BF3E78:
/* 80BF3E78  C0 3D 00 6C */	lfs f1, 0x6c(r29)
/* 80BF3E7C  C0 1B 0A 00 */	lfs f0, 0xa00(r27)
/* 80BF3E80  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80BF3E84  41 82 00 24 */	beq lbl_80BF3EA8
/* 80BF3E88  38 7B 07 E0 */	addi r3, r27, 0x7e0
/* 80BF3E8C  A8 9B 04 E6 */	lha r4, 0x4e6(r27)
/* 80BF3E90  4B 56 16 DD */	bl daNpcF_getGroundAngle__FP13cBgS_PolyInfos
/* 80BF3E94  B0 7B 0A 12 */	sth r3, 0xa12(r27)
/* 80BF3E98  7F 63 DB 78 */	mr r3, r27
/* 80BF3E9C  48 00 02 B5 */	bl setEnvTevColor__14daObj_Gadget_cFv
/* 80BF3EA0  7F 63 DB 78 */	mr r3, r27
/* 80BF3EA4  48 00 03 09 */	bl setRoomNo__14daObj_Gadget_cFv
lbl_80BF3EA8:
/* 80BF3EA8  C0 1B 04 D0 */	lfs f0, 0x4d0(r27)
/* 80BF3EAC  D0 1B 05 50 */	stfs f0, 0x550(r27)
/* 80BF3EB0  C0 1B 04 D4 */	lfs f0, 0x4d4(r27)
/* 80BF3EB4  D0 1B 05 54 */	stfs f0, 0x554(r27)
/* 80BF3EB8  C0 1B 04 D8 */	lfs f0, 0x4d8(r27)
/* 80BF3EBC  D0 1B 05 58 */	stfs f0, 0x558(r27)
/* 80BF3EC0  C0 3B 05 54 */	lfs f1, 0x554(r27)
/* 80BF3EC4  C0 1D 00 00 */	lfs f0, 0(r29)
/* 80BF3EC8  EC 01 00 2A */	fadds f0, f1, f0
/* 80BF3ECC  D0 1B 05 54 */	stfs f0, 0x554(r27)
/* 80BF3ED0  C0 1B 04 D0 */	lfs f0, 0x4d0(r27)
/* 80BF3ED4  D0 1B 05 38 */	stfs f0, 0x538(r27)
/* 80BF3ED8  C0 1B 04 D4 */	lfs f0, 0x4d4(r27)
/* 80BF3EDC  D0 1B 05 3C */	stfs f0, 0x53c(r27)
/* 80BF3EE0  C0 1B 04 D8 */	lfs f0, 0x4d8(r27)
/* 80BF3EE4  D0 1B 05 40 */	stfs f0, 0x540(r27)
/* 80BF3EE8  7F 63 DB 78 */	mr r3, r27
/* 80BF3EEC  48 00 03 61 */	bl setMtx__14daObj_Gadget_cFv
/* 80BF3EF0  7F 63 DB 78 */	mr r3, r27
/* 80BF3EF4  A8 9B 0A 14 */	lha r4, 0xa14(r27)
/* 80BF3EF8  3C A0 00 01 */	lis r5, 1
/* 80BF3EFC  48 00 04 59 */	bl calcRollAngle__14daObj_Gadget_cFsi
/* 80BF3F00  B0 7B 0A 14 */	sth r3, 0xa14(r27)
/* 80BF3F04  88 1B 0A 44 */	lbz r0, 0xa44(r27)
/* 80BF3F08  28 00 00 00 */	cmplwi r0, 0
/* 80BF3F0C  40 82 00 4C */	bne lbl_80BF3F58
/* 80BF3F10  88 1B 0A 40 */	lbz r0, 0xa40(r27)
/* 80BF3F14  28 00 00 00 */	cmplwi r0, 0
/* 80BF3F18  40 82 00 40 */	bne lbl_80BF3F58
/* 80BF3F1C  38 7B 09 2C */	addi r3, r27, 0x92c
/* 80BF3F20  C0 3F 00 1C */	lfs f1, 0x1c(r31)
/* 80BF3F24  4B 67 B2 DD */	bl SetR__8cM3dGCylFf
/* 80BF3F28  38 7B 09 2C */	addi r3, r27, 0x92c
/* 80BF3F2C  38 9D 00 00 */	addi r4, r29, 0
/* 80BF3F30  C0 24 00 14 */	lfs f1, 0x14(r4)
/* 80BF3F34  4B 67 B2 C5 */	bl SetH__8cM3dGCylFf
/* 80BF3F38  38 7B 09 2C */	addi r3, r27, 0x92c
/* 80BF3F3C  38 9B 04 D0 */	addi r4, r27, 0x4d0
/* 80BF3F40  4B 67 B2 9D */	bl SetC__8cM3dGCylFRC4cXyz
/* 80BF3F44  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80BF3F48  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80BF3F4C  38 63 23 3C */	addi r3, r3, 0x233c
/* 80BF3F50  38 9B 08 08 */	addi r4, r27, 0x808
/* 80BF3F54  4B 67 0C 55 */	bl Set__4cCcSFP8cCcD_Obj
lbl_80BF3F58:
/* 80BF3F58  38 7B 08 08 */	addi r3, r27, 0x808
/* 80BF3F5C  81 9B 08 44 */	lwz r12, 0x844(r27)
/* 80BF3F60  81 8C 00 28 */	lwz r12, 0x28(r12)
/* 80BF3F64  7D 89 03 A6 */	mtctr r12
/* 80BF3F68  4E 80 04 21 */	bctrl 
/* 80BF3F6C  30 1E FF FF */	addic r0, r30, -1
/* 80BF3F70  7C 00 F1 10 */	subfe r0, r0, r30
/* 80BF3F74  98 1B 0A 45 */	stb r0, 0xa45(r27)
/* 80BF3F78  38 7B 09 F4 */	addi r3, r27, 0x9f4
/* 80BF3F7C  48 00 08 CD */	bl func_80BF4848
/* 80BF3F80  38 7B 09 F8 */	addi r3, r27, 0x9f8
/* 80BF3F84  48 00 08 C5 */	bl func_80BF4848
/* 80BF3F88  38 60 00 01 */	li r3, 1
/* 80BF3F8C  E3 E1 00 58 */	psq_l f31, 88(r1), 0, 0 /* qr0 */
/* 80BF3F90  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 80BF3F94  39 61 00 50 */	addi r11, r1, 0x50
/* 80BF3F98  4B 76 E2 89 */	bl _restgpr_27
/* 80BF3F9C  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80BF3FA0  7C 08 03 A6 */	mtlr r0
/* 80BF3FA4  38 21 00 60 */	addi r1, r1, 0x60
/* 80BF3FA8  4E 80 00 20 */	blr 
