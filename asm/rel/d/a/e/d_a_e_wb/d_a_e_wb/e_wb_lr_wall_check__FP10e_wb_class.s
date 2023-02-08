lbl_807D2D90:
/* 807D2D90  94 21 FF 50 */	stwu r1, -0xb0(r1)
/* 807D2D94  7C 08 02 A6 */	mflr r0
/* 807D2D98  90 01 00 B4 */	stw r0, 0xb4(r1)
/* 807D2D9C  39 61 00 B0 */	addi r11, r1, 0xb0
/* 807D2DA0  4B B8 F4 3D */	bl _savegpr_29
/* 807D2DA4  3C 80 80 7E */	lis r4, lit_3882@ha /* 0x807E298C@ha */
/* 807D2DA8  3B E4 29 8C */	addi r31, r4, lit_3882@l /* 0x807E298C@l */
/* 807D2DAC  7C 7D 1B 78 */	mr r29, r3
/* 807D2DB0  38 61 00 2C */	addi r3, r1, 0x2c
/* 807D2DB4  4B 8A 4E B5 */	bl __ct__11dBgS_LinChkFv
/* 807D2DB8  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 807D2DBC  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 807D2DC0  C0 3D 04 D4 */	lfs f1, 0x4d4(r29)
/* 807D2DC4  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 807D2DC8  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 807D2DCC  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 807D2DD0  C0 1F 00 64 */	lfs f0, 0x64(r31)
/* 807D2DD4  EC 01 00 2A */	fadds f0, f1, f0
/* 807D2DD8  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 807D2DDC  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 807D2DE0  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 807D2DE4  80 63 00 00 */	lwz r3, 0(r3)
/* 807D2DE8  A8 9D 04 E6 */	lha r4, 0x4e6(r29)
/* 807D2DEC  4B 83 95 F1 */	bl mDoMtx_YrotS__FPA4_fs
/* 807D2DF0  C0 1F 00 68 */	lfs f0, 0x68(r31)
/* 807D2DF4  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 807D2DF8  C0 1F 00 64 */	lfs f0, 0x64(r31)
/* 807D2DFC  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 807D2E00  C0 1F 00 6C */	lfs f0, 0x6c(r31)
/* 807D2E04  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 807D2E08  38 61 00 20 */	addi r3, r1, 0x20
/* 807D2E0C  38 81 00 08 */	addi r4, r1, 8
/* 807D2E10  4B A9 E0 DD */	bl MtxPosition__FP4cXyzP4cXyz
/* 807D2E14  38 61 00 08 */	addi r3, r1, 8
/* 807D2E18  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 807D2E1C  7C 65 1B 78 */	mr r5, r3
/* 807D2E20  4B B7 42 71 */	bl PSVECAdd
/* 807D2E24  38 61 00 2C */	addi r3, r1, 0x2c
/* 807D2E28  38 81 00 14 */	addi r4, r1, 0x14
/* 807D2E2C  38 A1 00 08 */	addi r5, r1, 8
/* 807D2E30  7F A6 EB 78 */	mr r6, r29
/* 807D2E34  4B 8A 4F 31 */	bl Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 807D2E38  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 807D2E3C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 807D2E40  3B C3 0F 38 */	addi r30, r3, 0xf38
/* 807D2E44  7F C3 F3 78 */	mr r3, r30
/* 807D2E48  38 81 00 2C */	addi r4, r1, 0x2c
/* 807D2E4C  4B 8A 15 69 */	bl LineCross__4cBgSFP11cBgS_LinChk
/* 807D2E50  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 807D2E54  41 82 00 30 */	beq lbl_807D2E84
/* 807D2E58  7F C3 F3 78 */	mr r3, r30
/* 807D2E5C  A0 81 00 42 */	lhz r4, 0x42(r1)
/* 807D2E60  4B 8A 17 B9 */	bl GetActorPointer__4cBgSCFi
/* 807D2E64  A8 03 00 08 */	lha r0, 8(r3)
/* 807D2E68  2C 00 02 DC */	cmpwi r0, 0x2dc
/* 807D2E6C  40 82 00 18 */	bne lbl_807D2E84
/* 807D2E70  38 61 00 2C */	addi r3, r1, 0x2c
/* 807D2E74  38 80 FF FF */	li r4, -1
/* 807D2E78  4B 8A 4E 65 */	bl __dt__11dBgS_LinChkFv
/* 807D2E7C  38 60 FF FF */	li r3, -1
/* 807D2E80  48 00 00 80 */	b lbl_807D2F00
lbl_807D2E84:
/* 807D2E84  C0 21 00 20 */	lfs f1, 0x20(r1)
/* 807D2E88  C0 1F 00 4C */	lfs f0, 0x4c(r31)
/* 807D2E8C  EC 01 00 32 */	fmuls f0, f1, f0
/* 807D2E90  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 807D2E94  38 61 00 20 */	addi r3, r1, 0x20
/* 807D2E98  38 81 00 08 */	addi r4, r1, 8
/* 807D2E9C  4B A9 E0 51 */	bl MtxPosition__FP4cXyzP4cXyz
/* 807D2EA0  38 61 00 08 */	addi r3, r1, 8
/* 807D2EA4  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 807D2EA8  7C 65 1B 78 */	mr r5, r3
/* 807D2EAC  4B B7 41 E5 */	bl PSVECAdd
/* 807D2EB0  7F C3 F3 78 */	mr r3, r30
/* 807D2EB4  38 81 00 2C */	addi r4, r1, 0x2c
/* 807D2EB8  4B 8A 14 FD */	bl LineCross__4cBgSFP11cBgS_LinChk
/* 807D2EBC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 807D2EC0  41 82 00 30 */	beq lbl_807D2EF0
/* 807D2EC4  7F C3 F3 78 */	mr r3, r30
/* 807D2EC8  A0 81 00 42 */	lhz r4, 0x42(r1)
/* 807D2ECC  4B 8A 17 4D */	bl GetActorPointer__4cBgSCFi
/* 807D2ED0  A8 03 00 08 */	lha r0, 8(r3)
/* 807D2ED4  2C 00 02 DC */	cmpwi r0, 0x2dc
/* 807D2ED8  40 82 00 18 */	bne lbl_807D2EF0
/* 807D2EDC  38 61 00 2C */	addi r3, r1, 0x2c
/* 807D2EE0  38 80 FF FF */	li r4, -1
/* 807D2EE4  4B 8A 4D F9 */	bl __dt__11dBgS_LinChkFv
/* 807D2EE8  38 60 00 01 */	li r3, 1
/* 807D2EEC  48 00 00 14 */	b lbl_807D2F00
lbl_807D2EF0:
/* 807D2EF0  38 61 00 2C */	addi r3, r1, 0x2c
/* 807D2EF4  38 80 FF FF */	li r4, -1
/* 807D2EF8  4B 8A 4D E5 */	bl __dt__11dBgS_LinChkFv
/* 807D2EFC  38 60 00 00 */	li r3, 0
lbl_807D2F00:
/* 807D2F00  39 61 00 B0 */	addi r11, r1, 0xb0
/* 807D2F04  4B B8 F3 25 */	bl _restgpr_29
/* 807D2F08  80 01 00 B4 */	lwz r0, 0xb4(r1)
/* 807D2F0C  7C 08 03 A6 */	mtlr r0
/* 807D2F10  38 21 00 B0 */	addi r1, r1, 0xb0
/* 807D2F14  4E 80 00 20 */	blr 
