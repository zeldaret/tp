lbl_805F5BE8:
/* 805F5BE8  94 21 FF 10 */	stwu r1, -0xf0(r1)
/* 805F5BEC  7C 08 02 A6 */	mflr r0
/* 805F5BF0  90 01 00 F4 */	stw r0, 0xf4(r1)
/* 805F5BF4  39 61 00 F0 */	addi r11, r1, 0xf0
/* 805F5BF8  4B D6 C5 E4 */	b _savegpr_29
/* 805F5BFC  3C 80 80 60 */	lis r4, lit_3815@ha
/* 805F5C00  3B E4 26 64 */	addi r31, r4, lit_3815@l
/* 805F5C04  88 03 0C 76 */	lbz r0, 0xc76(r3)
/* 805F5C08  28 00 00 04 */	cmplwi r0, 4
/* 805F5C0C  41 80 00 0C */	blt lbl_805F5C18
/* 805F5C10  38 60 00 00 */	li r3, 0
/* 805F5C14  48 00 02 C8 */	b lbl_805F5EDC
lbl_805F5C18:
/* 805F5C18  7C 7E 1B 78 */	mr r30, r3
/* 805F5C1C  38 61 00 64 */	addi r3, r1, 0x64
/* 805F5C20  4B A8 20 48 */	b __ct__11dBgS_LinChkFv
/* 805F5C24  3C 60 80 60 */	lis r3, __vt__8cM3dGPla@ha
/* 805F5C28  38 03 2F 48 */	addi r0, r3, __vt__8cM3dGPla@l
/* 805F5C2C  90 01 00 60 */	stw r0, 0x60(r1)
/* 805F5C30  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 805F5C34  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 805F5C38  80 63 00 00 */	lwz r3, 0(r3)
/* 805F5C3C  A8 9E 04 E6 */	lha r4, 0x4e6(r30)
/* 805F5C40  4B A1 67 9C */	b mDoMtx_YrotS__FPA4_fs
/* 805F5C44  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 805F5C48  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 805F5C4C  80 63 00 00 */	lwz r3, 0(r3)
/* 805F5C50  A8 9E 04 E4 */	lha r4, 0x4e4(r30)
/* 805F5C54  4B A1 67 48 */	b mDoMtx_XrotM__FPA4_fs
/* 805F5C58  C0 1F 00 74 */	lfs f0, 0x74(r31)
/* 805F5C5C  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 805F5C60  C0 1F 00 78 */	lfs f0, 0x78(r31)
/* 805F5C64  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 805F5C68  C0 1F 00 7C */	lfs f0, 0x7c(r31)
/* 805F5C6C  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 805F5C70  38 61 00 44 */	addi r3, r1, 0x44
/* 805F5C74  38 81 00 2C */	addi r4, r1, 0x2c
/* 805F5C78  4B C7 B2 74 */	b MtxPosition__FP4cXyzP4cXyz
/* 805F5C7C  38 61 00 2C */	addi r3, r1, 0x2c
/* 805F5C80  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 805F5C84  7C 65 1B 78 */	mr r5, r3
/* 805F5C88  4B D5 14 08 */	b PSVECAdd
/* 805F5C8C  C0 21 00 30 */	lfs f1, 0x30(r1)
/* 805F5C90  C0 1F 00 54 */	lfs f0, 0x54(r31)
/* 805F5C94  EC 01 00 2A */	fadds f0, f1, f0
/* 805F5C98  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 805F5C9C  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 805F5CA0  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 805F5CA4  C0 3E 04 D4 */	lfs f1, 0x4d4(r30)
/* 805F5CA8  D0 21 00 3C */	stfs f1, 0x3c(r1)
/* 805F5CAC  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 805F5CB0  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 805F5CB4  C0 1F 00 80 */	lfs f0, 0x80(r31)
/* 805F5CB8  EC 01 00 2A */	fadds f0, f1, f0
/* 805F5CBC  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 805F5CC0  38 61 00 64 */	addi r3, r1, 0x64
/* 805F5CC4  38 81 00 38 */	addi r4, r1, 0x38
/* 805F5CC8  38 A1 00 2C */	addi r5, r1, 0x2c
/* 805F5CCC  7F C6 F3 78 */	mr r6, r30
/* 805F5CD0  4B A8 20 94 */	b Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 805F5CD4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 805F5CD8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 805F5CDC  3B A3 0F 38 */	addi r29, r3, 0xf38
/* 805F5CE0  7F A3 EB 78 */	mr r3, r29
/* 805F5CE4  38 81 00 64 */	addi r4, r1, 0x64
/* 805F5CE8  4B A7 E6 CC */	b LineCross__4cBgSFP11cBgS_LinChk
/* 805F5CEC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 805F5CF0  41 82 00 4C */	beq lbl_805F5D3C
/* 805F5CF4  7F A3 EB 78 */	mr r3, r29
/* 805F5CF8  38 81 00 78 */	addi r4, r1, 0x78
/* 805F5CFC  38 A1 00 50 */	addi r5, r1, 0x50
/* 805F5D00  4B A7 EA 44 */	b GetTriPla__4cBgSCFRC13cBgS_PolyInfoP8cM3dGPla
/* 805F5D04  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 805F5D08  41 82 00 34 */	beq lbl_805F5D3C
/* 805F5D0C  C0 21 00 54 */	lfs f1, 0x54(r1)
/* 805F5D10  4B C7 24 D4 */	b cBgW_CheckBGround__Ff
/* 805F5D14  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 805F5D18  40 82 00 24 */	bne lbl_805F5D3C
/* 805F5D1C  3C 60 80 60 */	lis r3, __vt__8cM3dGPla@ha
/* 805F5D20  38 03 2F 48 */	addi r0, r3, __vt__8cM3dGPla@l
/* 805F5D24  90 01 00 60 */	stw r0, 0x60(r1)
/* 805F5D28  38 61 00 64 */	addi r3, r1, 0x64
/* 805F5D2C  38 80 FF FF */	li r4, -1
/* 805F5D30  4B A8 1F AC */	b __dt__11dBgS_LinChkFv
/* 805F5D34  38 60 00 00 */	li r3, 0
/* 805F5D38  48 00 01 A4 */	b lbl_805F5EDC
lbl_805F5D3C:
/* 805F5D3C  C0 21 00 3C */	lfs f1, 0x3c(r1)
/* 805F5D40  C0 1F 00 5C */	lfs f0, 0x5c(r31)
/* 805F5D44  EC 01 00 28 */	fsubs f0, f1, f0
/* 805F5D48  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 805F5D4C  C0 21 00 30 */	lfs f1, 0x30(r1)
/* 805F5D50  C0 1F 00 54 */	lfs f0, 0x54(r31)
/* 805F5D54  EC 01 00 28 */	fsubs f0, f1, f0
/* 805F5D58  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 805F5D5C  38 61 00 64 */	addi r3, r1, 0x64
/* 805F5D60  38 81 00 38 */	addi r4, r1, 0x38
/* 805F5D64  38 A1 00 2C */	addi r5, r1, 0x2c
/* 805F5D68  7F C6 F3 78 */	mr r6, r30
/* 805F5D6C  4B A8 1F F8 */	b Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 805F5D70  7F A3 EB 78 */	mr r3, r29
/* 805F5D74  38 81 00 64 */	addi r4, r1, 0x64
/* 805F5D78  4B A7 E6 3C */	b LineCross__4cBgSFP11cBgS_LinChk
/* 805F5D7C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 805F5D80  41 82 01 40 */	beq lbl_805F5EC0
/* 805F5D84  7F A3 EB 78 */	mr r3, r29
/* 805F5D88  38 81 00 78 */	addi r4, r1, 0x78
/* 805F5D8C  38 A1 00 50 */	addi r5, r1, 0x50
/* 805F5D90  4B A7 E9 B4 */	b GetTriPla__4cBgSCFRC13cBgS_PolyInfoP8cM3dGPla
/* 805F5D94  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 805F5D98  41 82 01 28 */	beq lbl_805F5EC0
/* 805F5D9C  C0 21 00 54 */	lfs f1, 0x54(r1)
/* 805F5DA0  4B C7 24 44 */	b cBgW_CheckBGround__Ff
/* 805F5DA4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 805F5DA8  40 82 01 18 */	bne lbl_805F5EC0
/* 805F5DAC  C0 01 00 94 */	lfs f0, 0x94(r1)
/* 805F5DB0  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 805F5DB4  C0 01 00 98 */	lfs f0, 0x98(r1)
/* 805F5DB8  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 805F5DBC  C0 01 00 9C */	lfs f0, 0x9c(r1)
/* 805F5DC0  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 805F5DC4  C0 21 00 44 */	lfs f1, 0x44(r1)
/* 805F5DC8  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 805F5DCC  EC 01 00 32 */	fmuls f0, f1, f0
/* 805F5DD0  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 805F5DD4  38 61 00 44 */	addi r3, r1, 0x44
/* 805F5DD8  38 81 00 2C */	addi r4, r1, 0x2c
/* 805F5DDC  4B C7 B1 10 */	b MtxPosition__FP4cXyzP4cXyz
/* 805F5DE0  38 61 00 2C */	addi r3, r1, 0x2c
/* 805F5DE4  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 805F5DE8  7C 65 1B 78 */	mr r5, r3
/* 805F5DEC  4B D5 12 A4 */	b PSVECAdd
/* 805F5DF0  38 61 00 64 */	addi r3, r1, 0x64
/* 805F5DF4  38 81 00 38 */	addi r4, r1, 0x38
/* 805F5DF8  38 A1 00 2C */	addi r5, r1, 0x2c
/* 805F5DFC  7F C6 F3 78 */	mr r6, r30
/* 805F5E00  4B A8 1F 64 */	b Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 805F5E04  7F A3 EB 78 */	mr r3, r29
/* 805F5E08  38 81 00 64 */	addi r4, r1, 0x64
/* 805F5E0C  4B A7 E5 A8 */	b LineCross__4cBgSFP11cBgS_LinChk
/* 805F5E10  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 805F5E14  41 82 00 20 */	beq lbl_805F5E34
/* 805F5E18  C0 01 00 94 */	lfs f0, 0x94(r1)
/* 805F5E1C  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 805F5E20  C0 01 00 98 */	lfs f0, 0x98(r1)
/* 805F5E24  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 805F5E28  C0 01 00 9C */	lfs f0, 0x9c(r1)
/* 805F5E2C  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 805F5E30  48 00 00 24 */	b lbl_805F5E54
lbl_805F5E34:
/* 805F5E34  3C 60 80 60 */	lis r3, __vt__8cM3dGPla@ha
/* 805F5E38  38 03 2F 48 */	addi r0, r3, __vt__8cM3dGPla@l
/* 805F5E3C  90 01 00 60 */	stw r0, 0x60(r1)
/* 805F5E40  38 61 00 64 */	addi r3, r1, 0x64
/* 805F5E44  38 80 FF FF */	li r4, -1
/* 805F5E48  4B A8 1E 94 */	b __dt__11dBgS_LinChkFv
/* 805F5E4C  38 60 00 00 */	li r3, 0
/* 805F5E50  48 00 00 8C */	b lbl_805F5EDC
lbl_805F5E54:
/* 805F5E54  38 61 00 08 */	addi r3, r1, 8
/* 805F5E58  38 81 00 14 */	addi r4, r1, 0x14
/* 805F5E5C  38 A1 00 20 */	addi r5, r1, 0x20
/* 805F5E60  4B C7 0C D4 */	b __mi__4cXyzCFRC3Vec
/* 805F5E64  C0 21 00 08 */	lfs f1, 8(r1)
/* 805F5E68  D0 21 00 44 */	stfs f1, 0x44(r1)
/* 805F5E6C  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 805F5E70  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 805F5E74  C0 41 00 10 */	lfs f2, 0x10(r1)
/* 805F5E78  D0 41 00 4C */	stfs f2, 0x4c(r1)
/* 805F5E7C  4B C7 17 F8 */	b cM_atan2s__Fff
/* 805F5E80  38 63 40 00 */	addi r3, r3, 0x4000
/* 805F5E84  A8 1E 04 E6 */	lha r0, 0x4e6(r30)
/* 805F5E88  7C 00 18 50 */	subf r0, r0, r3
/* 805F5E8C  7C 00 07 34 */	extsh r0, r0
/* 805F5E90  2C 00 D0 00 */	cmpwi r0, -12288
/* 805F5E94  40 81 00 2C */	ble lbl_805F5EC0
/* 805F5E98  2C 00 30 00 */	cmpwi r0, 0x3000
/* 805F5E9C  40 80 00 24 */	bge lbl_805F5EC0
/* 805F5EA0  3C 60 80 60 */	lis r3, __vt__8cM3dGPla@ha
/* 805F5EA4  38 03 2F 48 */	addi r0, r3, __vt__8cM3dGPla@l
/* 805F5EA8  90 01 00 60 */	stw r0, 0x60(r1)
/* 805F5EAC  38 61 00 64 */	addi r3, r1, 0x64
/* 805F5EB0  38 80 FF FF */	li r4, -1
/* 805F5EB4  4B A8 1E 28 */	b __dt__11dBgS_LinChkFv
/* 805F5EB8  38 60 00 01 */	li r3, 1
/* 805F5EBC  48 00 00 20 */	b lbl_805F5EDC
lbl_805F5EC0:
/* 805F5EC0  3C 60 80 60 */	lis r3, __vt__8cM3dGPla@ha
/* 805F5EC4  38 03 2F 48 */	addi r0, r3, __vt__8cM3dGPla@l
/* 805F5EC8  90 01 00 60 */	stw r0, 0x60(r1)
/* 805F5ECC  38 61 00 64 */	addi r3, r1, 0x64
/* 805F5ED0  38 80 FF FF */	li r4, -1
/* 805F5ED4  4B A8 1E 08 */	b __dt__11dBgS_LinChkFv
/* 805F5ED8  38 60 00 00 */	li r3, 0
lbl_805F5EDC:
/* 805F5EDC  39 61 00 F0 */	addi r11, r1, 0xf0
/* 805F5EE0  4B D6 C3 48 */	b _restgpr_29
/* 805F5EE4  80 01 00 F4 */	lwz r0, 0xf4(r1)
/* 805F5EE8  7C 08 03 A6 */	mtlr r0
/* 805F5EEC  38 21 00 F0 */	addi r1, r1, 0xf0
/* 805F5EF0  4E 80 00 20 */	blr 
