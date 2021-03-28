lbl_8094E378:
/* 8094E378  94 21 FF 40 */	stwu r1, -0xc0(r1)
/* 8094E37C  7C 08 02 A6 */	mflr r0
/* 8094E380  90 01 00 C4 */	stw r0, 0xc4(r1)
/* 8094E384  DB E1 00 B0 */	stfd f31, 0xb0(r1)
/* 8094E388  F3 E1 00 B8 */	psq_st f31, 184(r1), 0, 0 /* qr0 */
/* 8094E38C  39 61 00 B0 */	addi r11, r1, 0xb0
/* 8094E390  4B A1 3E 48 */	b _savegpr_28
/* 8094E394  3C 80 80 95 */	lis r4, lit_3958@ha
/* 8094E398  3B E4 11 C0 */	addi r31, r4, lit_3958@l
/* 8094E39C  7C 7D 1B 78 */	mr r29, r3
/* 8094E3A0  38 61 00 2C */	addi r3, r1, 0x2c
/* 8094E3A4  4B 72 98 C4 */	b __ct__11dBgS_LinChkFv
/* 8094E3A8  C0 9D 04 D0 */	lfs f4, 0x4d0(r29)
/* 8094E3AC  C0 1D 04 BC */	lfs f0, 0x4bc(r29)
/* 8094E3B0  EC 24 00 28 */	fsubs f1, f4, f0
/* 8094E3B4  C0 5D 04 D8 */	lfs f2, 0x4d8(r29)
/* 8094E3B8  C0 1D 04 C4 */	lfs f0, 0x4c4(r29)
/* 8094E3BC  EC 42 00 28 */	fsubs f2, f2, f0
/* 8094E3C0  EC 61 00 72 */	fmuls f3, f1, f1
/* 8094E3C4  EC 02 00 B2 */	fmuls f0, f2, f2
/* 8094E3C8  EC 63 00 2A */	fadds f3, f3, f0
/* 8094E3CC  C0 1F 00 24 */	lfs f0, 0x24(r31)
/* 8094E3D0  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 8094E3D4  40 81 00 F8 */	ble lbl_8094E4CC
/* 8094E3D8  D0 81 00 14 */	stfs f4, 0x14(r1)
/* 8094E3DC  C0 7D 04 D4 */	lfs f3, 0x4d4(r29)
/* 8094E3E0  D0 61 00 18 */	stfs f3, 0x18(r1)
/* 8094E3E4  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 8094E3E8  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 8094E3EC  C0 1F 00 28 */	lfs f0, 0x28(r31)
/* 8094E3F0  EC 03 00 2A */	fadds f0, f3, f0
/* 8094E3F4  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 8094E3F8  4B 91 92 7C */	b cM_atan2s__Fff
/* 8094E3FC  7C 64 1B 78 */	mr r4, r3
/* 8094E400  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 8094E404  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 8094E408  80 63 00 00 */	lwz r3, 0(r3)
/* 8094E40C  4B 6B DF D0 */	b mDoMtx_YrotS__FPA4_fs
/* 8094E410  C0 1F 00 24 */	lfs f0, 0x24(r31)
/* 8094E414  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 8094E418  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 8094E41C  C0 1F 00 50 */	lfs f0, 0x50(r31)
/* 8094E420  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 8094E424  38 61 00 20 */	addi r3, r1, 0x20
/* 8094E428  38 81 00 08 */	addi r4, r1, 8
/* 8094E42C  4B 92 2A C0 */	b MtxPosition__FP4cXyzP4cXyz
/* 8094E430  38 61 00 08 */	addi r3, r1, 8
/* 8094E434  38 81 00 14 */	addi r4, r1, 0x14
/* 8094E438  7C 65 1B 78 */	mr r5, r3
/* 8094E43C  4B 9F 8C 54 */	b PSVECAdd
/* 8094E440  3B 80 00 00 */	li r28, 0
/* 8094E444  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8094E448  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8094E44C  3B C3 0F 38 */	addi r30, r3, 0xf38
/* 8094E450  C3 FF 00 50 */	lfs f31, 0x50(r31)
lbl_8094E454:
/* 8094E454  38 61 00 2C */	addi r3, r1, 0x2c
/* 8094E458  38 81 00 14 */	addi r4, r1, 0x14
/* 8094E45C  38 A1 00 08 */	addi r5, r1, 8
/* 8094E460  7F A6 EB 78 */	mr r6, r29
/* 8094E464  4B 72 99 00 */	b Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 8094E468  7F C3 F3 78 */	mr r3, r30
/* 8094E46C  38 81 00 2C */	addi r4, r1, 0x2c
/* 8094E470  4B 72 5F 44 */	b LineCross__4cBgSFP11cBgS_LinChk
/* 8094E474  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8094E478  41 82 00 30 */	beq lbl_8094E4A8
/* 8094E47C  C0 1D 04 BC */	lfs f0, 0x4bc(r29)
/* 8094E480  D0 1D 04 D0 */	stfs f0, 0x4d0(r29)
/* 8094E484  C0 1D 04 C4 */	lfs f0, 0x4c4(r29)
/* 8094E488  D0 1D 04 D8 */	stfs f0, 0x4d8(r29)
/* 8094E48C  C0 1F 00 24 */	lfs f0, 0x24(r31)
/* 8094E490  D0 1D 05 2C */	stfs f0, 0x52c(r29)
/* 8094E494  38 61 00 2C */	addi r3, r1, 0x2c
/* 8094E498  38 80 FF FF */	li r4, -1
/* 8094E49C  4B 72 98 40 */	b __dt__11dBgS_LinChkFv
/* 8094E4A0  38 60 00 01 */	li r3, 1
/* 8094E4A4  48 00 00 38 */	b lbl_8094E4DC
lbl_8094E4A8:
/* 8094E4A8  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 8094E4AC  EC 00 F8 2A */	fadds f0, f0, f31
/* 8094E4B0  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 8094E4B4  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 8094E4B8  EC 00 F8 2A */	fadds f0, f0, f31
/* 8094E4BC  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 8094E4C0  3B 9C 00 01 */	addi r28, r28, 1
/* 8094E4C4  2C 1C 00 02 */	cmpwi r28, 2
/* 8094E4C8  41 80 FF 8C */	blt lbl_8094E454
lbl_8094E4CC:
/* 8094E4CC  38 61 00 2C */	addi r3, r1, 0x2c
/* 8094E4D0  38 80 FF FF */	li r4, -1
/* 8094E4D4  4B 72 98 08 */	b __dt__11dBgS_LinChkFv
/* 8094E4D8  38 60 00 00 */	li r3, 0
lbl_8094E4DC:
/* 8094E4DC  E3 E1 00 B8 */	psq_l f31, 184(r1), 0, 0 /* qr0 */
/* 8094E4E0  CB E1 00 B0 */	lfd f31, 0xb0(r1)
/* 8094E4E4  39 61 00 B0 */	addi r11, r1, 0xb0
/* 8094E4E8  4B A1 3D 3C */	b _restgpr_28
/* 8094E4EC  80 01 00 C4 */	lwz r0, 0xc4(r1)
/* 8094E4F0  7C 08 03 A6 */	mtlr r0
/* 8094E4F4  38 21 00 C0 */	addi r1, r1, 0xc0
/* 8094E4F8  4E 80 00 20 */	blr 
