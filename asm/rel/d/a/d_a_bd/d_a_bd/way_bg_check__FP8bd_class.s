lbl_804D6DD8:
/* 804D6DD8  94 21 FF 50 */	stwu r1, -0xb0(r1)
/* 804D6DDC  7C 08 02 A6 */	mflr r0
/* 804D6DE0  90 01 00 B4 */	stw r0, 0xb4(r1)
/* 804D6DE4  93 E1 00 AC */	stw r31, 0xac(r1)
/* 804D6DE8  93 C1 00 A8 */	stw r30, 0xa8(r1)
/* 804D6DEC  3C 80 80 4E */	lis r4, lit_3942@ha
/* 804D6DF0  3B E4 9E 64 */	addi r31, r4, lit_3942@l
/* 804D6DF4  7C 7E 1B 78 */	mr r30, r3
/* 804D6DF8  C0 03 04 D0 */	lfs f0, 0x4d0(r3)
/* 804D6DFC  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 804D6E00  C0 23 04 D4 */	lfs f1, 0x4d4(r3)
/* 804D6E04  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 804D6E08  C0 03 04 D8 */	lfs f0, 0x4d8(r3)
/* 804D6E0C  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 804D6E10  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 804D6E14  EC 01 00 2A */	fadds f0, f1, f0
/* 804D6E18  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 804D6E1C  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 804D6E20  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 804D6E24  80 63 00 00 */	lwz r3, 0(r3)
/* 804D6E28  A8 9E 04 E6 */	lha r4, 0x4e6(r30)
/* 804D6E2C  4B B3 55 B0 */	b mDoMtx_YrotS__FPA4_fs
/* 804D6E30  C0 1F 00 10 */	lfs f0, 0x10(r31)
/* 804D6E34  D0 01 00 08 */	stfs f0, 8(r1)
/* 804D6E38  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 804D6E3C  C0 1F 00 1C */	lfs f0, 0x1c(r31)
/* 804D6E40  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 804D6E44  38 61 00 08 */	addi r3, r1, 8
/* 804D6E48  38 81 00 14 */	addi r4, r1, 0x14
/* 804D6E4C  4B D9 A0 A0 */	b MtxPosition__FP4cXyzP4cXyz
/* 804D6E50  38 61 00 14 */	addi r3, r1, 0x14
/* 804D6E54  38 81 00 20 */	addi r4, r1, 0x20
/* 804D6E58  7C 65 1B 78 */	mr r5, r3
/* 804D6E5C  4B E7 02 34 */	b PSVECAdd
/* 804D6E60  38 61 00 2C */	addi r3, r1, 0x2c
/* 804D6E64  4B BA 0E 04 */	b __ct__11dBgS_LinChkFv
/* 804D6E68  38 61 00 2C */	addi r3, r1, 0x2c
/* 804D6E6C  38 81 00 20 */	addi r4, r1, 0x20
/* 804D6E70  38 A1 00 14 */	addi r5, r1, 0x14
/* 804D6E74  7F C6 F3 78 */	mr r6, r30
/* 804D6E78  4B BA 0E EC */	b Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 804D6E7C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 804D6E80  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 804D6E84  38 63 0F 38 */	addi r3, r3, 0xf38
/* 804D6E88  38 81 00 2C */	addi r4, r1, 0x2c
/* 804D6E8C  4B B9 D5 28 */	b LineCross__4cBgSFP11cBgS_LinChk
/* 804D6E90  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 804D6E94  41 82 00 18 */	beq lbl_804D6EAC
/* 804D6E98  38 61 00 2C */	addi r3, r1, 0x2c
/* 804D6E9C  38 80 FF FF */	li r4, -1
/* 804D6EA0  4B BA 0E 3C */	b __dt__11dBgS_LinChkFv
/* 804D6EA4  38 60 00 01 */	li r3, 1
/* 804D6EA8  48 00 00 14 */	b lbl_804D6EBC
lbl_804D6EAC:
/* 804D6EAC  38 61 00 2C */	addi r3, r1, 0x2c
/* 804D6EB0  38 80 FF FF */	li r4, -1
/* 804D6EB4  4B BA 0E 28 */	b __dt__11dBgS_LinChkFv
/* 804D6EB8  38 60 00 00 */	li r3, 0
lbl_804D6EBC:
/* 804D6EBC  83 E1 00 AC */	lwz r31, 0xac(r1)
/* 804D6EC0  83 C1 00 A8 */	lwz r30, 0xa8(r1)
/* 804D6EC4  80 01 00 B4 */	lwz r0, 0xb4(r1)
/* 804D6EC8  7C 08 03 A6 */	mtlr r0
/* 804D6ECC  38 21 00 B0 */	addi r1, r1, 0xb0
/* 804D6ED0  4E 80 00 20 */	blr 
