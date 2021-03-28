lbl_80AF63C0:
/* 80AF63C0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80AF63C4  7C 08 02 A6 */	mflr r0
/* 80AF63C8  90 01 00 34 */	stw r0, 0x34(r1)
/* 80AF63CC  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80AF63D0  93 C1 00 28 */	stw r30, 0x28(r1)
/* 80AF63D4  7C 7E 1B 78 */	mr r30, r3
/* 80AF63D8  3C 80 80 AF */	lis r4, lit_3768@ha
/* 80AF63DC  3B E4 74 08 */	addi r31, r4, lit_3768@l
/* 80AF63E0  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80AF63E4  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 80AF63E8  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 80AF63EC  4B 52 43 F4 */	b fopAcM_searchActorDistance__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80AF63F0  D0 3E 06 18 */	stfs f1, 0x618(r30)
/* 80AF63F4  A8 1E 06 28 */	lha r0, 0x628(r30)
/* 80AF63F8  2C 00 00 00 */	cmpwi r0, 0
/* 80AF63FC  41 82 00 08 */	beq lbl_80AF6404
/* 80AF6400  48 00 00 0C */	b lbl_80AF640C
lbl_80AF6404:
/* 80AF6404  7F C3 F3 78 */	mr r3, r30
/* 80AF6408  4B FF FD A9 */	bl npc_sq_normal__FP12npc_sq_class
lbl_80AF640C:
/* 80AF640C  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 80AF6410  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 80AF6414  80 63 00 00 */	lwz r3, 0(r3)
/* 80AF6418  A8 9E 04 DE */	lha r4, 0x4de(r30)
/* 80AF641C  4B 51 5F C0 */	b mDoMtx_YrotS__FPA4_fs
/* 80AF6420  C0 1F 00 04 */	lfs f0, 4(r31)
/* 80AF6424  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80AF6428  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80AF642C  C0 1E 05 2C */	lfs f0, 0x52c(r30)
/* 80AF6430  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80AF6434  38 61 00 14 */	addi r3, r1, 0x14
/* 80AF6438  38 81 00 08 */	addi r4, r1, 8
/* 80AF643C  4B 77 AA B0 */	b MtxPosition__FP4cXyzP4cXyz
/* 80AF6440  C0 01 00 08 */	lfs f0, 8(r1)
/* 80AF6444  D0 1E 04 F8 */	stfs f0, 0x4f8(r30)
/* 80AF6448  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 80AF644C  D0 1E 05 00 */	stfs f0, 0x500(r30)
/* 80AF6450  C0 3E 04 FC */	lfs f1, 0x4fc(r30)
/* 80AF6454  C0 1F 00 4C */	lfs f0, 0x4c(r31)
/* 80AF6458  EC 01 00 2A */	fadds f0, f1, f0
/* 80AF645C  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
/* 80AF6460  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 80AF6464  38 9E 04 F8 */	addi r4, r30, 0x4f8
/* 80AF6468  7C 65 1B 78 */	mr r5, r3
/* 80AF646C  4B 85 0C 24 */	b PSVECAdd
/* 80AF6470  C0 3E 04 FC */	lfs f1, 0x4fc(r30)
/* 80AF6474  C0 1F 00 50 */	lfs f0, 0x50(r31)
/* 80AF6478  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80AF647C  40 80 00 08 */	bge lbl_80AF6484
/* 80AF6480  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
lbl_80AF6484:
/* 80AF6484  34 7E 08 54 */	addic. r3, r30, 0x854
/* 80AF6488  41 82 00 34 */	beq lbl_80AF64BC
/* 80AF648C  C0 3E 04 D0 */	lfs f1, 0x4d0(r30)
/* 80AF6490  C0 03 00 00 */	lfs f0, 0(r3)
/* 80AF6494  EC 01 00 2A */	fadds f0, f1, f0
/* 80AF6498  D0 1E 04 D0 */	stfs f0, 0x4d0(r30)
/* 80AF649C  C0 3E 04 D4 */	lfs f1, 0x4d4(r30)
/* 80AF64A0  C0 03 00 04 */	lfs f0, 4(r3)
/* 80AF64A4  EC 01 00 2A */	fadds f0, f1, f0
/* 80AF64A8  D0 1E 04 D4 */	stfs f0, 0x4d4(r30)
/* 80AF64AC  C0 3E 04 D8 */	lfs f1, 0x4d8(r30)
/* 80AF64B0  C0 03 00 08 */	lfs f0, 8(r3)
/* 80AF64B4  EC 01 00 2A */	fadds f0, f1, f0
/* 80AF64B8  D0 1E 04 D8 */	stfs f0, 0x4d8(r30)
lbl_80AF64BC:
/* 80AF64BC  38 7E 06 7C */	addi r3, r30, 0x67c
/* 80AF64C0  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80AF64C4  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 80AF64C8  38 84 0F 38 */	addi r4, r4, 0xf38
/* 80AF64CC  4B 58 05 E0 */	b CrrPos__9dBgS_AcchFR4dBgS
/* 80AF64D0  38 7E 04 E6 */	addi r3, r30, 0x4e6
/* 80AF64D4  A8 9E 04 DE */	lha r4, 0x4de(r30)
/* 80AF64D8  38 A0 00 02 */	li r5, 2
/* 80AF64DC  38 C0 40 00 */	li r6, 0x4000
/* 80AF64E0  4B 77 A1 28 */	b cLib_addCalcAngleS2__FPssss
/* 80AF64E4  38 7E 04 E4 */	addi r3, r30, 0x4e4
/* 80AF64E8  A8 9E 04 DC */	lha r4, 0x4dc(r30)
/* 80AF64EC  38 A0 00 02 */	li r5, 2
/* 80AF64F0  38 C0 40 00 */	li r6, 0x4000
/* 80AF64F4  4B 77 A1 14 */	b cLib_addCalcAngleS2__FPssss
/* 80AF64F8  A8 1E 04 E0 */	lha r0, 0x4e0(r30)
/* 80AF64FC  B0 1E 04 E8 */	sth r0, 0x4e8(r30)
/* 80AF6500  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80AF6504  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 80AF6508  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80AF650C  7C 08 03 A6 */	mtlr r0
/* 80AF6510  38 21 00 30 */	addi r1, r1, 0x30
/* 80AF6514  4E 80 00 20 */	blr 
