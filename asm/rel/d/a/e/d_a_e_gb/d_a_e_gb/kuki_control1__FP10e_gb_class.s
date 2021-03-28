lbl_806C3558:
/* 806C3558  94 21 FF 30 */	stwu r1, -0xd0(r1)
/* 806C355C  7C 08 02 A6 */	mflr r0
/* 806C3560  90 01 00 D4 */	stw r0, 0xd4(r1)
/* 806C3564  DB E1 00 C0 */	stfd f31, 0xc0(r1)
/* 806C3568  F3 E1 00 C8 */	psq_st f31, 200(r1), 0, 0 /* qr0 */
/* 806C356C  DB C1 00 B0 */	stfd f30, 0xb0(r1)
/* 806C3570  F3 C1 00 B8 */	psq_st f30, 184(r1), 0, 0 /* qr0 */
/* 806C3574  DB A1 00 A0 */	stfd f29, 0xa0(r1)
/* 806C3578  F3 A1 00 A8 */	psq_st f29, 168(r1), 0, 0 /* qr0 */
/* 806C357C  DB 81 00 90 */	stfd f28, 0x90(r1)
/* 806C3580  F3 81 00 98 */	psq_st f28, 152(r1), 0, 0 /* qr0 */
/* 806C3584  DB 61 00 80 */	stfd f27, 0x80(r1)
/* 806C3588  F3 61 00 88 */	psq_st f27, 136(r1), 0, 0 /* qr0 */
/* 806C358C  39 61 00 80 */	addi r11, r1, 0x80
/* 806C3590  4B C9 EC 28 */	b _savegpr_20
/* 806C3594  7C 7B 1B 78 */	mr r27, r3
/* 806C3598  3C 60 80 6C */	lis r3, cNullVec__6Z2Calc@ha
/* 806C359C  3B C3 76 C4 */	addi r30, r3, cNullVec__6Z2Calc@l
/* 806C35A0  3C 60 80 6C */	lis r3, lit_3906@ha
/* 806C35A4  3B E3 74 E8 */	addi r31, r3, lit_3906@l
/* 806C35A8  C0 1B 06 D4 */	lfs f0, 0x6d4(r27)
/* 806C35AC  D0 1B 06 E4 */	stfs f0, 0x6e4(r27)
/* 806C35B0  C0 1B 06 D8 */	lfs f0, 0x6d8(r27)
/* 806C35B4  D0 1B 06 E8 */	stfs f0, 0x6e8(r27)
/* 806C35B8  C0 1B 06 DC */	lfs f0, 0x6dc(r27)
/* 806C35BC  D0 1B 06 EC */	stfs f0, 0x6ec(r27)
/* 806C35C0  C3 FF 00 04 */	lfs f31, 4(r31)
/* 806C35C4  D3 E1 00 38 */	stfs f31, 0x38(r1)
/* 806C35C8  D3 E1 00 3C */	stfs f31, 0x3c(r1)
/* 806C35CC  C0 1B 09 3C */	lfs f0, 0x93c(r27)
/* 806C35D0  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 806C35D4  D3 E1 00 20 */	stfs f31, 0x20(r1)
/* 806C35D8  D3 E1 00 28 */	stfs f31, 0x28(r1)
/* 806C35DC  C0 1F 00 C8 */	lfs f0, 0xc8(r31)
/* 806C35E0  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 806C35E4  C3 7B 09 44 */	lfs f27, 0x944(r27)
/* 806C35E8  3B A0 00 01 */	li r29, 1
/* 806C35EC  3B 40 00 02 */	li r26, 2
/* 806C35F0  3B 20 1B 58 */	li r25, 0x1b58
/* 806C35F4  3B 00 13 88 */	li r24, 0x1388
/* 806C35F8  3A E0 00 04 */	li r23, 4
/* 806C35FC  3B 9B 06 F0 */	addi r28, r27, 0x6f0
/* 806C3600  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 806C3604  3A C3 07 68 */	addi r22, r3, calc_mtx@l
lbl_806C3608:
/* 806C3608  A8 1B 06 9A */	lha r0, 0x69a(r27)
/* 806C360C  2C 00 00 05 */	cmpwi r0, 5
/* 806C3610  41 82 01 78 */	beq lbl_806C3788
/* 806C3614  C0 5B 09 4C */	lfs f2, 0x94c(r27)
/* 806C3618  C0 1F 00 08 */	lfs f0, 8(r31)
/* 806C361C  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 806C3620  40 81 00 58 */	ble lbl_806C3678
/* 806C3624  C0 3F 00 CC */	lfs f1, 0xcc(r31)
/* 806C3628  38 7E 00 84 */	addi r3, r30, 0x84
/* 806C362C  38 17 FF FC */	addi r0, r23, -4
/* 806C3630  7C 03 04 2E */	lfsx f0, r3, r0
/* 806C3634  EC 02 00 32 */	fmuls f0, f2, f0
/* 806C3638  EC 21 00 32 */	fmuls f1, f1, f0
/* 806C363C  A8 9B 06 98 */	lha r4, 0x698(r27)
/* 806C3640  7C 04 EA 14 */	add r0, r4, r29
/* 806C3644  1C 00 1B 58 */	mulli r0, r0, 0x1b58
/* 806C3648  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 806C364C  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 806C3650  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 806C3654  7C 03 04 2E */	lfsx f0, r3, r0
/* 806C3658  EF A1 00 32 */	fmuls f29, f1, f0
/* 806C365C  1C 04 1E 14 */	mulli r0, r4, 0x1e14
/* 806C3660  7C 00 C2 14 */	add r0, r0, r24
/* 806C3664  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 806C3668  7C 63 02 14 */	add r3, r3, r0
/* 806C366C  C0 03 00 04 */	lfs f0, 4(r3)
/* 806C3670  EF 81 00 32 */	fmuls f28, f1, f0
/* 806C3674  48 00 00 50 */	b lbl_806C36C4
lbl_806C3678:
/* 806C3678  C0 3F 00 D0 */	lfs f1, 0xd0(r31)
/* 806C367C  38 7E 00 84 */	addi r3, r30, 0x84
/* 806C3680  38 17 FF FC */	addi r0, r23, -4
/* 806C3684  7C 03 04 2E */	lfsx f0, r3, r0
/* 806C3688  EC 21 00 32 */	fmuls f1, f1, f0
/* 806C368C  A8 9B 06 98 */	lha r4, 0x698(r27)
/* 806C3690  1C 04 07 D0 */	mulli r0, r4, 0x7d0
/* 806C3694  7C 00 CA 14 */	add r0, r0, r25
/* 806C3698  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 806C369C  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 806C36A0  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 806C36A4  7C 03 04 2E */	lfsx f0, r3, r0
/* 806C36A8  EF A1 00 32 */	fmuls f29, f1, f0
/* 806C36AC  1C 04 08 FC */	mulli r0, r4, 0x8fc
/* 806C36B0  7C 00 C2 14 */	add r0, r0, r24
/* 806C36B4  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 806C36B8  7C 63 02 14 */	add r3, r3, r0
/* 806C36BC  C0 03 00 04 */	lfs f0, 4(r3)
/* 806C36C0  EF 81 00 32 */	fmuls f28, f1, f0
lbl_806C36C4:
/* 806C36C4  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 806C36C8  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 806C36CC  80 63 00 00 */	lwz r3, 0(r3)
/* 806C36D0  A8 9B 04 DE */	lha r4, 0x4de(r27)
/* 806C36D4  4B 94 8D 08 */	b mDoMtx_YrotS__FPA4_fs
/* 806C36D8  88 1B 06 E0 */	lbz r0, 0x6e0(r27)
/* 806C36DC  7C 00 07 75 */	extsb. r0, r0
/* 806C36E0  41 82 00 24 */	beq lbl_806C3704
/* 806C36E4  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 806C36E8  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 806C36EC  80 63 00 00 */	lwz r3, 0(r3)
/* 806C36F0  38 9E 00 60 */	addi r4, r30, 0x60
/* 806C36F4  38 1A FF FE */	addi r0, r26, -2
/* 806C36F8  7C 84 02 AE */	lhax r4, r4, r0
/* 806C36FC  4B 94 8C A0 */	b mDoMtx_XrotM__FPA4_fs
/* 806C3700  48 00 00 20 */	b lbl_806C3720
lbl_806C3704:
/* 806C3704  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 806C3708  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 806C370C  80 63 00 00 */	lwz r3, 0(r3)
/* 806C3710  38 9E 00 3C */	addi r4, r30, 0x3c
/* 806C3714  38 1A FF FE */	addi r0, r26, -2
/* 806C3718  7C 84 02 AE */	lhax r4, r4, r0
/* 806C371C  4B 94 8C 80 */	b mDoMtx_XrotM__FPA4_fs
lbl_806C3720:
/* 806C3720  FC 20 D8 90 */	fmr f1, f27
/* 806C3724  FC 40 D8 90 */	fmr f2, f27
/* 806C3728  FC 60 D8 90 */	fmr f3, f27
/* 806C372C  38 60 00 01 */	li r3, 1
/* 806C3730  4B BA D7 74 */	b MtxScale__FfffUc
/* 806C3734  38 61 00 20 */	addi r3, r1, 0x20
/* 806C3738  38 81 00 14 */	addi r4, r1, 0x14
/* 806C373C  4B BA D7 B0 */	b MtxPosition__FP4cXyzP4cXyz
/* 806C3740  C0 41 00 14 */	lfs f2, 0x14(r1)
/* 806C3744  C0 3C 00 00 */	lfs f1, 0(r28)
/* 806C3748  C0 1C FF F4 */	lfs f0, -0xc(r28)
/* 806C374C  EC 01 00 28 */	fsubs f0, f1, f0
/* 806C3750  EC 02 00 2A */	fadds f0, f2, f0
/* 806C3754  EF DD 00 2A */	fadds f30, f29, f0
/* 806C3758  C0 3C 00 04 */	lfs f1, 4(r28)
/* 806C375C  C0 1C FF F8 */	lfs f0, -8(r28)
/* 806C3760  EC 21 00 28 */	fsubs f1, f1, f0
/* 806C3764  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 806C3768  EF A1 00 28 */	fsubs f29, f1, f0
/* 806C376C  C0 41 00 1C */	lfs f2, 0x1c(r1)
/* 806C3770  C0 3C 00 08 */	lfs f1, 8(r28)
/* 806C3774  C0 1C FF FC */	lfs f0, -4(r28)
/* 806C3778  EC 01 00 28 */	fsubs f0, f1, f0
/* 806C377C  EC 02 00 2A */	fadds f0, f2, f0
/* 806C3780  EF 9C 00 2A */	fadds f28, f28, f0
/* 806C3784  48 00 00 98 */	b lbl_806C381C
lbl_806C3788:
/* 806C3788  C0 3F 00 68 */	lfs f1, 0x68(r31)
/* 806C378C  38 7E 00 84 */	addi r3, r30, 0x84
/* 806C3790  38 17 FF FC */	addi r0, r23, -4
/* 806C3794  7C 03 04 2E */	lfsx f0, r3, r0
/* 806C3798  EC 21 00 32 */	fmuls f1, f1, f0
/* 806C379C  A8 9B 06 98 */	lha r4, 0x698(r27)
/* 806C37A0  1C 04 04 4C */	mulli r0, r4, 0x44c
/* 806C37A4  7C 00 CA 14 */	add r0, r0, r25
/* 806C37A8  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 806C37AC  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 806C37B0  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 806C37B4  7C 03 04 2E */	lfsx f0, r3, r0
/* 806C37B8  EC 41 00 32 */	fmuls f2, f1, f0
/* 806C37BC  1C 04 05 DC */	mulli r0, r4, 0x5dc
/* 806C37C0  7C 00 C2 14 */	add r0, r0, r24
/* 806C37C4  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 806C37C8  7C 63 02 14 */	add r3, r3, r0
/* 806C37CC  C0 03 00 04 */	lfs f0, 4(r3)
/* 806C37D0  EC 61 00 32 */	fmuls f3, f1, f0
/* 806C37D4  C0 3C 00 00 */	lfs f1, 0(r28)
/* 806C37D8  C0 1C FF F4 */	lfs f0, -0xc(r28)
/* 806C37DC  EC 01 00 28 */	fsubs f0, f1, f0
/* 806C37E0  EF C2 00 2A */	fadds f30, f2, f0
/* 806C37E4  C0 1C 00 04 */	lfs f0, 4(r28)
/* 806C37E8  C0 3F 00 74 */	lfs f1, 0x74(r31)
/* 806C37EC  EC 40 08 28 */	fsubs f2, f0, f1
/* 806C37F0  C0 1B 0D 20 */	lfs f0, 0xd20(r27)
/* 806C37F4  EC 01 00 2A */	fadds f0, f1, f0
/* 806C37F8  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 806C37FC  40 80 00 08 */	bge lbl_806C3804
/* 806C3800  FC 40 00 90 */	fmr f2, f0
lbl_806C3804:
/* 806C3804  C0 1C FF F8 */	lfs f0, -8(r28)
/* 806C3808  EF A2 00 28 */	fsubs f29, f2, f0
/* 806C380C  C0 3C 00 08 */	lfs f1, 8(r28)
/* 806C3810  C0 1C FF FC */	lfs f0, -4(r28)
/* 806C3814  EC 01 00 28 */	fsubs f0, f1, f0
/* 806C3818  EF 83 00 2A */	fadds f28, f3, f0
lbl_806C381C:
/* 806C381C  FC 20 F0 90 */	fmr f1, f30
/* 806C3820  FC 40 E0 90 */	fmr f2, f28
/* 806C3824  4B BA 3E 50 */	b cM_atan2s__Fff
/* 806C3828  7C 74 07 34 */	extsh r20, r3
/* 806C382C  EC 3E 07 B2 */	fmuls f1, f30, f30
/* 806C3830  EC 1C 07 32 */	fmuls f0, f28, f28
/* 806C3834  EC 41 00 2A */	fadds f2, f1, f0
/* 806C3838  FC 02 F8 40 */	fcmpo cr0, f2, f31
/* 806C383C  40 81 00 0C */	ble lbl_806C3848
/* 806C3840  FC 00 10 34 */	frsqrte f0, f2
/* 806C3844  EC 40 00 B2 */	fmuls f2, f0, f2
lbl_806C3848:
/* 806C3848  FC 20 E8 90 */	fmr f1, f29
/* 806C384C  4B BA 3E 28 */	b cM_atan2s__Fff
/* 806C3850  7C 03 00 D0 */	neg r0, r3
/* 806C3854  7C 15 07 34 */	extsh r21, r0
/* 806C3858  80 76 00 00 */	lwz r3, 0(r22)
/* 806C385C  7E 84 A3 78 */	mr r4, r20
/* 806C3860  4B 94 8B 7C */	b mDoMtx_YrotS__FPA4_fs
/* 806C3864  80 76 00 00 */	lwz r3, 0(r22)
/* 806C3868  7E A4 AB 78 */	mr r4, r21
/* 806C386C  4B 94 8B 30 */	b mDoMtx_XrotM__FPA4_fs
/* 806C3870  38 61 00 38 */	addi r3, r1, 0x38
/* 806C3874  38 81 00 2C */	addi r4, r1, 0x2c
/* 806C3878  4B BA D6 74 */	b MtxPosition__FP4cXyzP4cXyz
/* 806C387C  38 61 00 08 */	addi r3, r1, 8
/* 806C3880  38 9C FF F4 */	addi r4, r28, -12
/* 806C3884  38 A1 00 2C */	addi r5, r1, 0x2c
/* 806C3888  4B BA 32 5C */	b __pl__4cXyzCFRC3Vec
/* 806C388C  C0 01 00 08 */	lfs f0, 8(r1)
/* 806C3890  D0 1C 00 00 */	stfs f0, 0(r28)
/* 806C3894  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 806C3898  D0 1C 00 04 */	stfs f0, 4(r28)
/* 806C389C  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 806C38A0  D0 1C 00 08 */	stfs f0, 8(r28)
/* 806C38A4  3B BD 00 01 */	addi r29, r29, 1
/* 806C38A8  2C 1D 00 12 */	cmpwi r29, 0x12
/* 806C38AC  3B 5A 00 02 */	addi r26, r26, 2
/* 806C38B0  3B 39 1B 58 */	addi r25, r25, 0x1b58
/* 806C38B4  3B 18 13 88 */	addi r24, r24, 0x1388
/* 806C38B8  3A F7 00 04 */	addi r23, r23, 4
/* 806C38BC  3B 9C 00 0C */	addi r28, r28, 0xc
/* 806C38C0  41 80 FD 48 */	blt lbl_806C3608
/* 806C38C4  E3 E1 00 C8 */	psq_l f31, 200(r1), 0, 0 /* qr0 */
/* 806C38C8  CB E1 00 C0 */	lfd f31, 0xc0(r1)
/* 806C38CC  E3 C1 00 B8 */	psq_l f30, 184(r1), 0, 0 /* qr0 */
/* 806C38D0  CB C1 00 B0 */	lfd f30, 0xb0(r1)
/* 806C38D4  E3 A1 00 A8 */	psq_l f29, 168(r1), 0, 0 /* qr0 */
/* 806C38D8  CB A1 00 A0 */	lfd f29, 0xa0(r1)
/* 806C38DC  E3 81 00 98 */	psq_l f28, 152(r1), 0, 0 /* qr0 */
/* 806C38E0  CB 81 00 90 */	lfd f28, 0x90(r1)
/* 806C38E4  E3 61 00 88 */	psq_l f27, 136(r1), 0, 0 /* qr0 */
/* 806C38E8  CB 61 00 80 */	lfd f27, 0x80(r1)
/* 806C38EC  39 61 00 80 */	addi r11, r1, 0x80
/* 806C38F0  4B C9 E9 14 */	b _restgpr_20
/* 806C38F4  80 01 00 D4 */	lwz r0, 0xd4(r1)
/* 806C38F8  7C 08 03 A6 */	mtlr r0
/* 806C38FC  38 21 00 D0 */	addi r1, r1, 0xd0
/* 806C3900  4E 80 00 20 */	blr 
