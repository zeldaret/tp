lbl_80BF5C0C:
/* 80BF5C0C  94 21 FF 30 */	stwu r1, -0xd0(r1)
/* 80BF5C10  7C 08 02 A6 */	mflr r0
/* 80BF5C14  90 01 00 D4 */	stw r0, 0xd4(r1)
/* 80BF5C18  DB E1 00 C0 */	stfd f31, 0xc0(r1)
/* 80BF5C1C  F3 E1 00 C8 */	psq_st f31, 200(r1), 0, 0 /* qr0 */
/* 80BF5C20  39 61 00 C0 */	addi r11, r1, 0xc0
/* 80BF5C24  4B 76 C5 B5 */	bl _savegpr_28
/* 80BF5C28  7C 7E 1B 78 */	mr r30, r3
/* 80BF5C2C  3C 60 80 BF */	lis r3, l_idx@ha /* 0x80BF610C@ha */
/* 80BF5C30  3B E3 61 0C */	addi r31, r3, l_idx@l /* 0x80BF610C@l */
/* 80BF5C34  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80BF5C38  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80BF5C3C  38 80 00 00 */	li r4, 0
/* 80BF5C40  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80BF5C44  38 DE 01 0C */	addi r6, r30, 0x10c
/* 80BF5C48  4B 5A DB 7D */	bl settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 80BF5C4C  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80BF5C50  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80BF5C54  80 9E 05 A8 */	lwz r4, 0x5a8(r30)
/* 80BF5C58  80 84 00 04 */	lwz r4, 4(r4)
/* 80BF5C5C  38 BE 01 0C */	addi r5, r30, 0x10c
/* 80BF5C60  4B 5A F1 41 */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80BF5C64  3B 80 00 00 */	li r28, 0
/* 80BF5C68  48 00 00 64 */	b lbl_80BF5CCC
lbl_80BF5C6C:
/* 80BF5C6C  80 64 00 60 */	lwz r3, 0x60(r4)
/* 80BF5C70  57 80 13 BA */	rlwinm r0, r28, 2, 0xe, 0x1d
/* 80BF5C74  7F A3 00 2E */	lwzx r29, r3, r0
/* 80BF5C78  80 7D 00 34 */	lwz r3, 0x34(r29)
/* 80BF5C7C  81 83 00 00 */	lwz r12, 0(r3)
/* 80BF5C80  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 80BF5C84  7D 89 03 A6 */	mtctr r12
/* 80BF5C88  4E 80 04 21 */	bctrl 
/* 80BF5C8C  28 03 00 00 */	cmplwi r3, 0
/* 80BF5C90  41 82 00 38 */	beq lbl_80BF5CC8
/* 80BF5C94  80 7D 00 34 */	lwz r3, 0x34(r29)
/* 80BF5C98  81 83 00 00 */	lwz r12, 0(r3)
/* 80BF5C9C  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 80BF5CA0  7D 89 03 A6 */	mtctr r12
/* 80BF5CA4  4E 80 04 21 */	bctrl 
/* 80BF5CA8  38 00 00 00 */	li r0, 0
/* 80BF5CAC  98 03 00 14 */	stb r0, 0x14(r3)
/* 80BF5CB0  98 03 00 15 */	stb r0, 0x15(r3)
/* 80BF5CB4  98 03 00 16 */	stb r0, 0x16(r3)
/* 80BF5CB8  C0 1F 00 D4 */	lfs f0, 0xd4(r31)
/* 80BF5CBC  D0 03 00 04 */	stfs f0, 4(r3)
/* 80BF5CC0  C0 1F 00 D8 */	lfs f0, 0xd8(r31)
/* 80BF5CC4  D0 03 00 08 */	stfs f0, 8(r3)
lbl_80BF5CC8:
/* 80BF5CC8  3B 9C 00 01 */	addi r28, r28, 1
lbl_80BF5CCC:
/* 80BF5CCC  80 7E 05 A8 */	lwz r3, 0x5a8(r30)
/* 80BF5CD0  80 83 00 04 */	lwz r4, 4(r3)
/* 80BF5CD4  A0 64 00 5C */	lhz r3, 0x5c(r4)
/* 80BF5CD8  57 80 04 3E */	clrlwi r0, r28, 0x10
/* 80BF5CDC  7C 00 18 40 */	cmplw r0, r3
/* 80BF5CE0  41 80 FF 8C */	blt lbl_80BF5C6C
/* 80BF5CE4  4B 5A 9D 2D */	bl dKy_getdaytime_hour__Fv
/* 80BF5CE8  7C 7D 1B 78 */	mr r29, r3
/* 80BF5CEC  4B 5A 9D 51 */	bl dKy_getdaytime_minute__Fv
/* 80BF5CF0  C8 3F 00 E0 */	lfd f1, 0xe0(r31)
/* 80BF5CF4  6C 60 80 00 */	xoris r0, r3, 0x8000
/* 80BF5CF8  90 01 00 0C */	stw r0, 0xc(r1)
/* 80BF5CFC  3C 00 43 30 */	lis r0, 0x4330
/* 80BF5D00  90 01 00 08 */	stw r0, 8(r1)
/* 80BF5D04  C8 01 00 08 */	lfd f0, 8(r1)
/* 80BF5D08  EF E0 08 28 */	fsubs f31, f0, f1
/* 80BF5D0C  80 7E 05 A8 */	lwz r3, 0x5a8(r30)
/* 80BF5D10  80 63 00 04 */	lwz r3, 4(r3)
/* 80BF5D14  80 63 00 60 */	lwz r3, 0x60(r3)
/* 80BF5D18  A0 1E 05 B0 */	lhz r0, 0x5b0(r30)
/* 80BF5D1C  54 00 10 3A */	slwi r0, r0, 2
/* 80BF5D20  7C 63 00 2E */	lwzx r3, r3, r0
/* 80BF5D24  80 63 00 2C */	lwz r3, 0x2c(r3)
/* 80BF5D28  38 80 00 01 */	li r4, 1
/* 80BF5D2C  81 83 00 00 */	lwz r12, 0(r3)
/* 80BF5D30  81 8C 00 74 */	lwz r12, 0x74(r12)
/* 80BF5D34  7D 89 03 A6 */	mtctr r12
/* 80BF5D38  4E 80 04 21 */	bctrl 
/* 80BF5D3C  57 A0 10 3A */	slwi r0, r29, 2
/* 80BF5D40  38 9F 00 00 */	addi r4, r31, 0
/* 80BF5D44  7C A4 00 AE */	lbzx r5, r4, r0
/* 80BF5D48  7D 44 02 14 */	add r10, r4, r0
/* 80BF5D4C  88 CA 00 01 */	lbz r6, 1(r10)
/* 80BF5D50  54 A0 10 3A */	slwi r0, r5, 2
/* 80BF5D54  39 3F 00 60 */	addi r9, r31, 0x60
/* 80BF5D58  7C 89 00 AE */	lbzx r4, r9, r0
/* 80BF5D5C  C8 5F 00 E8 */	lfd f2, 0xe8(r31)
/* 80BF5D60  90 81 00 14 */	stw r4, 0x14(r1)
/* 80BF5D64  3D 00 43 30 */	lis r8, 0x4330
/* 80BF5D68  91 01 00 10 */	stw r8, 0x10(r1)
/* 80BF5D6C  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 80BF5D70  EC C0 10 28 */	fsubs f6, f0, f2
/* 80BF5D74  54 CB 10 3A */	slwi r11, r6, 2
/* 80BF5D78  7C E9 58 AE */	lbzx r7, r9, r11
/* 80BF5D7C  7C 84 38 50 */	subf r4, r4, r7
/* 80BF5D80  C8 3F 00 E0 */	lfd f1, 0xe0(r31)
/* 80BF5D84  6C 84 80 00 */	xoris r4, r4, 0x8000
/* 80BF5D88  90 81 00 1C */	stw r4, 0x1c(r1)
/* 80BF5D8C  91 01 00 18 */	stw r8, 0x18(r1)
/* 80BF5D90  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 80BF5D94  EC A0 08 28 */	fsubs f5, f0, f1
/* 80BF5D98  C0 1F 00 DC */	lfs f0, 0xdc(r31)
/* 80BF5D9C  88 CA 00 03 */	lbz r6, 3(r10)
/* 80BF5DA0  90 C1 00 24 */	stw r6, 0x24(r1)
/* 80BF5DA4  91 01 00 20 */	stw r8, 0x20(r1)
/* 80BF5DA8  C8 61 00 20 */	lfd f3, 0x20(r1)
/* 80BF5DAC  EC 63 10 28 */	fsubs f3, f3, f2
/* 80BF5DB0  EC 60 00 F2 */	fmuls f3, f0, f3
/* 80BF5DB4  EC 9F 18 2A */	fadds f4, f31, f3
/* 80BF5DB8  88 8A 00 02 */	lbz r4, 2(r10)
/* 80BF5DBC  38 84 00 01 */	addi r4, r4, 1
/* 80BF5DC0  6C 85 80 00 */	xoris r5, r4, 0x8000
/* 80BF5DC4  90 A1 00 2C */	stw r5, 0x2c(r1)
/* 80BF5DC8  91 01 00 28 */	stw r8, 0x28(r1)
/* 80BF5DCC  C8 61 00 28 */	lfd f3, 0x28(r1)
/* 80BF5DD0  EC 63 08 28 */	fsubs f3, f3, f1
/* 80BF5DD4  EC 60 00 F2 */	fmuls f3, f0, f3
/* 80BF5DD8  EC 64 18 24 */	fdivs f3, f4, f3
/* 80BF5DDC  EC 65 00 F2 */	fmuls f3, f5, f3
/* 80BF5DE0  EC 66 18 2A */	fadds f3, f6, f3
/* 80BF5DE4  FC 60 18 1E */	fctiwz f3, f3
/* 80BF5DE8  D8 61 00 30 */	stfd f3, 0x30(r1)
/* 80BF5DEC  80 81 00 34 */	lwz r4, 0x34(r1)
/* 80BF5DF0  98 83 00 00 */	stb r4, 0(r3)
/* 80BF5DF4  38 89 00 01 */	addi r4, r9, 1
/* 80BF5DF8  7D 84 00 AE */	lbzx r12, r4, r0
/* 80BF5DFC  91 81 00 3C */	stw r12, 0x3c(r1)
/* 80BF5E00  91 01 00 38 */	stw r8, 0x38(r1)
/* 80BF5E04  C8 61 00 38 */	lfd f3, 0x38(r1)
/* 80BF5E08  EC C3 10 28 */	fsubs f6, f3, f2
/* 80BF5E0C  7C 84 58 AE */	lbzx r4, r4, r11
/* 80BF5E10  7C 8C 20 50 */	subf r4, r12, r4
/* 80BF5E14  6C 84 80 00 */	xoris r4, r4, 0x8000
/* 80BF5E18  90 81 00 44 */	stw r4, 0x44(r1)
/* 80BF5E1C  91 01 00 40 */	stw r8, 0x40(r1)
/* 80BF5E20  C8 61 00 40 */	lfd f3, 0x40(r1)
/* 80BF5E24  EC A3 08 28 */	fsubs f5, f3, f1
/* 80BF5E28  90 C1 00 4C */	stw r6, 0x4c(r1)
/* 80BF5E2C  91 01 00 48 */	stw r8, 0x48(r1)
/* 80BF5E30  C8 61 00 48 */	lfd f3, 0x48(r1)
/* 80BF5E34  EC 63 10 28 */	fsubs f3, f3, f2
/* 80BF5E38  EC 60 00 F2 */	fmuls f3, f0, f3
/* 80BF5E3C  EC 9F 18 2A */	fadds f4, f31, f3
/* 80BF5E40  90 A1 00 54 */	stw r5, 0x54(r1)
/* 80BF5E44  91 01 00 50 */	stw r8, 0x50(r1)
/* 80BF5E48  C8 61 00 50 */	lfd f3, 0x50(r1)
/* 80BF5E4C  EC 63 08 28 */	fsubs f3, f3, f1
/* 80BF5E50  EC 60 00 F2 */	fmuls f3, f0, f3
/* 80BF5E54  EC 64 18 24 */	fdivs f3, f4, f3
/* 80BF5E58  EC 65 00 F2 */	fmuls f3, f5, f3
/* 80BF5E5C  EC 66 18 2A */	fadds f3, f6, f3
/* 80BF5E60  FC 60 18 1E */	fctiwz f3, f3
/* 80BF5E64  D8 61 00 58 */	stfd f3, 0x58(r1)
/* 80BF5E68  80 81 00 5C */	lwz r4, 0x5c(r1)
/* 80BF5E6C  98 83 00 01 */	stb r4, 1(r3)
/* 80BF5E70  38 CA 00 03 */	addi r6, r10, 3
/* 80BF5E74  38 AA 00 02 */	addi r5, r10, 2
/* 80BF5E78  38 89 00 02 */	addi r4, r9, 2
/* 80BF5E7C  7D 44 00 AE */	lbzx r10, r4, r0
/* 80BF5E80  91 41 00 64 */	stw r10, 0x64(r1)
/* 80BF5E84  91 01 00 60 */	stw r8, 0x60(r1)
/* 80BF5E88  C8 61 00 60 */	lfd f3, 0x60(r1)
/* 80BF5E8C  EC C3 10 28 */	fsubs f6, f3, f2
/* 80BF5E90  7C 84 58 AE */	lbzx r4, r4, r11
/* 80BF5E94  7C 8A 20 50 */	subf r4, r10, r4
/* 80BF5E98  6C 84 80 00 */	xoris r4, r4, 0x8000
/* 80BF5E9C  90 81 00 6C */	stw r4, 0x6c(r1)
/* 80BF5EA0  91 01 00 68 */	stw r8, 0x68(r1)
/* 80BF5EA4  C8 61 00 68 */	lfd f3, 0x68(r1)
/* 80BF5EA8  EC A3 08 28 */	fsubs f5, f3, f1
/* 80BF5EAC  88 C6 00 00 */	lbz r6, 0(r6)
/* 80BF5EB0  90 C1 00 74 */	stw r6, 0x74(r1)
/* 80BF5EB4  91 01 00 70 */	stw r8, 0x70(r1)
/* 80BF5EB8  C8 61 00 70 */	lfd f3, 0x70(r1)
/* 80BF5EBC  EC 63 10 28 */	fsubs f3, f3, f2
/* 80BF5EC0  EC 60 00 F2 */	fmuls f3, f0, f3
/* 80BF5EC4  EC 9F 18 2A */	fadds f4, f31, f3
/* 80BF5EC8  88 85 00 00 */	lbz r4, 0(r5)
/* 80BF5ECC  38 84 00 01 */	addi r4, r4, 1
/* 80BF5ED0  6C 85 80 00 */	xoris r5, r4, 0x8000
/* 80BF5ED4  90 A1 00 7C */	stw r5, 0x7c(r1)
/* 80BF5ED8  91 01 00 78 */	stw r8, 0x78(r1)
/* 80BF5EDC  C8 61 00 78 */	lfd f3, 0x78(r1)
/* 80BF5EE0  EC 63 08 28 */	fsubs f3, f3, f1
/* 80BF5EE4  EC 60 00 F2 */	fmuls f3, f0, f3
/* 80BF5EE8  EC 64 18 24 */	fdivs f3, f4, f3
/* 80BF5EEC  EC 65 00 F2 */	fmuls f3, f5, f3
/* 80BF5EF0  EC 66 18 2A */	fadds f3, f6, f3
/* 80BF5EF4  FC 60 18 1E */	fctiwz f3, f3
/* 80BF5EF8  D8 61 00 80 */	stfd f3, 0x80(r1)
/* 80BF5EFC  80 81 00 84 */	lwz r4, 0x84(r1)
/* 80BF5F00  98 83 00 02 */	stb r4, 2(r3)
/* 80BF5F04  7C 89 02 14 */	add r4, r9, r0
/* 80BF5F08  88 04 00 03 */	lbz r0, 3(r4)
/* 80BF5F0C  90 01 00 8C */	stw r0, 0x8c(r1)
/* 80BF5F10  91 01 00 88 */	stw r8, 0x88(r1)
/* 80BF5F14  C8 61 00 88 */	lfd f3, 0x88(r1)
/* 80BF5F18  EC A3 10 28 */	fsubs f5, f3, f2
/* 80BF5F1C  7C 00 38 50 */	subf r0, r0, r7
/* 80BF5F20  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80BF5F24  90 01 00 94 */	stw r0, 0x94(r1)
/* 80BF5F28  91 01 00 90 */	stw r8, 0x90(r1)
/* 80BF5F2C  C8 61 00 90 */	lfd f3, 0x90(r1)
/* 80BF5F30  EC 83 08 28 */	fsubs f4, f3, f1
/* 80BF5F34  90 C1 00 9C */	stw r6, 0x9c(r1)
/* 80BF5F38  91 01 00 98 */	stw r8, 0x98(r1)
/* 80BF5F3C  C8 61 00 98 */	lfd f3, 0x98(r1)
/* 80BF5F40  EC 43 10 28 */	fsubs f2, f3, f2
/* 80BF5F44  EC 40 00 B2 */	fmuls f2, f0, f2
/* 80BF5F48  EC 7F 10 2A */	fadds f3, f31, f2
/* 80BF5F4C  90 A1 00 A4 */	stw r5, 0xa4(r1)
/* 80BF5F50  91 01 00 A0 */	stw r8, 0xa0(r1)
/* 80BF5F54  C8 41 00 A0 */	lfd f2, 0xa0(r1)
/* 80BF5F58  EC 22 08 28 */	fsubs f1, f2, f1
/* 80BF5F5C  EC 00 00 72 */	fmuls f0, f0, f1
/* 80BF5F60  EC 03 00 24 */	fdivs f0, f3, f0
/* 80BF5F64  EC 04 00 32 */	fmuls f0, f4, f0
/* 80BF5F68  EC 05 00 2A */	fadds f0, f5, f0
/* 80BF5F6C  FC 00 00 1E */	fctiwz f0, f0
/* 80BF5F70  D8 01 00 A8 */	stfd f0, 0xa8(r1)
/* 80BF5F74  80 01 00 AC */	lwz r0, 0xac(r1)
/* 80BF5F78  98 03 00 03 */	stb r0, 3(r3)
/* 80BF5F7C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80BF5F80  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80BF5F84  80 04 5F 70 */	lwz r0, 0x5f70(r4)
/* 80BF5F88  3C 60 80 43 */	lis r3, j3dSys@ha /* 0x80434AC8@ha */
/* 80BF5F8C  3B E3 4A C8 */	addi r31, r3, j3dSys@l /* 0x80434AC8@l */
/* 80BF5F90  90 1F 00 48 */	stw r0, 0x48(r31)
/* 80BF5F94  80 04 5F 74 */	lwz r0, 0x5f74(r4)
/* 80BF5F98  90 1F 00 4C */	stw r0, 0x4c(r31)
/* 80BF5F9C  80 7E 05 A8 */	lwz r3, 0x5a8(r30)
/* 80BF5FA0  80 83 00 04 */	lwz r4, 4(r3)
/* 80BF5FA4  80 7E 05 AC */	lwz r3, 0x5ac(r30)
/* 80BF5FA8  C0 23 00 10 */	lfs f1, 0x10(r3)
/* 80BF5FAC  38 84 00 58 */	addi r4, r4, 0x58
/* 80BF5FB0  4B 41 77 29 */	bl entry__13mDoExt_btkAnmFP16J3DMaterialTablef
/* 80BF5FB4  80 7E 05 A8 */	lwz r3, 0x5a8(r30)
/* 80BF5FB8  4B 41 7D 0D */	bl mDoExt_modelUpdateDL__FP8J3DModel
/* 80BF5FBC  80 7E 05 A8 */	lwz r3, 0x5a8(r30)
/* 80BF5FC0  80 63 00 04 */	lwz r3, 4(r3)
/* 80BF5FC4  4B 41 7E 2D */	bl mDoExt_btkAnmRemove__FP12J3DModelData
/* 80BF5FC8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80BF5FCC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80BF5FD0  80 03 5F 80 */	lwz r0, 0x5f80(r3)
/* 80BF5FD4  90 1F 00 48 */	stw r0, 0x48(r31)
/* 80BF5FD8  80 03 5F 84 */	lwz r0, 0x5f84(r3)
/* 80BF5FDC  90 1F 00 4C */	stw r0, 0x4c(r31)
/* 80BF5FE0  38 60 00 01 */	li r3, 1
/* 80BF5FE4  E3 E1 00 C8 */	psq_l f31, 200(r1), 0, 0 /* qr0 */
/* 80BF5FE8  CB E1 00 C0 */	lfd f31, 0xc0(r1)
/* 80BF5FEC  39 61 00 C0 */	addi r11, r1, 0xc0
/* 80BF5FF0  4B 76 C2 35 */	bl _restgpr_28
/* 80BF5FF4  80 01 00 D4 */	lwz r0, 0xd4(r1)
/* 80BF5FF8  7C 08 03 A6 */	mtlr r0
/* 80BF5FFC  38 21 00 D0 */	addi r1, r1, 0xd0
/* 80BF6000  4E 80 00 20 */	blr 
