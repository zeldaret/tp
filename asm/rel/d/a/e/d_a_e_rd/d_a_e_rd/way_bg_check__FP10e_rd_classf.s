lbl_80505E44:
/* 80505E44  94 21 FF 40 */	stwu r1, -0xc0(r1)
/* 80505E48  7C 08 02 A6 */	mflr r0
/* 80505E4C  90 01 00 C4 */	stw r0, 0xc4(r1)
/* 80505E50  DB E1 00 B0 */	stfd f31, 0xb0(r1)
/* 80505E54  F3 E1 00 B8 */	psq_st f31, 184(r1), 0, 0 /* qr0 */
/* 80505E58  93 E1 00 AC */	stw r31, 0xac(r1)
/* 80505E5C  FF E0 08 90 */	fmr f31, f1
/* 80505E60  7C 7F 1B 78 */	mr r31, r3
/* 80505E64  38 61 00 2C */	addi r3, r1, 0x2c
/* 80505E68  4B B7 1E 00 */	b __ct__11dBgS_LinChkFv
/* 80505E6C  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 80505E70  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80505E74  C0 3F 04 D4 */	lfs f1, 0x4d4(r31)
/* 80505E78  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 80505E7C  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 80505E80  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80505E84  3C 60 80 52 */	lis r3, lit_4967@ha
/* 80505E88  C0 03 86 00 */	lfs f0, lit_4967@l(r3)
/* 80505E8C  EC 01 00 2A */	fadds f0, f1, f0
/* 80505E90  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80505E94  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 80505E98  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 80505E9C  80 63 00 00 */	lwz r3, 0(r3)
/* 80505EA0  A8 9F 04 E6 */	lha r4, 0x4e6(r31)
/* 80505EA4  4B B0 65 38 */	b mDoMtx_YrotS__FPA4_fs
/* 80505EA8  3C 60 80 52 */	lis r3, lit_4209@ha
/* 80505EAC  C0 03 85 88 */	lfs f0, lit_4209@l(r3)
/* 80505EB0  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80505EB4  3C 60 80 52 */	lis r3, lit_4967@ha
/* 80505EB8  C0 03 86 00 */	lfs f0, lit_4967@l(r3)
/* 80505EBC  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80505EC0  D3 E1 00 28 */	stfs f31, 0x28(r1)
/* 80505EC4  38 61 00 20 */	addi r3, r1, 0x20
/* 80505EC8  38 81 00 08 */	addi r4, r1, 8
/* 80505ECC  4B D6 B0 20 */	b MtxPosition__FP4cXyzP4cXyz
/* 80505ED0  38 61 00 08 */	addi r3, r1, 8
/* 80505ED4  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 80505ED8  7C 65 1B 78 */	mr r5, r3
/* 80505EDC  4B E4 11 B4 */	b PSVECAdd
/* 80505EE0  38 61 00 2C */	addi r3, r1, 0x2c
/* 80505EE4  38 81 00 14 */	addi r4, r1, 0x14
/* 80505EE8  38 A1 00 08 */	addi r5, r1, 8
/* 80505EEC  7F E6 FB 78 */	mr r6, r31
/* 80505EF0  4B B7 1E 74 */	b Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 80505EF4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80505EF8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80505EFC  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80505F00  38 81 00 2C */	addi r4, r1, 0x2c
/* 80505F04  4B B6 E4 B0 */	b LineCross__4cBgSFP11cBgS_LinChk
/* 80505F08  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80505F0C  41 82 00 18 */	beq lbl_80505F24
/* 80505F10  38 61 00 2C */	addi r3, r1, 0x2c
/* 80505F14  38 80 FF FF */	li r4, -1
/* 80505F18  4B B7 1D C4 */	b __dt__11dBgS_LinChkFv
/* 80505F1C  38 60 00 01 */	li r3, 1
/* 80505F20  48 00 00 14 */	b lbl_80505F34
lbl_80505F24:
/* 80505F24  38 61 00 2C */	addi r3, r1, 0x2c
/* 80505F28  38 80 FF FF */	li r4, -1
/* 80505F2C  4B B7 1D B0 */	b __dt__11dBgS_LinChkFv
/* 80505F30  38 60 00 00 */	li r3, 0
lbl_80505F34:
/* 80505F34  E3 E1 00 B8 */	psq_l f31, 184(r1), 0, 0 /* qr0 */
/* 80505F38  CB E1 00 B0 */	lfd f31, 0xb0(r1)
/* 80505F3C  83 E1 00 AC */	lwz r31, 0xac(r1)
/* 80505F40  80 01 00 C4 */	lwz r0, 0xc4(r1)
/* 80505F44  7C 08 03 A6 */	mtlr r0
/* 80505F48  38 21 00 C0 */	addi r1, r1, 0xc0
/* 80505F4C  4E 80 00 20 */	blr 
