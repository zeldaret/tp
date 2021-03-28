lbl_807D3D94:
/* 807D3D94  94 21 FE E0 */	stwu r1, -0x120(r1)
/* 807D3D98  7C 08 02 A6 */	mflr r0
/* 807D3D9C  90 01 01 24 */	stw r0, 0x124(r1)
/* 807D3DA0  DB E1 01 10 */	stfd f31, 0x110(r1)
/* 807D3DA4  F3 E1 01 18 */	psq_st f31, 280(r1), 0, 0 /* qr0 */
/* 807D3DA8  39 61 01 10 */	addi r11, r1, 0x110
/* 807D3DAC  4B B8 E4 30 */	b _savegpr_29
/* 807D3DB0  7C 7D 1B 78 */	mr r29, r3
/* 807D3DB4  7C 9E 23 78 */	mr r30, r4
/* 807D3DB8  3C 60 80 7E */	lis r3, lit_3882@ha
/* 807D3DBC  3B E3 29 8C */	addi r31, r3, lit_3882@l
/* 807D3DC0  38 61 00 9C */	addi r3, r1, 0x9c
/* 807D3DC4  4B 8A 37 B8 */	b __ct__11dBgS_GndChkFv
/* 807D3DC8  38 61 00 2C */	addi r3, r1, 0x2c
/* 807D3DCC  4B 8A 3E 9C */	b __ct__11dBgS_LinChkFv
/* 807D3DD0  C0 5F 00 6C */	lfs f2, 0x6c(r31)
/* 807D3DD4  A8 1D 06 8E */	lha r0, 0x68e(r29)
/* 807D3DD8  54 00 07 7E */	clrlwi r0, r0, 0x1d
/* 807D3DDC  C8 3F 00 D0 */	lfd f1, 0xd0(r31)
/* 807D3DE0  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 807D3DE4  90 01 00 F4 */	stw r0, 0xf4(r1)
/* 807D3DE8  3C 00 43 30 */	lis r0, 0x4330
/* 807D3DEC  90 01 00 F0 */	stw r0, 0xf0(r1)
/* 807D3DF0  C8 01 00 F0 */	lfd f0, 0xf0(r1)
/* 807D3DF4  EC 00 08 28 */	fsubs f0, f0, f1
/* 807D3DF8  EF E2 00 32 */	fmuls f31, f2, f0
/* 807D3DFC  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 807D3E00  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 807D3E04  80 63 00 00 */	lwz r3, 0(r3)
/* 807D3E08  A8 1D 04 E6 */	lha r0, 0x4e6(r29)
/* 807D3E0C  7C 00 F2 14 */	add r0, r0, r30
/* 807D3E10  7C 04 07 34 */	extsh r4, r0
/* 807D3E14  4B 83 85 C8 */	b mDoMtx_YrotS__FPA4_fs
/* 807D3E18  C0 1F 00 48 */	lfs f0, 0x48(r31)
/* 807D3E1C  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 807D3E20  C0 1F 00 BC */	lfs f0, 0xbc(r31)
/* 807D3E24  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 807D3E28  D3 E1 00 28 */	stfs f31, 0x28(r1)
/* 807D3E2C  38 61 00 20 */	addi r3, r1, 0x20
/* 807D3E30  38 81 00 14 */	addi r4, r1, 0x14
/* 807D3E34  4B A9 D0 B8 */	b MtxPosition__FP4cXyzP4cXyz
/* 807D3E38  38 61 00 14 */	addi r3, r1, 0x14
/* 807D3E3C  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 807D3E40  7C 65 1B 78 */	mr r5, r3
/* 807D3E44  4B B7 32 4C */	b PSVECAdd
/* 807D3E48  38 61 00 9C */	addi r3, r1, 0x9c
/* 807D3E4C  38 81 00 14 */	addi r4, r1, 0x14
/* 807D3E50  4B A9 3E D8 */	b SetPos__11cBgS_GndChkFPC4cXyz
/* 807D3E54  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 807D3E58  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 807D3E5C  3B C3 0F 38 */	addi r30, r3, 0xf38
/* 807D3E60  7F C3 F3 78 */	mr r3, r30
/* 807D3E64  38 81 00 9C */	addi r4, r1, 0x9c
/* 807D3E68  4B 8A 06 38 */	b GroundCross__4cBgSFP11cBgS_GndChk
/* 807D3E6C  C0 1F 00 C4 */	lfs f0, 0xc4(r31)
/* 807D3E70  EC 00 08 2A */	fadds f0, f0, f1
/* 807D3E74  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 807D3E78  C0 1F 00 48 */	lfs f0, 0x48(r31)
/* 807D3E7C  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 807D3E80  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 807D3E84  C0 1F 00 C8 */	lfs f0, 0xc8(r31)
/* 807D3E88  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 807D3E8C  38 61 00 20 */	addi r3, r1, 0x20
/* 807D3E90  38 81 00 08 */	addi r4, r1, 8
/* 807D3E94  4B A9 D0 58 */	b MtxPosition__FP4cXyzP4cXyz
/* 807D3E98  38 61 00 08 */	addi r3, r1, 8
/* 807D3E9C  38 81 00 14 */	addi r4, r1, 0x14
/* 807D3EA0  7C 65 1B 78 */	mr r5, r3
/* 807D3EA4  4B B7 31 EC */	b PSVECAdd
/* 807D3EA8  38 61 00 2C */	addi r3, r1, 0x2c
/* 807D3EAC  38 81 00 14 */	addi r4, r1, 0x14
/* 807D3EB0  38 A1 00 08 */	addi r5, r1, 8
/* 807D3EB4  7F A6 EB 78 */	mr r6, r29
/* 807D3EB8  4B 8A 3E AC */	b Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 807D3EBC  7F C3 F3 78 */	mr r3, r30
/* 807D3EC0  38 81 00 2C */	addi r4, r1, 0x2c
/* 807D3EC4  4B 8A 04 F0 */	b LineCross__4cBgSFP11cBgS_LinChk
/* 807D3EC8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 807D3ECC  41 82 00 24 */	beq lbl_807D3EF0
/* 807D3ED0  38 61 00 2C */	addi r3, r1, 0x2c
/* 807D3ED4  38 80 FF FF */	li r4, -1
/* 807D3ED8  4B 8A 3E 04 */	b __dt__11dBgS_LinChkFv
/* 807D3EDC  38 61 00 9C */	addi r3, r1, 0x9c
/* 807D3EE0  38 80 FF FF */	li r4, -1
/* 807D3EE4  4B 8A 37 0C */	b __dt__11dBgS_GndChkFv
/* 807D3EE8  38 60 00 01 */	li r3, 1
/* 807D3EEC  48 00 00 20 */	b lbl_807D3F0C
lbl_807D3EF0:
/* 807D3EF0  38 61 00 2C */	addi r3, r1, 0x2c
/* 807D3EF4  38 80 FF FF */	li r4, -1
/* 807D3EF8  4B 8A 3D E4 */	b __dt__11dBgS_LinChkFv
/* 807D3EFC  38 61 00 9C */	addi r3, r1, 0x9c
/* 807D3F00  38 80 FF FF */	li r4, -1
/* 807D3F04  4B 8A 36 EC */	b __dt__11dBgS_GndChkFv
/* 807D3F08  38 60 00 00 */	li r3, 0
lbl_807D3F0C:
/* 807D3F0C  E3 E1 01 18 */	psq_l f31, 280(r1), 0, 0 /* qr0 */
/* 807D3F10  CB E1 01 10 */	lfd f31, 0x110(r1)
/* 807D3F14  39 61 01 10 */	addi r11, r1, 0x110
/* 807D3F18  4B B8 E3 10 */	b _restgpr_29
/* 807D3F1C  80 01 01 24 */	lwz r0, 0x124(r1)
/* 807D3F20  7C 08 03 A6 */	mtlr r0
/* 807D3F24  38 21 01 20 */	addi r1, r1, 0x120
/* 807D3F28  4E 80 00 20 */	blr 
