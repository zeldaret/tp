lbl_800A3430:
/* 800A3430  94 21 FE F0 */	stwu r1, -0x110(r1)
/* 800A3434  7C 08 02 A6 */	mflr r0
/* 800A3438  90 01 01 14 */	stw r0, 0x114(r1)
/* 800A343C  DB E1 01 00 */	stfd f31, 0x100(r1)
/* 800A3440  F3 E1 01 08 */	psq_st f31, 264(r1), 0, 0 /* qr0 */
/* 800A3444  DB C1 00 F0 */	stfd f30, 0xf0(r1)
/* 800A3448  F3 C1 00 F8 */	psq_st f30, 248(r1), 0, 0 /* qr0 */
/* 800A344C  DB A1 00 E0 */	stfd f29, 0xe0(r1)
/* 800A3450  F3 A1 00 E8 */	psq_st f29, 232(r1), 0, 0 /* qr0 */
/* 800A3454  39 61 00 E0 */	addi r11, r1, 0xe0
/* 800A3458  48 2B ED 6D */	bl _savegpr_23
/* 800A345C  7C 79 1B 78 */	mr r25, r3
/* 800A3460  3C 60 80 39 */	lis r3, lit_3757@ha
/* 800A3464  3B E3 D6 58 */	addi r31, r3, lit_3757@l
/* 800A3468  80 79 20 60 */	lwz r3, 0x2060(r25)
/* 800A346C  88 03 00 00 */	lbz r0, 0(r3)
/* 800A3470  28 00 00 00 */	cmplwi r0, 0
/* 800A3474  41 82 05 14 */	beq lbl_800A3988
/* 800A3478  C3 E2 92 C0 */	lfs f31, lit_6108(r2)
/* 800A347C  3C 60 80 3A */	lis r3, __vt__8cM3dGPla@ha
/* 800A3480  38 03 37 C0 */	addi r0, r3, __vt__8cM3dGPla@l
/* 800A3484  90 01 00 AC */	stw r0, 0xac(r1)
/* 800A3488  80 19 31 A0 */	lwz r0, 0x31a0(r25)
/* 800A348C  54 1E 07 FE */	clrlwi r30, r0, 0x1f
/* 800A3490  3B 79 29 04 */	addi r27, r25, 0x2904
/* 800A3494  3B A1 00 10 */	addi r29, r1, 0x10
/* 800A3498  80 79 06 50 */	lwz r3, 0x650(r25)
/* 800A349C  80 63 00 84 */	lwz r3, 0x84(r3)
/* 800A34A0  80 63 00 0C */	lwz r3, 0xc(r3)
/* 800A34A4  38 63 03 C0 */	addi r3, r3, 0x3c0
/* 800A34A8  38 9F 48 A4 */	addi r4, r31, 0x48a4
/* 800A34AC  38 A1 00 6C */	addi r5, r1, 0x6c
/* 800A34B0  48 2A 38 BD */	bl PSMTXMultVec
/* 800A34B4  80 79 06 50 */	lwz r3, 0x650(r25)
/* 800A34B8  80 63 00 84 */	lwz r3, 0x84(r3)
/* 800A34BC  80 63 00 0C */	lwz r3, 0xc(r3)
/* 800A34C0  38 63 03 F0 */	addi r3, r3, 0x3f0
/* 800A34C4  38 9F 48 BC */	addi r4, r31, 0x48bc
/* 800A34C8  38 A1 00 84 */	addi r5, r1, 0x84
/* 800A34CC  48 2A 38 A1 */	bl PSMTXMultVec
/* 800A34D0  80 79 06 50 */	lwz r3, 0x650(r25)
/* 800A34D4  80 63 00 84 */	lwz r3, 0x84(r3)
/* 800A34D8  80 63 00 0C */	lwz r3, 0xc(r3)
/* 800A34DC  38 63 04 B0 */	addi r3, r3, 0x4b0
/* 800A34E0  38 9F 48 B0 */	addi r4, r31, 0x48b0
/* 800A34E4  38 A1 00 78 */	addi r5, r1, 0x78
/* 800A34E8  48 2A 38 85 */	bl PSMTXMultVec
/* 800A34EC  80 79 06 50 */	lwz r3, 0x650(r25)
/* 800A34F0  80 63 00 84 */	lwz r3, 0x84(r3)
/* 800A34F4  80 63 00 0C */	lwz r3, 0xc(r3)
/* 800A34F8  38 63 04 E0 */	addi r3, r3, 0x4e0
/* 800A34FC  38 9F 48 C8 */	addi r4, r31, 0x48c8
/* 800A3500  38 A1 00 90 */	addi r5, r1, 0x90
/* 800A3504  48 2A 38 69 */	bl PSMTXMultVec
/* 800A3508  38 A0 00 00 */	li r5, 0
/* 800A350C  80 19 19 9C */	lwz r0, 0x199c(r25)
/* 800A3510  54 03 06 B5 */	rlwinm. r3, r0, 0, 0x1a, 0x1a
/* 800A3514  41 82 00 3C */	beq lbl_800A3550
/* 800A3518  80 19 05 70 */	lwz r0, 0x570(r25)
/* 800A351C  54 00 04 E7 */	rlwinm. r0, r0, 0, 0x13, 0x13
/* 800A3520  40 82 00 30 */	bne lbl_800A3550
/* 800A3524  28 03 00 00 */	cmplwi r3, 0
/* 800A3528  41 82 00 14 */	beq lbl_800A353C
/* 800A352C  C0 39 2B A8 */	lfs f1, 0x2ba8(r25)
/* 800A3530  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800A3534  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800A3538  41 80 00 18 */	blt lbl_800A3550
lbl_800A353C:
/* 800A353C  80 99 31 A0 */	lwz r4, 0x31a0(r25)
/* 800A3540  3C 60 00 08 */	lis r3, 0x0008 /* 0x00078C52@ha */
/* 800A3544  38 03 8C 52 */	addi r0, r3, 0x8C52 /* 0x00078C52@l */
/* 800A3548  7C 80 00 39 */	and. r0, r4, r0
/* 800A354C  41 82 00 08 */	beq lbl_800A3554
lbl_800A3550:
/* 800A3550  38 A0 00 01 */	li r5, 1
lbl_800A3554:
/* 800A3554  54 BA 06 3E */	clrlwi r26, r5, 0x18
/* 800A3558  3B 80 00 00 */	li r28, 0
/* 800A355C  3B 00 00 00 */	li r24, 0
/* 800A3560  3B E0 00 00 */	li r31, 0
/* 800A3564  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 800A3568  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 800A356C  3A E3 0F 38 */	addi r23, r3, 0xf38
/* 800A3570  C3 C2 93 A4 */	lfs f30, lit_9138(r2)
lbl_800A3574:
/* 800A3574  38 61 00 3C */	addi r3, r1, 0x3c
/* 800A3578  38 81 00 84 */	addi r4, r1, 0x84
/* 800A357C  7C 84 FA 14 */	add r4, r4, r31
/* 800A3580  38 A1 00 6C */	addi r5, r1, 0x6c
/* 800A3584  7C A5 FA 14 */	add r5, r5, r31
/* 800A3588  48 1C 35 5D */	bl __pl__4cXyzCFRC3Vec
/* 800A358C  38 61 00 30 */	addi r3, r1, 0x30
/* 800A3590  38 81 00 3C */	addi r4, r1, 0x3c
/* 800A3594  C0 22 92 98 */	lfs f1, lit_5943(r2)
/* 800A3598  48 1C 35 ED */	bl __ml__4cXyzCFf
/* 800A359C  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 800A35A0  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 800A35A4  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 800A35A8  D0 01 00 64 */	stfs f0, 0x64(r1)
/* 800A35AC  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 800A35B0  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 800A35B4  2C 1A 00 00 */	cmpwi r26, 0
/* 800A35B8  41 82 00 10 */	beq lbl_800A35C8
/* 800A35BC  38 00 00 05 */	li r0, 5
/* 800A35C0  98 1B 00 01 */	stb r0, 1(r27)
/* 800A35C4  48 00 00 94 */	b lbl_800A3658
lbl_800A35C8:
/* 800A35C8  38 61 00 24 */	addi r3, r1, 0x24
/* 800A35CC  38 81 00 60 */	addi r4, r1, 0x60
/* 800A35D0  38 BB 00 08 */	addi r5, r27, 8
/* 800A35D4  48 1C 35 61 */	bl __mi__4cXyzCFRC3Vec
/* 800A35D8  C0 41 00 24 */	lfs f2, 0x24(r1)
/* 800A35DC  D0 41 00 54 */	stfs f2, 0x54(r1)
/* 800A35E0  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 800A35E4  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 800A35E8  C0 21 00 2C */	lfs f1, 0x2c(r1)
/* 800A35EC  D0 21 00 5C */	stfs f1, 0x5c(r1)
/* 800A35F0  D0 41 00 18 */	stfs f2, 0x18(r1)
/* 800A35F4  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800A35F8  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 800A35FC  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 800A3600  38 61 00 18 */	addi r3, r1, 0x18
/* 800A3604  48 2A 3B 35 */	bl PSVECSquareMag
/* 800A3608  C0 02 93 50 */	lfs f0, lit_8247(r2)
/* 800A360C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800A3610  40 80 00 40 */	bge lbl_800A3650
/* 800A3614  28 1E 00 00 */	cmplwi r30, 0
/* 800A3618  41 82 00 38 */	beq lbl_800A3650
/* 800A361C  88 7B 00 01 */	lbz r3, 1(r27)
/* 800A3620  28 03 00 00 */	cmplwi r3, 0
/* 800A3624  41 82 00 10 */	beq lbl_800A3634
/* 800A3628  38 03 FF FF */	addi r0, r3, -1
/* 800A362C  98 1B 00 01 */	stb r0, 1(r27)
/* 800A3630  48 00 00 28 */	b lbl_800A3658
lbl_800A3634:
/* 800A3634  C0 1B 00 08 */	lfs f0, 8(r27)
/* 800A3638  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 800A363C  C0 1B 00 0C */	lfs f0, 0xc(r27)
/* 800A3640  D0 01 00 64 */	stfs f0, 0x64(r1)
/* 800A3644  C0 1B 00 10 */	lfs f0, 0x10(r27)
/* 800A3648  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 800A364C  48 00 00 0C */	b lbl_800A3658
lbl_800A3650:
/* 800A3650  38 00 00 05 */	li r0, 5
/* 800A3654  98 1B 00 01 */	stb r0, 1(r27)
lbl_800A3658:
/* 800A3658  C0 01 00 60 */	lfs f0, 0x60(r1)
/* 800A365C  D0 1B 00 08 */	stfs f0, 8(r27)
/* 800A3660  C0 01 00 64 */	lfs f0, 0x64(r1)
/* 800A3664  D0 1B 00 0C */	stfs f0, 0xc(r27)
/* 800A3668  C0 01 00 68 */	lfs f0, 0x68(r1)
/* 800A366C  D0 1B 00 10 */	stfs f0, 0x10(r27)
/* 800A3670  C0 39 04 D4 */	lfs f1, 0x4d4(r25)
/* 800A3674  C0 0D 81 10 */	lfs f0, l_autoUpHeight(r13)
/* 800A3678  EC 21 00 2A */	fadds f1, f1, f0
/* 800A367C  C0 01 00 60 */	lfs f0, 0x60(r1)
/* 800A3680  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 800A3684  D0 21 00 4C */	stfs f1, 0x4c(r1)
/* 800A3688  C0 01 00 68 */	lfs f0, 0x68(r1)
/* 800A368C  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 800A3690  38 79 1D 08 */	addi r3, r25, 0x1d08
/* 800A3694  38 81 00 48 */	addi r4, r1, 0x48
/* 800A3698  48 1C 46 91 */	bl SetPos__11cBgS_GndChkFPC4cXyz
/* 800A369C  7E E3 BB 78 */	mr r3, r23
/* 800A36A0  38 99 1D 08 */	addi r4, r25, 0x1d08
/* 800A36A4  4B FD 0D FD */	bl GroundCross__4cBgSFP11cBgS_GndChk
/* 800A36A8  FF A0 08 90 */	fmr f29, f1
/* 800A36AC  FC 1E E8 00 */	fcmpu cr0, f30, f29
/* 800A36B0  41 82 00 14 */	beq lbl_800A36C4
/* 800A36B4  7E E3 BB 78 */	mr r3, r23
/* 800A36B8  38 99 1D 1C */	addi r4, r25, 0x1d1c
/* 800A36BC  38 A1 00 9C */	addi r5, r1, 0x9c
/* 800A36C0  4B FD 10 85 */	bl GetTriPla__4cBgSCFRC13cBgS_PolyInfoP8cM3dGPla
lbl_800A36C4:
/* 800A36C4  FC 1E E8 00 */	fcmpu cr0, f30, f29
/* 800A36C8  41 82 00 58 */	beq lbl_800A3720
/* 800A36CC  C0 21 00 A0 */	lfs f1, 0xa0(r1)
/* 800A36D0  48 1C 4B 15 */	bl cBgW_CheckBGround__Ff
/* 800A36D4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800A36D8  41 82 00 48 */	beq lbl_800A3720
/* 800A36DC  C0 01 00 4C */	lfs f0, 0x4c(r1)
/* 800A36E0  EC 40 E8 28 */	fsubs f2, f0, f29
/* 800A36E4  C0 2D 81 10 */	lfs f1, l_autoUpHeight(r13)
/* 800A36E8  C0 0D 81 14 */	lfs f0, l_autoDownHeight(r13)
/* 800A36EC  EC 01 00 28 */	fsubs f0, f1, f0
/* 800A36F0  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 800A36F4  40 80 00 2C */	bge lbl_800A3720
/* 800A36F8  D3 BD 00 00 */	stfs f29, 0(r29)
/* 800A36FC  38 00 00 01 */	li r0, 1
/* 800A3700  98 1B 00 00 */	stb r0, 0(r27)
/* 800A3704  7F 23 CB 78 */	mr r3, r25
/* 800A3708  38 99 1D 1C */	addi r4, r25, 0x1d1c
/* 800A370C  A8 B9 04 E6 */	lha r5, 0x4e6(r25)
/* 800A3710  48 00 C9 89 */	bl getGroundAngle__9daAlink_cFP13cBgS_PolyInfos
/* 800A3714  38 81 00 0C */	addi r4, r1, 0xc
/* 800A3718  7C 64 C3 2E */	sthx r3, r4, r24
/* 800A371C  48 00 00 14 */	b lbl_800A3730
lbl_800A3720:
/* 800A3720  C0 19 04 D4 */	lfs f0, 0x4d4(r25)
/* 800A3724  D0 1D 00 00 */	stfs f0, 0(r29)
/* 800A3728  38 00 00 00 */	li r0, 0
/* 800A372C  98 1B 00 00 */	stb r0, 0(r27)
lbl_800A3730:
/* 800A3730  3B 9C 00 01 */	addi r28, r28, 1
/* 800A3734  2C 1C 00 02 */	cmpwi r28, 2
/* 800A3738  3B 18 00 02 */	addi r24, r24, 2
/* 800A373C  3B FF 00 0C */	addi r31, r31, 0xc
/* 800A3740  3B 7B 00 A4 */	addi r27, r27, 0xa4
/* 800A3744  3B BD 00 04 */	addi r29, r29, 4
/* 800A3748  41 80 FE 2C */	blt lbl_800A3574
/* 800A374C  2C 1A 00 00 */	cmpwi r26, 0
/* 800A3750  41 82 00 0C */	beq lbl_800A375C
/* 800A3754  3B 80 00 02 */	li r28, 2
/* 800A3758  48 00 00 2C */	b lbl_800A3784
lbl_800A375C:
/* 800A375C  C0 21 00 14 */	lfs f1, 0x14(r1)
/* 800A3760  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 800A3764  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800A3768  40 81 00 0C */	ble lbl_800A3774
/* 800A376C  3B 80 00 00 */	li r28, 0
/* 800A3770  48 00 00 08 */	b lbl_800A3778
lbl_800A3774:
/* 800A3774  3B 80 00 01 */	li r28, 1
lbl_800A3778:
/* 800A3778  57 80 10 3A */	slwi r0, r28, 2
/* 800A377C  38 61 00 10 */	addi r3, r1, 0x10
/* 800A3780  7F E3 04 2E */	lfsx f31, r3, r0
lbl_800A3784:
/* 800A3784  7F 23 CB 78 */	mr r3, r25
/* 800A3788  48 00 E4 25 */	bl setSandShapeOffset__9daAlink_cFv
/* 800A378C  7F 23 CB 78 */	mr r3, r25
/* 800A3790  38 99 2B A8 */	addi r4, r25, 0x2ba8
/* 800A3794  C0 39 2B A8 */	lfs f1, 0x2ba8(r25)
/* 800A3798  4B FF F4 8D */	bl setMatrixOffset__9daAlink_cFPff
/* 800A379C  7F 23 CB 78 */	mr r3, r25
/* 800A37A0  48 00 DF 8D */	bl setSandDownBgCheckWallH__9daAlink_cFv
/* 800A37A4  A0 19 2F E8 */	lhz r0, 0x2fe8(r25)
/* 800A37A8  28 00 00 01 */	cmplwi r0, 1
/* 800A37AC  40 82 00 0C */	bne lbl_800A37B8
/* 800A37B0  C3 F9 2B 94 */	lfs f31, 0x2b94(r25)
/* 800A37B4  48 00 00 4C */	b lbl_800A3800
lbl_800A37B8:
/* 800A37B8  2C 1A 00 00 */	cmpwi r26, 0
/* 800A37BC  40 82 00 34 */	bne lbl_800A37F0
/* 800A37C0  28 1E 00 00 */	cmplwi r30, 0
/* 800A37C4  41 82 00 2C */	beq lbl_800A37F0
/* 800A37C8  28 00 01 3D */	cmplwi r0, 0x13d
/* 800A37CC  41 82 00 24 */	beq lbl_800A37F0
/* 800A37D0  28 00 00 E6 */	cmplwi r0, 0xe6
/* 800A37D4  41 82 00 1C */	beq lbl_800A37F0
/* 800A37D8  C0 19 2B 98 */	lfs f0, 0x2b98(r25)
/* 800A37DC  FC 00 02 10 */	fabs f0, f0
/* 800A37E0  FC 20 00 18 */	frsp f1, f0
/* 800A37E4  C0 02 92 B8 */	lfs f0, lit_6040(r2)
/* 800A37E8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800A37EC  40 81 00 0C */	ble lbl_800A37F8
lbl_800A37F0:
/* 800A37F0  C3 E2 92 C0 */	lfs f31, lit_6108(r2)
/* 800A37F4  48 00 00 0C */	b lbl_800A3800
lbl_800A37F8:
/* 800A37F8  C0 19 04 D4 */	lfs f0, 0x4d4(r25)
/* 800A37FC  EF FF 00 28 */	fsubs f31, f31, f0
lbl_800A3800:
/* 800A3800  7F 23 CB 78 */	mr r3, r25
/* 800A3804  38 99 2B 94 */	addi r4, r25, 0x2b94
/* 800A3808  FC 20 F8 90 */	fmr f1, f31
/* 800A380C  4B FF F4 19 */	bl setMatrixOffset__9daAlink_cFPff
/* 800A3810  3B F9 29 04 */	addi r31, r25, 0x2904
/* 800A3814  3B A0 00 00 */	li r29, 0
/* 800A3818  3B 60 00 00 */	li r27, 0
/* 800A381C  3B 00 00 00 */	li r24, 0
lbl_800A3820:
/* 800A3820  2C 1A 00 00 */	cmpwi r26, 0
/* 800A3824  41 82 00 14 */	beq lbl_800A3838
/* 800A3828  38 00 00 00 */	li r0, 0
/* 800A382C  B0 01 00 0A */	sth r0, 0xa(r1)
/* 800A3830  B0 01 00 08 */	sth r0, 8(r1)
/* 800A3834  48 00 00 70 */	b lbl_800A38A4
lbl_800A3838:
/* 800A3838  80 99 06 50 */	lwz r4, 0x650(r25)
/* 800A383C  38 61 00 10 */	addi r3, r1, 0x10
/* 800A3840  7C 23 C4 2E */	lfsx f1, r3, r24
/* 800A3844  C0 04 00 40 */	lfs f0, 0x40(r4)
/* 800A3848  EC 21 00 28 */	fsubs f1, f1, f0
/* 800A384C  C0 0D 81 10 */	lfs f0, l_autoUpHeight(r13)
/* 800A3850  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800A3854  40 81 00 08 */	ble lbl_800A385C
/* 800A3858  FC 20 00 90 */	fmr f1, f0
lbl_800A385C:
/* 800A385C  7C 1C E8 00 */	cmpw r28, r29
/* 800A3860  41 82 00 18 */	beq lbl_800A3878
/* 800A3864  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800A3868  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800A386C  41 81 00 0C */	bgt lbl_800A3878
/* 800A3870  28 1E 00 00 */	cmplwi r30, 0
/* 800A3874  41 82 00 24 */	beq lbl_800A3898
lbl_800A3878:
/* 800A3878  7F 23 CB 78 */	mr r3, r25
/* 800A387C  7F E4 FB 78 */	mr r4, r31
/* 800A3880  38 A1 00 0A */	addi r5, r1, 0xa
/* 800A3884  38 C1 00 08 */	addi r6, r1, 8
/* 800A3888  38 E0 00 01 */	li r7, 1
/* 800A388C  4B FF F4 55 */	bl setLegAngle__9daAlink_cFfP18daAlink_footData_cPsPsi
/* 800A3890  2C 03 00 00 */	cmpwi r3, 0
/* 800A3894  40 82 00 10 */	bne lbl_800A38A4
lbl_800A3898:
/* 800A3898  38 00 00 00 */	li r0, 0
/* 800A389C  B0 01 00 0A */	sth r0, 0xa(r1)
/* 800A38A0  B0 01 00 08 */	sth r0, 8(r1)
lbl_800A38A4:
/* 800A38A4  A8 81 00 0A */	lha r4, 0xa(r1)
/* 800A38A8  A8 7F 00 06 */	lha r3, 6(r31)
/* 800A38AC  7C 04 19 D7 */	mullw. r0, r4, r3
/* 800A38B0  40 80 00 3C */	bge lbl_800A38EC
/* 800A38B4  7C 63 20 50 */	subf r3, r3, r4
/* 800A38B8  48 2C 18 19 */	bl abs
/* 800A38BC  3C 80 00 01 */	lis r4, 0x0001 /* 0x00008000@ha */
/* 800A38C0  38 04 80 00 */	addi r0, r4, 0x8000 /* 0x00008000@l */
/* 800A38C4  7C 03 00 00 */	cmpw r3, r0
/* 800A38C8  41 80 00 24 */	blt lbl_800A38EC
/* 800A38CC  A8 61 00 0A */	lha r3, 0xa(r1)
/* 800A38D0  2C 03 00 00 */	cmpwi r3, 0
/* 800A38D4  41 80 00 10 */	blt lbl_800A38E4
/* 800A38D8  38 03 C0 00 */	addi r0, r3, -16384
/* 800A38DC  B0 01 00 0A */	sth r0, 0xa(r1)
/* 800A38E0  48 00 00 0C */	b lbl_800A38EC
lbl_800A38E4:
/* 800A38E4  38 03 40 00 */	addi r0, r3, 0x4000
/* 800A38E8  B0 01 00 0A */	sth r0, 0xa(r1)
lbl_800A38EC:
/* 800A38EC  38 7F 00 06 */	addi r3, r31, 6
/* 800A38F0  A8 81 00 0A */	lha r4, 0xa(r1)
/* 800A38F4  38 A0 00 02 */	li r5, 2
/* 800A38F8  38 C0 18 00 */	li r6, 0x1800
/* 800A38FC  38 E0 00 10 */	li r7, 0x10
/* 800A3900  48 1C CC 41 */	bl cLib_addCalcAngleS__FPsssss
/* 800A3904  38 7F 00 04 */	addi r3, r31, 4
/* 800A3908  A8 81 00 08 */	lha r4, 8(r1)
/* 800A390C  38 A0 00 02 */	li r5, 2
/* 800A3910  38 C0 18 00 */	li r6, 0x1800
/* 800A3914  38 E0 00 10 */	li r7, 0x10
/* 800A3918  48 1C CC 29 */	bl cLib_addCalcAngleS__FPsssss
/* 800A391C  38 80 00 00 */	li r4, 0
/* 800A3920  2C 1C 00 02 */	cmpwi r28, 2
/* 800A3924  41 82 00 2C */	beq lbl_800A3950
/* 800A3928  88 1F 00 00 */	lbz r0, 0(r31)
/* 800A392C  28 00 00 00 */	cmplwi r0, 0
/* 800A3930  41 82 00 20 */	beq lbl_800A3950
/* 800A3934  28 1E 00 00 */	cmplwi r30, 0
/* 800A3938  41 82 00 18 */	beq lbl_800A3950
/* 800A393C  80 19 31 74 */	lwz r0, 0x3174(r25)
/* 800A3940  2C 00 00 08 */	cmpwi r0, 8
/* 800A3944  41 82 00 0C */	beq lbl_800A3950
/* 800A3948  38 61 00 0C */	addi r3, r1, 0xc
/* 800A394C  7C 83 DA AE */	lhax r4, r3, r27
lbl_800A3950:
/* 800A3950  38 7F 00 02 */	addi r3, r31, 2
/* 800A3954  38 A0 00 02 */	li r5, 2
/* 800A3958  38 C0 18 00 */	li r6, 0x1800
/* 800A395C  38 E0 00 10 */	li r7, 0x10
/* 800A3960  48 1C CB E1 */	bl cLib_addCalcAngleS__FPsssss
/* 800A3964  3B BD 00 01 */	addi r29, r29, 1
/* 800A3968  2C 1D 00 02 */	cmpwi r29, 2
/* 800A396C  3B 7B 00 02 */	addi r27, r27, 2
/* 800A3970  3B 18 00 04 */	addi r24, r24, 4
/* 800A3974  3B FF 00 A4 */	addi r31, r31, 0xa4
/* 800A3978  41 80 FE A8 */	blt lbl_800A3820
/* 800A397C  3C 60 80 3A */	lis r3, __vt__8cM3dGPla@ha
/* 800A3980  38 03 37 C0 */	addi r0, r3, __vt__8cM3dGPla@l
/* 800A3984  90 01 00 AC */	stw r0, 0xac(r1)
lbl_800A3988:
/* 800A3988  E3 E1 01 08 */	psq_l f31, 264(r1), 0, 0 /* qr0 */
/* 800A398C  CB E1 01 00 */	lfd f31, 0x100(r1)
/* 800A3990  E3 C1 00 F8 */	psq_l f30, 248(r1), 0, 0 /* qr0 */
/* 800A3994  CB C1 00 F0 */	lfd f30, 0xf0(r1)
/* 800A3998  E3 A1 00 E8 */	psq_l f29, 232(r1), 0, 0 /* qr0 */
/* 800A399C  CB A1 00 E0 */	lfd f29, 0xe0(r1)
/* 800A39A0  39 61 00 E0 */	addi r11, r1, 0xe0
/* 800A39A4  48 2B E8 6D */	bl _restgpr_23
/* 800A39A8  80 01 01 14 */	lwz r0, 0x114(r1)
/* 800A39AC  7C 08 03 A6 */	mtlr r0
/* 800A39B0  38 21 01 10 */	addi r1, r1, 0x110
/* 800A39B4  4E 80 00 20 */	blr 
