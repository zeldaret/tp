lbl_80698498:
/* 80698498  94 21 FF 40 */	stwu r1, -0xc0(r1)
/* 8069849C  7C 08 02 A6 */	mflr r0
/* 806984A0  90 01 00 C4 */	stw r0, 0xc4(r1)
/* 806984A4  DB E1 00 B0 */	stfd f31, 0xb0(r1)
/* 806984A8  F3 E1 00 B8 */	psq_st f31, 184(r1), 0, 0 /* qr0 */
/* 806984AC  93 E1 00 AC */	stw r31, 0xac(r1)
/* 806984B0  FF E0 08 90 */	fmr f31, f1
/* 806984B4  7C 7F 1B 78 */	mr r31, r3
/* 806984B8  38 61 00 2C */	addi r3, r1, 0x2c
/* 806984BC  4B 9D F7 AC */	b __ct__11dBgS_LinChkFv
/* 806984C0  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 806984C4  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 806984C8  C0 3F 04 D4 */	lfs f1, 0x4d4(r31)
/* 806984CC  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 806984D0  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 806984D4  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 806984D8  3C 60 80 6A */	lis r3, lit_3954@ha
/* 806984DC  C0 03 9C EC */	lfs f0, lit_3954@l(r3)
/* 806984E0  EC 01 00 2A */	fadds f0, f1, f0
/* 806984E4  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 806984E8  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 806984EC  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 806984F0  80 63 00 00 */	lwz r3, 0(r3)
/* 806984F4  A8 9F 04 E6 */	lha r4, 0x4e6(r31)
/* 806984F8  4B 97 3E E4 */	b mDoMtx_YrotS__FPA4_fs
/* 806984FC  3C 60 80 6A */	lis r3, lit_3789@ha
/* 80698500  C0 03 9C B4 */	lfs f0, lit_3789@l(r3)
/* 80698504  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80698508  3C 60 80 6A */	lis r3, lit_3954@ha
/* 8069850C  C0 03 9C EC */	lfs f0, lit_3954@l(r3)
/* 80698510  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80698514  D3 E1 00 28 */	stfs f31, 0x28(r1)
/* 80698518  38 61 00 20 */	addi r3, r1, 0x20
/* 8069851C  38 81 00 08 */	addi r4, r1, 8
/* 80698520  4B BD 89 CC */	b MtxPosition__FP4cXyzP4cXyz
/* 80698524  38 61 00 08 */	addi r3, r1, 8
/* 80698528  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 8069852C  7C 65 1B 78 */	mr r5, r3
/* 80698530  4B CA EB 60 */	b PSVECAdd
/* 80698534  38 61 00 2C */	addi r3, r1, 0x2c
/* 80698538  38 81 00 14 */	addi r4, r1, 0x14
/* 8069853C  38 A1 00 08 */	addi r5, r1, 8
/* 80698540  7F E6 FB 78 */	mr r6, r31
/* 80698544  4B 9D F8 20 */	b Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 80698548  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8069854C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80698550  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80698554  38 81 00 2C */	addi r4, r1, 0x2c
/* 80698558  4B 9D BE 5C */	b LineCross__4cBgSFP11cBgS_LinChk
/* 8069855C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80698560  41 82 00 18 */	beq lbl_80698578
/* 80698564  38 61 00 2C */	addi r3, r1, 0x2c
/* 80698568  38 80 FF FF */	li r4, -1
/* 8069856C  4B 9D F7 70 */	b __dt__11dBgS_LinChkFv
/* 80698570  38 60 00 01 */	li r3, 1
/* 80698574  48 00 00 14 */	b lbl_80698588
lbl_80698578:
/* 80698578  38 61 00 2C */	addi r3, r1, 0x2c
/* 8069857C  38 80 FF FF */	li r4, -1
/* 80698580  4B 9D F7 5C */	b __dt__11dBgS_LinChkFv
/* 80698584  38 60 00 00 */	li r3, 0
lbl_80698588:
/* 80698588  E3 E1 00 B8 */	psq_l f31, 184(r1), 0, 0 /* qr0 */
/* 8069858C  CB E1 00 B0 */	lfd f31, 0xb0(r1)
/* 80698590  83 E1 00 AC */	lwz r31, 0xac(r1)
/* 80698594  80 01 00 C4 */	lwz r0, 0xc4(r1)
/* 80698598  7C 08 03 A6 */	mtlr r0
/* 8069859C  38 21 00 C0 */	addi r1, r1, 0xc0
/* 806985A0  4E 80 00 20 */	blr 
