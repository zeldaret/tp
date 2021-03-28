lbl_804B345C:
/* 804B345C  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 804B3460  7C 08 02 A6 */	mflr r0
/* 804B3464  90 01 00 74 */	stw r0, 0x74(r1)
/* 804B3468  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 804B346C  F3 E1 00 68 */	psq_st f31, 104(r1), 0, 0 /* qr0 */
/* 804B3470  39 61 00 60 */	addi r11, r1, 0x60
/* 804B3474  4B EA ED 64 */	b _savegpr_28
/* 804B3478  7C 7D 1B 78 */	mr r29, r3
/* 804B347C  3C 60 80 4C */	lis r3, lit_3879@ha
/* 804B3480  3B E3 B5 34 */	addi r31, r3, lit_3879@l
/* 804B3484  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 804B3488  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 804B348C  83 C3 5D AC */	lwz r30, 0x5dac(r3)
/* 804B3490  38 00 00 2A */	li r0, 0x2a
/* 804B3494  98 03 5E 3C */	stb r0, 0x5e3c(r3)
/* 804B3498  38 00 00 00 */	li r0, 0
/* 804B349C  98 03 5E 57 */	stb r0, 0x5e57(r3)
/* 804B34A0  C0 3F 02 2C */	lfs f1, 0x22c(r31)
/* 804B34A4  C0 1D 14 DC */	lfs f0, 0x14dc(r29)
/* 804B34A8  EC 01 00 32 */	fmuls f0, f1, f0
/* 804B34AC  FC 20 00 50 */	fneg f1, f0
/* 804B34B0  C3 FD 14 D8 */	lfs f31, 0x14d8(r29)
/* 804B34B4  C0 1F 00 58 */	lfs f0, 0x58(r31)
/* 804B34B8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804B34BC  40 80 00 08 */	bge lbl_804B34C4
/* 804B34C0  FC 20 00 90 */	fmr f1, f0
lbl_804B34C4:
/* 804B34C4  38 7D 15 08 */	addi r3, r29, 0x1508
/* 804B34C8  C0 5F 00 9C */	lfs f2, 0x9c(r31)
/* 804B34CC  C0 7F 00 50 */	lfs f3, 0x50(r31)
/* 804B34D0  4B DB C5 6C */	b cLib_addCalc2__FPffff
/* 804B34D4  38 7D 15 0C */	addi r3, r29, 0x150c
/* 804B34D8  FC 20 F8 90 */	fmr f1, f31
/* 804B34DC  C0 5F 00 9C */	lfs f2, 0x9c(r31)
/* 804B34E0  C0 7F 00 50 */	lfs f3, 0x50(r31)
/* 804B34E4  4B DB C5 58 */	b cLib_addCalc2__FPffff
/* 804B34E8  C0 3D 15 08 */	lfs f1, 0x1508(r29)
/* 804B34EC  C0 1F 00 10 */	lfs f0, 0x10(r31)
/* 804B34F0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804B34F4  40 81 00 38 */	ble lbl_804B352C
/* 804B34F8  A8 1D 13 B4 */	lha r0, 0x13b4(r29)
/* 804B34FC  2C 00 00 05 */	cmpwi r0, 5
/* 804B3500  40 80 00 2C */	bge lbl_804B352C
/* 804B3504  A8 9D 14 18 */	lha r4, 0x1418(r29)
/* 804B3508  C0 3F 01 78 */	lfs f1, 0x178(r31)
/* 804B350C  3C 60 80 3E */	lis r3, m_cpadInfo__8mDoCPd_c@ha
/* 804B3510  C0 03 D2 E8 */	lfs f0, m_cpadInfo__8mDoCPd_c@l(r3)
/* 804B3514  EC 01 00 32 */	fmuls f0, f1, f0
/* 804B3518  FC 00 00 1E */	fctiwz f0, f0
/* 804B351C  D8 01 00 40 */	stfd f0, 0x40(r1)
/* 804B3520  80 01 00 44 */	lwz r0, 0x44(r1)
/* 804B3524  7C 04 02 14 */	add r0, r4, r0
/* 804B3528  B0 1D 14 18 */	sth r0, 0x1418(r29)
lbl_804B352C:
/* 804B352C  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 804B3530  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 804B3534  80 63 00 00 */	lwz r3, 0(r3)
/* 804B3538  A8 9D 14 18 */	lha r4, 0x1418(r29)
/* 804B353C  4B B5 8E A0 */	b mDoMtx_YrotS__FPA4_fs
/* 804B3540  C0 1F 00 58 */	lfs f0, 0x58(r31)
/* 804B3544  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 804B3548  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 804B354C  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 804B3550  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 804B3554  38 61 00 34 */	addi r3, r1, 0x34
/* 804B3558  38 81 00 28 */	addi r4, r1, 0x28
/* 804B355C  4B DB D9 90 */	b MtxPosition__FP4cXyzP4cXyz
/* 804B3560  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 804B3564  FC 00 00 50 */	fneg f0, f0
/* 804B3568  D0 1D 14 C8 */	stfs f0, 0x14c8(r29)
/* 804B356C  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 804B3570  D0 1D 14 CC */	stfs f0, 0x14cc(r29)
/* 804B3574  7F A3 EB 78 */	mr r3, r29
/* 804B3578  4B FF FC 61 */	bl uki_pl_arm_calc__FP13dmg_rod_class
/* 804B357C  38 61 00 1C */	addi r3, r1, 0x1c
/* 804B3580  38 9D 06 C8 */	addi r4, r29, 0x6c8
/* 804B3584  38 BD 06 D4 */	addi r5, r29, 0x6d4
/* 804B3588  4B DB 35 AC */	b __mi__4cXyzCFRC3Vec
/* 804B358C  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 804B3590  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 804B3594  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 804B3598  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 804B359C  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 804B35A0  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 804B35A4  38 61 00 34 */	addi r3, r1, 0x34
/* 804B35A8  4B E9 3B 90 */	b PSVECSquareMag
/* 804B35AC  C0 1F 00 58 */	lfs f0, 0x58(r31)
/* 804B35B0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804B35B4  40 81 00 58 */	ble lbl_804B360C
/* 804B35B8  FC 00 08 34 */	frsqrte f0, f1
/* 804B35BC  C8 9F 00 80 */	lfd f4, 0x80(r31)
/* 804B35C0  FC 44 00 32 */	fmul f2, f4, f0
/* 804B35C4  C8 7F 00 88 */	lfd f3, 0x88(r31)
/* 804B35C8  FC 00 00 32 */	fmul f0, f0, f0
/* 804B35CC  FC 01 00 32 */	fmul f0, f1, f0
/* 804B35D0  FC 03 00 28 */	fsub f0, f3, f0
/* 804B35D4  FC 02 00 32 */	fmul f0, f2, f0
/* 804B35D8  FC 44 00 32 */	fmul f2, f4, f0
/* 804B35DC  FC 00 00 32 */	fmul f0, f0, f0
/* 804B35E0  FC 01 00 32 */	fmul f0, f1, f0
/* 804B35E4  FC 03 00 28 */	fsub f0, f3, f0
/* 804B35E8  FC 02 00 32 */	fmul f0, f2, f0
/* 804B35EC  FC 44 00 32 */	fmul f2, f4, f0
/* 804B35F0  FC 00 00 32 */	fmul f0, f0, f0
/* 804B35F4  FC 01 00 32 */	fmul f0, f1, f0
/* 804B35F8  FC 03 00 28 */	fsub f0, f3, f0
/* 804B35FC  FC 02 00 32 */	fmul f0, f2, f0
/* 804B3600  FC 21 00 32 */	fmul f1, f1, f0
/* 804B3604  FC 20 08 18 */	frsp f1, f1
/* 804B3608  48 00 00 88 */	b lbl_804B3690
lbl_804B360C:
/* 804B360C  C8 1F 00 90 */	lfd f0, 0x90(r31)
/* 804B3610  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804B3614  40 80 00 10 */	bge lbl_804B3624
/* 804B3618  3C 60 80 45 */	lis r3, __float_nan@ha
/* 804B361C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 804B3620  48 00 00 70 */	b lbl_804B3690
lbl_804B3624:
/* 804B3624  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 804B3628  80 81 00 0C */	lwz r4, 0xc(r1)
/* 804B362C  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 804B3630  3C 00 7F 80 */	lis r0, 0x7f80
/* 804B3634  7C 03 00 00 */	cmpw r3, r0
/* 804B3638  41 82 00 14 */	beq lbl_804B364C
/* 804B363C  40 80 00 40 */	bge lbl_804B367C
/* 804B3640  2C 03 00 00 */	cmpwi r3, 0
/* 804B3644  41 82 00 20 */	beq lbl_804B3664
/* 804B3648  48 00 00 34 */	b lbl_804B367C
lbl_804B364C:
/* 804B364C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 804B3650  41 82 00 0C */	beq lbl_804B365C
/* 804B3654  38 00 00 01 */	li r0, 1
/* 804B3658  48 00 00 28 */	b lbl_804B3680
lbl_804B365C:
/* 804B365C  38 00 00 02 */	li r0, 2
/* 804B3660  48 00 00 20 */	b lbl_804B3680
lbl_804B3664:
/* 804B3664  54 80 02 7F */	clrlwi. r0, r4, 9
/* 804B3668  41 82 00 0C */	beq lbl_804B3674
/* 804B366C  38 00 00 05 */	li r0, 5
/* 804B3670  48 00 00 10 */	b lbl_804B3680
lbl_804B3674:
/* 804B3674  38 00 00 03 */	li r0, 3
/* 804B3678  48 00 00 08 */	b lbl_804B3680
lbl_804B367C:
/* 804B367C  38 00 00 04 */	li r0, 4
lbl_804B3680:
/* 804B3680  2C 00 00 01 */	cmpwi r0, 1
/* 804B3684  40 82 00 0C */	bne lbl_804B3690
/* 804B3688  3C 60 80 45 */	lis r3, __float_nan@ha
/* 804B368C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_804B3690:
/* 804B3690  C0 5F 02 08 */	lfs f2, 0x208(r31)
/* 804B3694  C0 1D 06 A0 */	lfs f0, 0x6a0(r29)
/* 804B3698  EC 00 00 72 */	fmuls f0, f0, f1
/* 804B369C  EC 22 00 32 */	fmuls f1, f2, f0
/* 804B36A0  D0 21 00 28 */	stfs f1, 0x28(r1)
/* 804B36A4  C0 1F 01 5C */	lfs f0, 0x15c(r31)
/* 804B36A8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804B36AC  40 81 00 2C */	ble lbl_804B36D8
/* 804B36B0  C0 1F 00 60 */	lfs f0, 0x60(r31)
/* 804B36B4  EC 20 00 72 */	fmuls f1, f0, f1
/* 804B36B8  D0 21 00 30 */	stfs f1, 0x30(r1)
/* 804B36BC  C0 1F 00 C0 */	lfs f0, 0xc0(r31)
/* 804B36C0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804B36C4  40 81 00 08 */	ble lbl_804B36CC
/* 804B36C8  D0 01 00 30 */	stfs f0, 0x30(r1)
lbl_804B36CC:
/* 804B36CC  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 804B36D0  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 804B36D4  48 00 00 58 */	b lbl_804B372C
lbl_804B36D8:
/* 804B36D8  C0 3F 00 B8 */	lfs f1, 0xb8(r31)
/* 804B36DC  C0 1E 05 2C */	lfs f0, 0x52c(r30)
/* 804B36E0  EC 41 00 32 */	fmuls f2, f1, f0
/* 804B36E4  D0 41 00 34 */	stfs f2, 0x34(r1)
/* 804B36E8  A8 1D 05 78 */	lha r0, 0x578(r29)
/* 804B36EC  1C 00 0F A0 */	mulli r0, r0, 0xfa0
/* 804B36F0  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 804B36F4  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 804B36F8  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 804B36FC  7C 63 04 2E */	lfsx f3, r3, r0
/* 804B3700  C0 1F 00 40 */	lfs f0, 0x40(r31)
/* 804B3704  EC 20 10 2A */	fadds f1, f0, f2
/* 804B3708  EC 02 00 F2 */	fmuls f0, f2, f3
/* 804B370C  EC 21 00 2A */	fadds f1, f1, f0
/* 804B3710  D0 21 00 30 */	stfs f1, 0x30(r1)
/* 804B3714  C0 1F 00 C0 */	lfs f0, 0xc0(r31)
/* 804B3718  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804B371C  40 81 00 08 */	ble lbl_804B3724
/* 804B3720  D0 01 00 30 */	stfs f0, 0x30(r1)
lbl_804B3724:
/* 804B3724  C0 1F 01 5C */	lfs f0, 0x15c(r31)
/* 804B3728  D0 01 00 2C */	stfs f0, 0x2c(r1)
lbl_804B372C:
/* 804B372C  38 7D 06 F8 */	addi r3, r29, 0x6f8
/* 804B3730  C0 21 00 30 */	lfs f1, 0x30(r1)
/* 804B3734  C0 5F 00 0C */	lfs f2, 0xc(r31)
/* 804B3738  C0 61 00 2C */	lfs f3, 0x2c(r1)
/* 804B373C  4B DB C3 00 */	b cLib_addCalc2__FPffff
/* 804B3740  88 1D 10 A5 */	lbz r0, 0x10a5(r29)
/* 804B3744  7C 00 07 75 */	extsb. r0, r0
/* 804B3748  40 82 00 68 */	bne lbl_804B37B0
/* 804B374C  C0 1D 07 64 */	lfs f0, 0x764(r29)
/* 804B3750  D0 1D 04 D0 */	stfs f0, 0x4d0(r29)
/* 804B3754  C0 1D 07 68 */	lfs f0, 0x768(r29)
/* 804B3758  D0 1D 04 D4 */	stfs f0, 0x4d4(r29)
/* 804B375C  C0 1D 07 6C */	lfs f0, 0x76c(r29)
/* 804B3760  D0 1D 04 D8 */	stfs f0, 0x4d8(r29)
/* 804B3764  C0 5D 04 D4 */	lfs f2, 0x4d4(r29)
/* 804B3768  C0 1F 01 5C */	lfs f0, 0x15c(r31)
/* 804B376C  C0 3D 05 90 */	lfs f1, 0x590(r29)
/* 804B3770  EC 60 08 2A */	fadds f3, f0, f1
/* 804B3774  FC 02 18 40 */	fcmpo cr0, f2, f3
/* 804B3778  4C 40 13 82 */	cror 2, 0, 2
/* 804B377C  40 82 00 34 */	bne lbl_804B37B0
/* 804B3780  C0 1D 04 C0 */	lfs f0, 0x4c0(r29)
/* 804B3784  FC 00 18 40 */	fcmpo cr0, f0, f3
/* 804B3788  40 81 00 28 */	ble lbl_804B37B0
/* 804B378C  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 804B3790  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 804B3794  D0 21 00 38 */	stfs f1, 0x38(r1)
/* 804B3798  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 804B379C  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 804B37A0  38 61 00 34 */	addi r3, r1, 0x34
/* 804B37A4  C0 3F 00 78 */	lfs f1, 0x78(r31)
/* 804B37A8  38 80 00 00 */	li r4, 0
/* 804B37AC  4B B6 C0 D0 */	b fopKyM_createWpillar__FPC4cXyzfi
lbl_804B37B0:
/* 804B37B0  C0 1D 10 60 */	lfs f0, 0x1060(r29)
/* 804B37B4  D0 1D 05 38 */	stfs f0, 0x538(r29)
/* 804B37B8  C0 1D 10 64 */	lfs f0, 0x1064(r29)
/* 804B37BC  D0 1D 05 3C */	stfs f0, 0x53c(r29)
/* 804B37C0  C0 1D 10 68 */	lfs f0, 0x1068(r29)
/* 804B37C4  D0 1D 05 40 */	stfs f0, 0x540(r29)
/* 804B37C8  3B 80 00 00 */	li r28, 0
/* 804B37CC  C0 5D 14 E0 */	lfs f2, 0x14e0(r29)
/* 804B37D0  C0 1F 00 58 */	lfs f0, 0x58(r31)
/* 804B37D4  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 804B37D8  40 80 00 7C */	bge lbl_804B3854
/* 804B37DC  C0 1D 14 DC */	lfs f0, 0x14dc(r29)
/* 804B37E0  EC 00 10 28 */	fsubs f0, f0, f2
/* 804B37E4  C0 3F 00 50 */	lfs f1, 0x50(r31)
/* 804B37E8  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 804B37EC  4C 41 13 82 */	cror 2, 1, 2
/* 804B37F0  40 82 00 64 */	bne lbl_804B3854
/* 804B37F4  3B 80 00 01 */	li r28, 1
/* 804B37F8  FC 00 12 10 */	fabs f0, f2
/* 804B37FC  FC 00 00 18 */	frsp f0, f0
/* 804B3800  D0 1D 06 FC */	stfs f0, 0x6fc(r29)
/* 804B3804  C0 1D 06 FC */	lfs f0, 0x6fc(r29)
/* 804B3808  EC 00 00 32 */	fmuls f0, f0, f0
/* 804B380C  D0 1D 06 FC */	stfs f0, 0x6fc(r29)
/* 804B3810  C0 1D 06 FC */	lfs f0, 0x6fc(r29)
/* 804B3814  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 804B3818  40 80 00 08 */	bge lbl_804B3820
/* 804B381C  D0 3D 06 FC */	stfs f1, 0x6fc(r29)
lbl_804B3820:
/* 804B3820  C0 3D 15 08 */	lfs f1, 0x1508(r29)
/* 804B3824  C0 1F 00 14 */	lfs f0, 0x14(r31)
/* 804B3828  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804B382C  40 81 00 28 */	ble lbl_804B3854
/* 804B3830  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 804B3834  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 804B3838  80 63 5D B4 */	lwz r3, 0x5db4(r3)
/* 804B383C  3C 80 00 02 */	lis r4, 0x0002 /* 0x00020079@ha */
/* 804B3840  38 84 00 79 */	addi r4, r4, 0x0079 /* 0x00020079@l */
/* 804B3844  81 83 06 28 */	lwz r12, 0x628(r3)
/* 804B3848  81 8C 01 18 */	lwz r12, 0x118(r12)
/* 804B384C  7D 89 03 A6 */	mtctr r12
/* 804B3850  4E 80 04 21 */	bctrl 
lbl_804B3854:
/* 804B3854  2C 1C 00 00 */	cmpwi r28, 0
/* 804B3858  41 82 00 18 */	beq lbl_804B3870
/* 804B385C  C0 1D 06 FC */	lfs f0, 0x6fc(r29)
/* 804B3860  D0 1D 06 E0 */	stfs f0, 0x6e0(r29)
/* 804B3864  C0 1F 00 58 */	lfs f0, 0x58(r31)
/* 804B3868  D0 1D 0F 68 */	stfs f0, 0xf68(r29)
/* 804B386C  D0 1D 0F 64 */	stfs f0, 0xf64(r29)
lbl_804B3870:
/* 804B3870  7F A3 EB 78 */	mr r3, r29
/* 804B3874  4B FF ED E9 */	bl uki_calc__FP13dmg_rod_class
/* 804B3878  38 7D 06 E0 */	addi r3, r29, 0x6e0
/* 804B387C  C0 3F 00 0C */	lfs f1, 0xc(r31)
/* 804B3880  C0 5F 00 CC */	lfs f2, 0xcc(r31)
/* 804B3884  4B DB C1 FC */	b cLib_addCalc0__FPfff
/* 804B3888  38 7D 0F 64 */	addi r3, r29, 0xf64
/* 804B388C  C0 3F 00 48 */	lfs f1, 0x48(r31)
/* 804B3890  C0 5F 00 0C */	lfs f2, 0xc(r31)
/* 804B3894  C0 7F 00 9C */	lfs f3, 0x9c(r31)
/* 804B3898  4B DB C1 A4 */	b cLib_addCalc2__FPffff
/* 804B389C  38 7D 0F 68 */	addi r3, r29, 0xf68
/* 804B38A0  C0 3F 00 6C */	lfs f1, 0x6c(r31)
/* 804B38A4  C0 5F 00 0C */	lfs f2, 0xc(r31)
/* 804B38A8  C0 7F 02 30 */	lfs f3, 0x230(r31)
/* 804B38AC  4B DB C1 90 */	b cLib_addCalc2__FPffff
/* 804B38B0  38 61 00 10 */	addi r3, r1, 0x10
/* 804B38B4  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 804B38B8  38 BD 10 60 */	addi r5, r29, 0x1060
/* 804B38BC  4B DB 32 78 */	b __mi__4cXyzCFRC3Vec
/* 804B38C0  38 61 00 10 */	addi r3, r1, 0x10
/* 804B38C4  4B E9 38 74 */	b PSVECSquareMag
/* 804B38C8  C0 1F 00 58 */	lfs f0, 0x58(r31)
/* 804B38CC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804B38D0  40 81 00 58 */	ble lbl_804B3928
/* 804B38D4  FC 00 08 34 */	frsqrte f0, f1
/* 804B38D8  C8 9F 00 80 */	lfd f4, 0x80(r31)
/* 804B38DC  FC 44 00 32 */	fmul f2, f4, f0
/* 804B38E0  C8 7F 00 88 */	lfd f3, 0x88(r31)
/* 804B38E4  FC 00 00 32 */	fmul f0, f0, f0
/* 804B38E8  FC 01 00 32 */	fmul f0, f1, f0
/* 804B38EC  FC 03 00 28 */	fsub f0, f3, f0
/* 804B38F0  FC 02 00 32 */	fmul f0, f2, f0
/* 804B38F4  FC 44 00 32 */	fmul f2, f4, f0
/* 804B38F8  FC 00 00 32 */	fmul f0, f0, f0
/* 804B38FC  FC 01 00 32 */	fmul f0, f1, f0
/* 804B3900  FC 03 00 28 */	fsub f0, f3, f0
/* 804B3904  FC 02 00 32 */	fmul f0, f2, f0
/* 804B3908  FC 44 00 32 */	fmul f2, f4, f0
/* 804B390C  FC 00 00 32 */	fmul f0, f0, f0
/* 804B3910  FC 01 00 32 */	fmul f0, f1, f0
/* 804B3914  FC 03 00 28 */	fsub f0, f3, f0
/* 804B3918  FC 02 00 32 */	fmul f0, f2, f0
/* 804B391C  FC 21 00 32 */	fmul f1, f1, f0
/* 804B3920  FC 20 08 18 */	frsp f1, f1
/* 804B3924  48 00 00 88 */	b lbl_804B39AC
lbl_804B3928:
/* 804B3928  C8 1F 00 90 */	lfd f0, 0x90(r31)
/* 804B392C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804B3930  40 80 00 10 */	bge lbl_804B3940
/* 804B3934  3C 60 80 45 */	lis r3, __float_nan@ha
/* 804B3938  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 804B393C  48 00 00 70 */	b lbl_804B39AC
lbl_804B3940:
/* 804B3940  D0 21 00 08 */	stfs f1, 8(r1)
/* 804B3944  80 81 00 08 */	lwz r4, 8(r1)
/* 804B3948  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 804B394C  3C 00 7F 80 */	lis r0, 0x7f80
/* 804B3950  7C 03 00 00 */	cmpw r3, r0
/* 804B3954  41 82 00 14 */	beq lbl_804B3968
/* 804B3958  40 80 00 40 */	bge lbl_804B3998
/* 804B395C  2C 03 00 00 */	cmpwi r3, 0
/* 804B3960  41 82 00 20 */	beq lbl_804B3980
/* 804B3964  48 00 00 34 */	b lbl_804B3998
lbl_804B3968:
/* 804B3968  54 80 02 7F */	clrlwi. r0, r4, 9
/* 804B396C  41 82 00 0C */	beq lbl_804B3978
/* 804B3970  38 00 00 01 */	li r0, 1
/* 804B3974  48 00 00 28 */	b lbl_804B399C
lbl_804B3978:
/* 804B3978  38 00 00 02 */	li r0, 2
/* 804B397C  48 00 00 20 */	b lbl_804B399C
lbl_804B3980:
/* 804B3980  54 80 02 7F */	clrlwi. r0, r4, 9
/* 804B3984  41 82 00 0C */	beq lbl_804B3990
/* 804B3988  38 00 00 05 */	li r0, 5
/* 804B398C  48 00 00 10 */	b lbl_804B399C
lbl_804B3990:
/* 804B3990  38 00 00 03 */	li r0, 3
/* 804B3994  48 00 00 08 */	b lbl_804B399C
lbl_804B3998:
/* 804B3998  38 00 00 04 */	li r0, 4
lbl_804B399C:
/* 804B399C  2C 00 00 01 */	cmpwi r0, 1
/* 804B39A0  40 82 00 0C */	bne lbl_804B39AC
/* 804B39A4  3C 60 80 45 */	lis r3, __float_nan@ha
/* 804B39A8  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_804B39AC:
/* 804B39AC  C0 5F 00 58 */	lfs f2, 0x58(r31)
/* 804B39B0  FC 01 10 40 */	fcmpo cr0, f1, f2
/* 804B39B4  4C 41 13 82 */	cror 2, 1, 2
/* 804B39B8  40 82 00 68 */	bne lbl_804B3A20
/* 804B39BC  C0 3D 15 08 */	lfs f1, 0x1508(r29)
/* 804B39C0  C0 1F 00 9C */	lfs f0, 0x9c(r31)
/* 804B39C4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804B39C8  40 80 00 58 */	bge lbl_804B3A20
/* 804B39CC  88 1D 10 0D */	lbz r0, 0x100d(r29)
/* 804B39D0  7C 00 07 75 */	extsb. r0, r0
/* 804B39D4  41 82 00 4C */	beq lbl_804B3A20
/* 804B39D8  A8 1D 05 7C */	lha r0, 0x57c(r29)
/* 804B39DC  2C 00 00 00 */	cmpwi r0, 0
/* 804B39E0  40 82 00 80 */	bne lbl_804B3A60
/* 804B39E4  A8 1D 13 B4 */	lha r0, 0x13b4(r29)
/* 804B39E8  2C 00 00 05 */	cmpwi r0, 5
/* 804B39EC  40 80 00 74 */	bge lbl_804B3A60
/* 804B39F0  38 00 00 05 */	li r0, 5
/* 804B39F4  B0 1D 13 B4 */	sth r0, 0x13b4(r29)
/* 804B39F8  38 00 00 0F */	li r0, 0xf
/* 804B39FC  B0 1D 05 7C */	sth r0, 0x57c(r29)
/* 804B3A00  D0 5D 0F 68 */	stfs f2, 0xf68(r29)
/* 804B3A04  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 804B3A08  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 804B3A0C  80 63 00 00 */	lwz r3, 0(r3)
/* 804B3A10  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 804B3A14  38 80 00 01 */	li r4, 1
/* 804B3A18  4B DF F0 70 */	b changeFishingBgm__8Z2SeqMgrFl
/* 804B3A1C  48 00 00 44 */	b lbl_804B3A60
lbl_804B3A20:
/* 804B3A20  A8 1D 05 7C */	lha r0, 0x57c(r29)
/* 804B3A24  2C 00 00 00 */	cmpwi r0, 0
/* 804B3A28  40 82 00 38 */	bne lbl_804B3A60
/* 804B3A2C  A8 1D 13 B4 */	lha r0, 0x13b4(r29)
/* 804B3A30  2C 00 00 05 */	cmpwi r0, 5
/* 804B3A34  41 80 00 2C */	blt lbl_804B3A60
/* 804B3A38  38 00 00 03 */	li r0, 3
/* 804B3A3C  B0 1D 13 B4 */	sth r0, 0x13b4(r29)
/* 804B3A40  38 00 00 0F */	li r0, 0xf
/* 804B3A44  B0 1D 05 7C */	sth r0, 0x57c(r29)
/* 804B3A48  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 804B3A4C  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 804B3A50  80 63 00 00 */	lwz r3, 0(r3)
/* 804B3A54  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 804B3A58  38 80 00 00 */	li r4, 0
/* 804B3A5C  4B DF F0 2C */	b changeFishingBgm__8Z2SeqMgrFl
lbl_804B3A60:
/* 804B3A60  3C 60 80 3E */	lis r3, m_cpadInfo__8mDoCPd_c@ha
/* 804B3A64  38 63 D2 E8 */	addi r3, r3, m_cpadInfo__8mDoCPd_c@l
/* 804B3A68  80 03 00 34 */	lwz r0, 0x34(r3)
/* 804B3A6C  54 00 05 EF */	rlwinm. r0, r0, 0, 0x17, 0x17
/* 804B3A70  41 82 00 24 */	beq lbl_804B3A94
/* 804B3A74  38 00 00 5A */	li r0, 0x5a
/* 804B3A78  B0 1D 13 B4 */	sth r0, 0x13b4(r29)
/* 804B3A7C  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 804B3A80  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 804B3A84  80 63 00 00 */	lwz r3, 0(r3)
/* 804B3A88  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 804B3A8C  38 80 00 00 */	li r4, 0
/* 804B3A90  4B DF EF F8 */	b changeFishingBgm__8Z2SeqMgrFl
lbl_804B3A94:
/* 804B3A94  A8 1D 05 7A */	lha r0, 0x57a(r29)
/* 804B3A98  2C 00 00 00 */	cmpwi r0, 0
/* 804B3A9C  40 82 00 84 */	bne lbl_804B3B20
/* 804B3AA0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 804B3AA4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 804B3AA8  80 03 5F 18 */	lwz r0, 0x5f18(r3)
/* 804B3AAC  54 00 02 D7 */	rlwinm. r0, r0, 0, 0xb, 0xb
/* 804B3AB0  40 82 00 68 */	bne lbl_804B3B18
/* 804B3AB4  38 7D 15 54 */	addi r3, r29, 0x1554
/* 804B3AB8  4B BD 0B A0 */	b ChkCoHit__12dCcD_GObjInfFv
/* 804B3ABC  28 03 00 00 */	cmplwi r3, 0
/* 804B3AC0  40 82 00 58 */	bne lbl_804B3B18
/* 804B3AC4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 804B3AC8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 804B3ACC  88 03 4F AD */	lbz r0, 0x4fad(r3)
/* 804B3AD0  28 00 00 00 */	cmplwi r0, 0
/* 804B3AD4  40 82 00 44 */	bne lbl_804B3B18
/* 804B3AD8  7F A3 EB 78 */	mr r3, r29
/* 804B3ADC  4B FF F6 0D */	bl uki_rod_bg_check__FP13dmg_rod_class
/* 804B3AE0  2C 03 00 00 */	cmpwi r3, 0
/* 804B3AE4  40 82 00 34 */	bne lbl_804B3B18
/* 804B3AE8  88 1D 10 0D */	lbz r0, 0x100d(r29)
/* 804B3AEC  7C 00 07 75 */	extsb. r0, r0
/* 804B3AF0  40 82 00 1C */	bne lbl_804B3B0C
/* 804B3AF4  C0 3E 04 D4 */	lfs f1, 0x4d4(r30)
/* 804B3AF8  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 804B3AFC  EC 21 00 28 */	fsubs f1, f1, f0
/* 804B3B00  C0 1F 02 34 */	lfs f0, 0x234(r31)
/* 804B3B04  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804B3B08  41 81 00 10 */	bgt lbl_804B3B18
lbl_804B3B0C:
/* 804B3B0C  88 1D 10 2E */	lbz r0, 0x102e(r29)
/* 804B3B10  7C 00 07 75 */	extsb. r0, r0
/* 804B3B14  41 82 00 0C */	beq lbl_804B3B20
lbl_804B3B18:
/* 804B3B18  38 00 00 5A */	li r0, 0x5a
/* 804B3B1C  B0 1D 13 B4 */	sth r0, 0x13b4(r29)
lbl_804B3B20:
/* 804B3B20  A8 1D 13 B4 */	lha r0, 0x13b4(r29)
/* 804B3B24  2C 00 00 5A */	cmpwi r0, 0x5a
/* 804B3B28  40 82 00 34 */	bne lbl_804B3B5C
/* 804B3B2C  38 80 00 00 */	li r4, 0
/* 804B3B30  B0 9D 0F 7E */	sth r4, 0xf7e(r29)
/* 804B3B34  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 804B3B38  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 804B3B3C  80 63 5D B4 */	lwz r3, 0x5db4(r3)
/* 804B3B40  80 03 05 78 */	lwz r0, 0x578(r3)
/* 804B3B44  54 00 00 C2 */	rlwinm r0, r0, 0, 3, 1
/* 804B3B48  90 03 05 78 */	stw r0, 0x578(r3)
/* 804B3B4C  C0 1F 00 58 */	lfs f0, 0x58(r31)
/* 804B3B50  D0 1D 10 94 */	stfs f0, 0x1094(r29)
/* 804B3B54  D0 1D 06 E0 */	stfs f0, 0x6e0(r29)
/* 804B3B58  98 9D 10 A5 */	stb r4, 0x10a5(r29)
lbl_804B3B5C:
/* 804B3B5C  E3 E1 00 68 */	psq_l f31, 104(r1), 0, 0 /* qr0 */
/* 804B3B60  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 804B3B64  39 61 00 60 */	addi r11, r1, 0x60
/* 804B3B68  4B EA E6 BC */	b _restgpr_28
/* 804B3B6C  80 01 00 74 */	lwz r0, 0x74(r1)
/* 804B3B70  7C 08 03 A6 */	mtlr r0
/* 804B3B74  38 21 00 70 */	addi r1, r1, 0x70
/* 804B3B78  4E 80 00 20 */	blr 
