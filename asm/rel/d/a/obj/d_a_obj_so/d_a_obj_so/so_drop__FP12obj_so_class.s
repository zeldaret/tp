lbl_80CE0C90:
/* 80CE0C90  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 80CE0C94  7C 08 02 A6 */	mflr r0
/* 80CE0C98  90 01 00 64 */	stw r0, 0x64(r1)
/* 80CE0C9C  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 80CE0CA0  F3 E1 00 58 */	psq_st f31, 88(r1), 0, 0 /* qr0 */
/* 80CE0CA4  39 61 00 50 */	addi r11, r1, 0x50
/* 80CE0CA8  4B 68 15 31 */	bl _savegpr_28
/* 80CE0CAC  7C 7C 1B 78 */	mr r28, r3
/* 80CE0CB0  3C 60 80 CE */	lis r3, lit_3779@ha /* 0x80CE39E8@ha */
/* 80CE0CB4  3B E3 39 E8 */	addi r31, r3, lit_3779@l /* 0x80CE39E8@l */
/* 80CE0CB8  3B C0 00 00 */	li r30, 0
/* 80CE0CBC  3B A0 00 01 */	li r29, 1
/* 80CE0CC0  A8 1C 0D B0 */	lha r0, 0xdb0(r28)
/* 80CE0CC4  2C 00 00 01 */	cmpwi r0, 1
/* 80CE0CC8  41 82 00 3C */	beq lbl_80CE0D04
/* 80CE0CCC  40 80 00 10 */	bge lbl_80CE0CDC
/* 80CE0CD0  2C 00 00 00 */	cmpwi r0, 0
/* 80CE0CD4  40 80 00 14 */	bge lbl_80CE0CE8
/* 80CE0CD8  48 00 00 AC */	b lbl_80CE0D84
lbl_80CE0CDC:
/* 80CE0CDC  2C 00 00 03 */	cmpwi r0, 3
/* 80CE0CE0  40 80 00 A4 */	bge lbl_80CE0D84
/* 80CE0CE4  48 00 00 94 */	b lbl_80CE0D78
lbl_80CE0CE8:
/* 80CE0CE8  C0 1F 00 48 */	lfs f0, 0x48(r31)
/* 80CE0CEC  D0 1C 04 FC */	stfs f0, 0x4fc(r28)
/* 80CE0CF0  C0 1F 00 6C */	lfs f0, 0x6c(r31)
/* 80CE0CF4  D0 1C 05 2C */	stfs f0, 0x52c(r28)
/* 80CE0CF8  38 00 00 01 */	li r0, 1
/* 80CE0CFC  B0 1C 0D B0 */	sth r0, 0xdb0(r28)
/* 80CE0D00  48 00 00 84 */	b lbl_80CE0D84
lbl_80CE0D04:
/* 80CE0D04  A8 1C 0D B2 */	lha r0, 0xdb2(r28)
/* 80CE0D08  2C 00 00 00 */	cmpwi r0, 0
/* 80CE0D0C  41 82 00 08 */	beq lbl_80CE0D14
/* 80CE0D10  3B A0 00 00 */	li r29, 0
lbl_80CE0D14:
/* 80CE0D14  38 7C 04 E4 */	addi r3, r28, 0x4e4
/* 80CE0D18  38 80 C0 00 */	li r4, -16384
/* 80CE0D1C  38 A0 00 04 */	li r5, 4
/* 80CE0D20  38 C0 03 00 */	li r6, 0x300
/* 80CE0D24  4B 58 F8 E5 */	bl cLib_addCalcAngleS2__FPssss
/* 80CE0D28  7F A0 07 75 */	extsb. r0, r29
/* 80CE0D2C  41 82 00 58 */	beq lbl_80CE0D84
/* 80CE0D30  80 1C 0E 38 */	lwz r0, 0xe38(r28)
/* 80CE0D34  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 80CE0D38  41 82 00 4C */	beq lbl_80CE0D84
/* 80CE0D3C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CE0D40  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CE0D44  80 1C 00 B0 */	lwz r0, 0xb0(r28)
/* 80CE0D48  54 04 86 3E */	rlwinm r4, r0, 0x10, 0x18, 0x1f
/* 80CE0D4C  88 1C 04 E2 */	lbz r0, 0x4e2(r28)
/* 80CE0D50  7C 05 07 74 */	extsb r5, r0
/* 80CE0D54  4B 35 44 AD */	bl onSwitch__10dSv_info_cFii
/* 80CE0D58  38 00 00 00 */	li r0, 0
/* 80CE0D5C  B0 1C 05 62 */	sth r0, 0x562(r28)
/* 80CE0D60  38 00 00 02 */	li r0, 2
/* 80CE0D64  B0 1C 0D B0 */	sth r0, 0xdb0(r28)
/* 80CE0D68  3B C0 00 01 */	li r30, 1
/* 80CE0D6C  38 00 00 01 */	li r0, 1
/* 80CE0D70  98 1C 10 54 */	stb r0, 0x1054(r28)
/* 80CE0D74  48 00 00 10 */	b lbl_80CE0D84
lbl_80CE0D78:
/* 80CE0D78  C0 1F 00 04 */	lfs f0, 4(r31)
/* 80CE0D7C  D0 1C 04 FC */	stfs f0, 0x4fc(r28)
/* 80CE0D80  D0 1C 05 2C */	stfs f0, 0x52c(r28)
lbl_80CE0D84:
/* 80CE0D84  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 80CE0D88  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 80CE0D8C  80 63 00 00 */	lwz r3, 0(r3)
/* 80CE0D90  A8 9C 04 E6 */	lha r4, 0x4e6(r28)
/* 80CE0D94  4B 32 B6 49 */	bl mDoMtx_YrotS__FPA4_fs
/* 80CE0D98  C0 1F 00 04 */	lfs f0, 4(r31)
/* 80CE0D9C  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80CE0DA0  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80CE0DA4  C0 1C 05 2C */	lfs f0, 0x52c(r28)
/* 80CE0DA8  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80CE0DAC  38 61 00 2C */	addi r3, r1, 0x2c
/* 80CE0DB0  38 81 00 20 */	addi r4, r1, 0x20
/* 80CE0DB4  4B 59 01 39 */	bl MtxPosition__FP4cXyzP4cXyz
/* 80CE0DB8  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 80CE0DBC  D0 1C 04 F8 */	stfs f0, 0x4f8(r28)
/* 80CE0DC0  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 80CE0DC4  D0 1C 05 00 */	stfs f0, 0x500(r28)
/* 80CE0DC8  38 7C 04 D0 */	addi r3, r28, 0x4d0
/* 80CE0DCC  38 9C 04 F8 */	addi r4, r28, 0x4f8
/* 80CE0DD0  7C 65 1B 78 */	mr r5, r3
/* 80CE0DD4  4B 66 62 BD */	bl PSVECAdd
/* 80CE0DD8  C0 3C 04 FC */	lfs f1, 0x4fc(r28)
/* 80CE0DDC  C0 1F 00 4C */	lfs f0, 0x4c(r31)
/* 80CE0DE0  EC 01 00 28 */	fsubs f0, f1, f0
/* 80CE0DE4  D0 1C 04 FC */	stfs f0, 0x4fc(r28)
/* 80CE0DE8  7F A0 07 75 */	extsb. r0, r29
/* 80CE0DEC  41 82 00 64 */	beq lbl_80CE0E50
/* 80CE0DF0  A8 1C 04 E4 */	lha r0, 0x4e4(r28)
/* 80CE0DF4  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80CE0DF8  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 80CE0DFC  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 80CE0E00  7C 23 04 2E */	lfsx f1, r3, r0
/* 80CE0E04  C0 1F 00 28 */	lfs f0, 0x28(r31)
/* 80CE0E08  EF E0 00 72 */	fmuls f31, f0, f1
/* 80CE0E0C  C0 1C 04 D4 */	lfs f0, 0x4d4(r28)
/* 80CE0E10  EC 00 F8 2A */	fadds f0, f0, f31
/* 80CE0E14  D0 1C 04 D4 */	stfs f0, 0x4d4(r28)
/* 80CE0E18  C0 1C 04 C0 */	lfs f0, 0x4c0(r28)
/* 80CE0E1C  EC 00 F8 2A */	fadds f0, f0, f31
/* 80CE0E20  D0 1C 04 C0 */	stfs f0, 0x4c0(r28)
/* 80CE0E24  38 7C 0E 0C */	addi r3, r28, 0xe0c
/* 80CE0E28  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CE0E2C  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CE0E30  38 84 0F 38 */	addi r4, r4, 0xf38
/* 80CE0E34  4B 39 5C 79 */	bl CrrPos__9dBgS_AcchFR4dBgS
/* 80CE0E38  C0 1C 04 D4 */	lfs f0, 0x4d4(r28)
/* 80CE0E3C  EC 00 F8 28 */	fsubs f0, f0, f31
/* 80CE0E40  D0 1C 04 D4 */	stfs f0, 0x4d4(r28)
/* 80CE0E44  C0 1C 04 C0 */	lfs f0, 0x4c0(r28)
/* 80CE0E48  EC 00 F8 28 */	fsubs f0, f0, f31
/* 80CE0E4C  D0 1C 04 C0 */	stfs f0, 0x4c0(r28)
lbl_80CE0E50:
/* 80CE0E50  7F C0 07 75 */	extsb. r0, r30
/* 80CE0E54  41 82 00 E4 */	beq lbl_80CE0F38
/* 80CE0E58  7F 83 E3 78 */	mr r3, r28
/* 80CE0E5C  38 80 00 01 */	li r4, 1
/* 80CE0E60  4B FF F8 E5 */	bl part_set__FP12obj_so_classSc
/* 80CE0E64  3C 60 00 08 */	lis r3, 0x0008 /* 0x000800AF@ha */
/* 80CE0E68  38 03 00 AF */	addi r0, r3, 0x00AF /* 0x000800AF@l */
/* 80CE0E6C  90 01 00 08 */	stw r0, 8(r1)
/* 80CE0E70  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80CE0E74  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80CE0E78  80 63 00 00 */	lwz r3, 0(r3)
/* 80CE0E7C  38 81 00 08 */	addi r4, r1, 8
/* 80CE0E80  38 A0 00 00 */	li r5, 0
/* 80CE0E84  38 C0 00 00 */	li r6, 0
/* 80CE0E88  38 E0 00 00 */	li r7, 0
/* 80CE0E8C  C0 3F 00 1C */	lfs f1, 0x1c(r31)
/* 80CE0E90  FC 40 08 90 */	fmr f2, f1
/* 80CE0E94  C0 7F 00 70 */	lfs f3, 0x70(r31)
/* 80CE0E98  FC 80 18 90 */	fmr f4, f3
/* 80CE0E9C  39 00 00 00 */	li r8, 0
/* 80CE0EA0  4B 5C AA E5 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80CE0EA4  38 61 00 0C */	addi r3, r1, 0xc
/* 80CE0EA8  38 80 00 00 */	li r4, 0
/* 80CE0EAC  38 A0 00 00 */	li r5, 0
/* 80CE0EB0  38 C0 00 00 */	li r6, 0
/* 80CE0EB4  4B 58 65 41 */	bl __ct__5csXyzFsss
/* 80CE0EB8  38 7C 1B 98 */	addi r3, r28, 0x1b98
/* 80CE0EBC  38 9C 1B 9C */	addi r4, r28, 0x1b9c
/* 80CE0EC0  38 BC 04 D0 */	addi r5, r28, 0x4d0
/* 80CE0EC4  38 C1 00 0C */	addi r6, r1, 0xc
/* 80CE0EC8  C0 3F 00 74 */	lfs f1, 0x74(r31)
/* 80CE0ECC  38 FC 01 0C */	addi r7, r28, 0x10c
/* 80CE0ED0  39 00 00 01 */	li r8, 1
/* 80CE0ED4  4B 33 C1 4D */	bl fopAcM_effSmokeSet1__FPUlPUlPC4cXyzPC5csXyzfPC12dKy_tevstr_ci
/* 80CE0ED8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CE0EDC  3B A3 61 C0 */	addi r29, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CE0EE0  80 7D 5D 3C */	lwz r3, 0x5d3c(r29)
/* 80CE0EE4  38 63 02 10 */	addi r3, r3, 0x210
/* 80CE0EE8  80 9C 1B 98 */	lwz r4, 0x1b98(r28)
/* 80CE0EEC  4B 36 A9 C9 */	bl forceOnEventMove__Q213dPa_control_c7level_cFUl
/* 80CE0EF0  80 7D 5D 3C */	lwz r3, 0x5d3c(r29)
/* 80CE0EF4  38 63 02 10 */	addi r3, r3, 0x210
/* 80CE0EF8  80 9C 1B 9C */	lwz r4, 0x1b9c(r28)
/* 80CE0EFC  4B 36 A9 B9 */	bl forceOnEventMove__Q213dPa_control_c7level_cFUl
/* 80CE0F00  C0 3F 00 04 */	lfs f1, 4(r31)
/* 80CE0F04  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 80CE0F08  C0 1F 00 1C */	lfs f0, 0x1c(r31)
/* 80CE0F0C  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80CE0F10  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 80CE0F14  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CE0F18  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CE0F1C  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 80CE0F20  38 80 00 05 */	li r4, 5
/* 80CE0F24  38 A0 00 01 */	li r5, 1
/* 80CE0F28  38 C1 00 14 */	addi r6, r1, 0x14
/* 80CE0F2C  4B 38 EA F9 */	bl StartShock__12dVibration_cFii4cXyz
/* 80CE0F30  C0 1F 00 48 */	lfs f0, 0x48(r31)
/* 80CE0F34  D0 1C 1B C0 */	stfs f0, 0x1bc0(r28)
lbl_80CE0F38:
/* 80CE0F38  E3 E1 00 58 */	psq_l f31, 88(r1), 0, 0 /* qr0 */
/* 80CE0F3C  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 80CE0F40  39 61 00 50 */	addi r11, r1, 0x50
/* 80CE0F44  4B 68 12 E1 */	bl _restgpr_28
/* 80CE0F48  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80CE0F4C  7C 08 03 A6 */	mtlr r0
/* 80CE0F50  38 21 00 60 */	addi r1, r1, 0x60
/* 80CE0F54  4E 80 00 20 */	blr 
