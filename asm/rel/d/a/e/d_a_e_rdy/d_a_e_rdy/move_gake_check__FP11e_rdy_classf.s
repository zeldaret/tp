lbl_8076D15C:
/* 8076D15C  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 8076D160  7C 08 02 A6 */	mflr r0
/* 8076D164  90 01 00 94 */	stw r0, 0x94(r1)
/* 8076D168  DB E1 00 80 */	stfd f31, 0x80(r1)
/* 8076D16C  F3 E1 00 88 */	psq_st f31, 136(r1), 0, 0 /* qr0 */
/* 8076D170  93 E1 00 7C */	stw r31, 0x7c(r1)
/* 8076D174  93 C1 00 78 */	stw r30, 0x78(r1)
/* 8076D178  7C 7E 1B 78 */	mr r30, r3
/* 8076D17C  FF E0 08 90 */	fmr f31, f1
/* 8076D180  3C 60 80 78 */	lis r3, lit_4018@ha
/* 8076D184  3B E3 9D FC */	addi r31, r3, lit_4018@l
/* 8076D188  38 61 00 20 */	addi r3, r1, 0x20
/* 8076D18C  4B 90 A3 F0 */	b __ct__11dBgS_GndChkFv
/* 8076D190  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 8076D194  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 8076D198  80 63 00 00 */	lwz r3, 0(r3)
/* 8076D19C  A8 9E 04 E6 */	lha r4, 0x4e6(r30)
/* 8076D1A0  4B 89 F2 3C */	b mDoMtx_YrotS__FPA4_fs
/* 8076D1A4  C0 1F 00 04 */	lfs f0, 4(r31)
/* 8076D1A8  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 8076D1AC  C0 1F 00 00 */	lfs f0, 0(r31)
/* 8076D1B0  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 8076D1B4  D3 E1 00 1C */	stfs f31, 0x1c(r1)
/* 8076D1B8  38 61 00 14 */	addi r3, r1, 0x14
/* 8076D1BC  38 81 00 08 */	addi r4, r1, 8
/* 8076D1C0  4B B0 3D 2C */	b MtxPosition__FP4cXyzP4cXyz
/* 8076D1C4  38 61 00 08 */	addi r3, r1, 8
/* 8076D1C8  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 8076D1CC  7C 65 1B 78 */	mr r5, r3
/* 8076D1D0  4B BD 9E C0 */	b PSVECAdd
/* 8076D1D4  38 61 00 20 */	addi r3, r1, 0x20
/* 8076D1D8  38 81 00 08 */	addi r4, r1, 8
/* 8076D1DC  4B AF AB 4C */	b SetPos__11cBgS_GndChkFPC4cXyz
/* 8076D1E0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8076D1E4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8076D1E8  38 63 0F 38 */	addi r3, r3, 0xf38
/* 8076D1EC  38 81 00 20 */	addi r4, r1, 0x20
/* 8076D1F0  4B 90 72 B0 */	b GroundCross__4cBgSFP11cBgS_GndChk
/* 8076D1F4  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 8076D1F8  EC 20 08 28 */	fsubs f1, f0, f1
/* 8076D1FC  C0 1F 00 3C */	lfs f0, 0x3c(r31)
/* 8076D200  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8076D204  40 81 00 18 */	ble lbl_8076D21C
/* 8076D208  38 61 00 20 */	addi r3, r1, 0x20
/* 8076D20C  38 80 FF FF */	li r4, -1
/* 8076D210  4B 90 A3 E0 */	b __dt__11dBgS_GndChkFv
/* 8076D214  38 60 00 01 */	li r3, 1
/* 8076D218  48 00 00 14 */	b lbl_8076D22C
lbl_8076D21C:
/* 8076D21C  38 61 00 20 */	addi r3, r1, 0x20
/* 8076D220  38 80 FF FF */	li r4, -1
/* 8076D224  4B 90 A3 CC */	b __dt__11dBgS_GndChkFv
/* 8076D228  38 60 00 00 */	li r3, 0
lbl_8076D22C:
/* 8076D22C  E3 E1 00 88 */	psq_l f31, 136(r1), 0, 0 /* qr0 */
/* 8076D230  CB E1 00 80 */	lfd f31, 0x80(r1)
/* 8076D234  83 E1 00 7C */	lwz r31, 0x7c(r1)
/* 8076D238  83 C1 00 78 */	lwz r30, 0x78(r1)
/* 8076D23C  80 01 00 94 */	lwz r0, 0x94(r1)
/* 8076D240  7C 08 03 A6 */	mtlr r0
/* 8076D244  38 21 00 90 */	addi r1, r1, 0x90
/* 8076D248  4E 80 00 20 */	blr 
