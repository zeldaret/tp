lbl_8069E200:
/* 8069E200  94 21 FE B0 */	stwu r1, -0x150(r1)
/* 8069E204  7C 08 02 A6 */	mflr r0
/* 8069E208  90 01 01 54 */	stw r0, 0x154(r1)
/* 8069E20C  DB E1 01 40 */	stfd f31, 0x140(r1)
/* 8069E210  F3 E1 01 48 */	psq_st f31, 328(r1), 0, 0 /* qr0 */
/* 8069E214  DB C1 01 30 */	stfd f30, 0x130(r1)
/* 8069E218  F3 C1 01 38 */	psq_st f30, 312(r1), 0, 0 /* qr0 */
/* 8069E21C  DB A1 01 20 */	stfd f29, 0x120(r1)
/* 8069E220  F3 A1 01 28 */	psq_st f29, 296(r1), 0, 0 /* qr0 */
/* 8069E224  DB 81 01 10 */	stfd f28, 0x110(r1)
/* 8069E228  F3 81 01 18 */	psq_st f28, 280(r1), 0, 0 /* qr0 */
/* 8069E22C  DB 61 01 00 */	stfd f27, 0x100(r1)
/* 8069E230  F3 61 01 08 */	psq_st f27, 264(r1), 0, 0 /* qr0 */
/* 8069E234  DB 41 00 F0 */	stfd f26, 0xf0(r1)
/* 8069E238  F3 41 00 F8 */	psq_st f26, 248(r1), 0, 0 /* qr0 */
/* 8069E23C  DB 21 00 E0 */	stfd f25, 0xe0(r1)
/* 8069E240  F3 21 00 E8 */	psq_st f25, 232(r1), 0, 0 /* qr0 */
/* 8069E244  39 61 00 E0 */	addi r11, r1, 0xe0
/* 8069E248  4B CC 3F 70 */	b _savegpr_20
/* 8069E24C  7C 78 1B 78 */	mr r24, r3
/* 8069E250  3C 60 80 6A */	lis r3, lit_3902@ha
/* 8069E254  3B C3 19 0C */	addi r30, r3, lit_3902@l
/* 8069E258  38 61 00 50 */	addi r3, r1, 0x50
/* 8069E25C  4B 9D 93 20 */	b __ct__11dBgS_GndChkFv
/* 8069E260  C0 18 04 D0 */	lfs f0, 0x4d0(r24)
/* 8069E264  D0 18 06 9C */	stfs f0, 0x69c(r24)
/* 8069E268  C0 18 04 D4 */	lfs f0, 0x4d4(r24)
/* 8069E26C  D0 18 06 A0 */	stfs f0, 0x6a0(r24)
/* 8069E270  C0 18 04 D8 */	lfs f0, 0x4d8(r24)
/* 8069E274  D0 18 06 A4 */	stfs f0, 0x6a4(r24)
/* 8069E278  3B 78 06 A8 */	addi r27, r24, 0x6a8
/* 8069E27C  3B 58 07 32 */	addi r26, r24, 0x732
/* 8069E280  3B 38 07 A8 */	addi r25, r24, 0x7a8
/* 8069E284  C0 1E 00 04 */	lfs f0, 4(r30)
/* 8069E288  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 8069E28C  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 8069E290  C0 18 08 40 */	lfs f0, 0x840(r24)
/* 8069E294  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 8069E298  C3 98 08 64 */	lfs f28, 0x864(r24)
/* 8069E29C  38 78 08 64 */	addi r3, r24, 0x864
/* 8069E2A0  C0 3E 00 58 */	lfs f1, 0x58(r30)
/* 8069E2A4  C0 5E 00 08 */	lfs f2, 8(r30)
/* 8069E2A8  C0 7E 00 2C */	lfs f3, 0x2c(r30)
/* 8069E2AC  4B BD 17 90 */	b cLib_addCalc2__FPffff
/* 8069E2B0  A8 78 08 4C */	lha r3, 0x84c(r24)
/* 8069E2B4  A8 18 08 4E */	lha r0, 0x84e(r24)
/* 8069E2B8  7C 03 02 14 */	add r0, r3, r0
/* 8069E2BC  B0 18 08 4C */	sth r0, 0x84c(r24)
/* 8069E2C0  3B 80 00 01 */	li r28, 1
/* 8069E2C4  3A E0 27 10 */	li r23, 0x2710
/* 8069E2C8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8069E2CC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8069E2D0  3B A3 0F 38 */	addi r29, r3, 0xf38
/* 8069E2D4  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 8069E2D8  3B E3 07 68 */	addi r31, r3, calc_mtx@l
/* 8069E2DC  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 8069E2E0  3A C3 9A 20 */	addi r22, r3, sincosTable___5JMath@l
/* 8069E2E4  C3 BE 00 40 */	lfs f29, 0x40(r30)
/* 8069E2E8  C3 DE 00 04 */	lfs f30, 4(r30)
/* 8069E2EC  C3 FE 00 F4 */	lfs f31, 0xf4(r30)
lbl_8069E2F0:
/* 8069E2F0  80 7F 00 00 */	lwz r3, 0(r31)
/* 8069E2F4  A8 98 04 E6 */	lha r4, 0x4e6(r24)
/* 8069E2F8  4B 96 E0 E4 */	b mDoMtx_YrotS__FPA4_fs
/* 8069E2FC  A8 18 08 4C */	lha r0, 0x84c(r24)
/* 8069E300  7C 00 BA 14 */	add r0, r0, r23
/* 8069E304  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 8069E308  7C 16 04 2E */	lfsx f0, r22, r0
/* 8069E30C  EC 1D 00 32 */	fmuls f0, f29, f0
/* 8069E310  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 8069E314  D3 C1 00 18 */	stfs f30, 0x18(r1)
/* 8069E318  D3 E1 00 1C */	stfs f31, 0x1c(r1)
/* 8069E31C  38 61 00 14 */	addi r3, r1, 0x14
/* 8069E320  38 81 00 20 */	addi r4, r1, 0x20
/* 8069E324  4B BD 2B C8 */	b MtxPosition__FP4cXyzP4cXyz
/* 8069E328  C0 41 00 20 */	lfs f2, 0x20(r1)
/* 8069E32C  C0 3B 00 00 */	lfs f1, 0(r27)
/* 8069E330  C0 1B FF F4 */	lfs f0, -0xc(r27)
/* 8069E334  EC 01 00 28 */	fsubs f0, f1, f0
/* 8069E338  EF 62 00 2A */	fadds f27, f2, f0
/* 8069E33C  C0 1B 00 04 */	lfs f0, 4(r27)
/* 8069E340  EC 20 E0 2A */	fadds f1, f0, f28
/* 8069E344  C0 19 00 00 */	lfs f0, 0(r25)
/* 8069E348  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8069E34C  4C 40 13 82 */	cror 2, 0, 2
/* 8069E350  40 82 00 08 */	bne lbl_8069E358
/* 8069E354  FC 20 00 90 */	fmr f1, f0
lbl_8069E358:
/* 8069E358  C0 1B FF F8 */	lfs f0, -8(r27)
/* 8069E35C  EF 41 00 28 */	fsubs f26, f1, f0
/* 8069E360  C0 41 00 28 */	lfs f2, 0x28(r1)
/* 8069E364  C0 3B 00 08 */	lfs f1, 8(r27)
/* 8069E368  C0 1B FF FC */	lfs f0, -4(r27)
/* 8069E36C  EC 01 00 28 */	fsubs f0, f1, f0
/* 8069E370  EF 22 00 2A */	fadds f25, f2, f0
/* 8069E374  FC 20 D8 90 */	fmr f1, f27
/* 8069E378  FC 40 C8 90 */	fmr f2, f25
/* 8069E37C  4B BC 92 F8 */	b cM_atan2s__Fff
/* 8069E380  7C 74 07 34 */	extsh r20, r3
/* 8069E384  EC 3B 06 F2 */	fmuls f1, f27, f27
/* 8069E388  EC 19 06 72 */	fmuls f0, f25, f25
/* 8069E38C  EC 41 00 2A */	fadds f2, f1, f0
/* 8069E390  FC 02 F0 40 */	fcmpo cr0, f2, f30
/* 8069E394  40 81 00 0C */	ble lbl_8069E3A0
/* 8069E398  FC 00 10 34 */	frsqrte f0, f2
/* 8069E39C  EC 40 00 B2 */	fmuls f2, f0, f2
lbl_8069E3A0:
/* 8069E3A0  FC 20 D0 90 */	fmr f1, f26
/* 8069E3A4  4B BC 92 D0 */	b cM_atan2s__Fff
/* 8069E3A8  7C 03 00 D0 */	neg r0, r3
/* 8069E3AC  7C 15 07 34 */	extsh r21, r0
/* 8069E3B0  80 7F 00 00 */	lwz r3, 0(r31)
/* 8069E3B4  7E 84 A3 78 */	mr r4, r20
/* 8069E3B8  4B 96 E0 24 */	b mDoMtx_YrotS__FPA4_fs
/* 8069E3BC  80 7F 00 00 */	lwz r3, 0(r31)
/* 8069E3C0  7E A4 AB 78 */	mr r4, r21
/* 8069E3C4  4B 96 DF D8 */	b mDoMtx_XrotM__FPA4_fs
/* 8069E3C8  38 61 00 44 */	addi r3, r1, 0x44
/* 8069E3CC  38 81 00 38 */	addi r4, r1, 0x38
/* 8069E3D0  4B BD 2B 1C */	b MtxPosition__FP4cXyzP4cXyz
/* 8069E3D4  38 61 00 08 */	addi r3, r1, 8
/* 8069E3D8  38 9B FF F4 */	addi r4, r27, -12
/* 8069E3DC  38 A1 00 38 */	addi r5, r1, 0x38
/* 8069E3E0  4B BC 87 04 */	b __pl__4cXyzCFRC3Vec
/* 8069E3E4  C0 01 00 08 */	lfs f0, 8(r1)
/* 8069E3E8  D0 1B 00 00 */	stfs f0, 0(r27)
/* 8069E3EC  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 8069E3F0  D0 1B 00 04 */	stfs f0, 4(r27)
/* 8069E3F4  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 8069E3F8  D0 1B 00 08 */	stfs f0, 8(r27)
/* 8069E3FC  B2 BA 00 00 */	sth r21, 0(r26)
/* 8069E400  B2 9A 00 02 */	sth r20, 2(r26)
/* 8069E404  A8 18 06 68 */	lha r0, 0x668(r24)
/* 8069E408  7C 00 E2 14 */	add r0, r0, r28
/* 8069E40C  54 00 07 BF */	clrlwi. r0, r0, 0x1e
/* 8069E410  40 82 00 6C */	bne lbl_8069E47C
/* 8069E414  C0 1B 00 00 */	lfs f0, 0(r27)
/* 8069E418  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 8069E41C  C0 3B 00 04 */	lfs f1, 4(r27)
/* 8069E420  D0 21 00 30 */	stfs f1, 0x30(r1)
/* 8069E424  C0 1B 00 08 */	lfs f0, 8(r27)
/* 8069E428  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 8069E42C  C0 1E 00 00 */	lfs f0, 0(r30)
/* 8069E430  EC 01 00 2A */	fadds f0, f1, f0
/* 8069E434  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 8069E438  38 61 00 50 */	addi r3, r1, 0x50
/* 8069E43C  38 81 00 2C */	addi r4, r1, 0x2c
/* 8069E440  4B BC 98 CC */	b SetPos__11cBgS_GndChkFPC3Vec
/* 8069E444  7F A3 EB 78 */	mr r3, r29
/* 8069E448  38 81 00 50 */	addi r4, r1, 0x50
/* 8069E44C  4B 9D 60 54 */	b GroundCross__4cBgSFP11cBgS_GndChk
/* 8069E450  C0 1E 00 50 */	lfs f0, 0x50(r30)
/* 8069E454  EC 00 08 2A */	fadds f0, f0, f1
/* 8069E458  D0 19 00 00 */	stfs f0, 0(r25)
/* 8069E45C  C0 19 00 00 */	lfs f0, 0(r25)
/* 8069E460  C0 5B 00 04 */	lfs f2, 4(r27)
/* 8069E464  EC 20 10 28 */	fsubs f1, f0, f2
/* 8069E468  C0 1E 00 C8 */	lfs f0, 0xc8(r30)
/* 8069E46C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8069E470  40 81 00 1C */	ble lbl_8069E48C
/* 8069E474  D0 59 00 00 */	stfs f2, 0(r25)
/* 8069E478  48 00 00 14 */	b lbl_8069E48C
lbl_8069E47C:
/* 8069E47C  C0 3E 00 50 */	lfs f1, 0x50(r30)
/* 8069E480  C0 18 10 F4 */	lfs f0, 0x10f4(r24)
/* 8069E484  EC 01 00 2A */	fadds f0, f1, f0
/* 8069E488  D0 19 00 00 */	stfs f0, 0(r25)
lbl_8069E48C:
/* 8069E48C  3B 9C 00 01 */	addi r28, r28, 1
/* 8069E490  2C 1C 00 0C */	cmpwi r28, 0xc
/* 8069E494  3A F7 27 10 */	addi r23, r23, 0x2710
/* 8069E498  3B 7B 00 0C */	addi r27, r27, 0xc
/* 8069E49C  3B 5A 00 06 */	addi r26, r26, 6
/* 8069E4A0  3B 39 00 04 */	addi r25, r25, 4
/* 8069E4A4  41 80 FE 4C */	blt lbl_8069E2F0
/* 8069E4A8  38 61 00 50 */	addi r3, r1, 0x50
/* 8069E4AC  38 80 FF FF */	li r4, -1
/* 8069E4B0  4B 9D 91 40 */	b __dt__11dBgS_GndChkFv
/* 8069E4B4  E3 E1 01 48 */	psq_l f31, 328(r1), 0, 0 /* qr0 */
/* 8069E4B8  CB E1 01 40 */	lfd f31, 0x140(r1)
/* 8069E4BC  E3 C1 01 38 */	psq_l f30, 312(r1), 0, 0 /* qr0 */
/* 8069E4C0  CB C1 01 30 */	lfd f30, 0x130(r1)
/* 8069E4C4  E3 A1 01 28 */	psq_l f29, 296(r1), 0, 0 /* qr0 */
/* 8069E4C8  CB A1 01 20 */	lfd f29, 0x120(r1)
/* 8069E4CC  E3 81 01 18 */	psq_l f28, 280(r1), 0, 0 /* qr0 */
/* 8069E4D0  CB 81 01 10 */	lfd f28, 0x110(r1)
/* 8069E4D4  E3 61 01 08 */	psq_l f27, 264(r1), 0, 0 /* qr0 */
/* 8069E4D8  CB 61 01 00 */	lfd f27, 0x100(r1)
/* 8069E4DC  E3 41 00 F8 */	psq_l f26, 248(r1), 0, 0 /* qr0 */
/* 8069E4E0  CB 41 00 F0 */	lfd f26, 0xf0(r1)
/* 8069E4E4  E3 21 00 E8 */	psq_l f25, 232(r1), 0, 0 /* qr0 */
/* 8069E4E8  CB 21 00 E0 */	lfd f25, 0xe0(r1)
/* 8069E4EC  39 61 00 E0 */	addi r11, r1, 0xe0
/* 8069E4F0  4B CC 3D 14 */	b _restgpr_20
/* 8069E4F4  80 01 01 54 */	lwz r0, 0x154(r1)
/* 8069E4F8  7C 08 03 A6 */	mtlr r0
/* 8069E4FC  38 21 01 50 */	addi r1, r1, 0x150
/* 8069E500  4E 80 00 20 */	blr 
