lbl_80D08D94:
/* 80D08D94  94 21 FF 40 */	stwu r1, -0xc0(r1)
/* 80D08D98  7C 08 02 A6 */	mflr r0
/* 80D08D9C  90 01 00 C4 */	stw r0, 0xc4(r1)
/* 80D08DA0  39 61 00 C0 */	addi r11, r1, 0xc0
/* 80D08DA4  4B 65 94 38 */	b _savegpr_29
/* 80D08DA8  7C 7F 1B 78 */	mr r31, r3
/* 80D08DAC  3C 60 80 D1 */	lis r3, lit_3775@ha
/* 80D08DB0  3B C3 B8 F0 */	addi r30, r3, lit_3775@l
/* 80D08DB4  38 61 00 38 */	addi r3, r1, 0x38
/* 80D08DB8  4B 36 EE B0 */	b __ct__11dBgS_LinChkFv
/* 80D08DBC  38 61 00 90 */	addi r3, r1, 0x90
/* 80D08DC0  4B 37 00 A8 */	b SetObj__16dBgS_PolyPassChkFv
/* 80D08DC4  38 61 00 38 */	addi r3, r1, 0x38
/* 80D08DC8  38 9F 04 BC */	addi r4, r31, 0x4bc
/* 80D08DCC  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 80D08DD0  38 C0 00 00 */	li r6, 0
/* 80D08DD4  4B 36 EF 90 */	b Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 80D08DD8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80D08DDC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80D08DE0  3B A3 0F 38 */	addi r29, r3, 0xf38
/* 80D08DE4  7F A3 EB 78 */	mr r3, r29
/* 80D08DE8  38 81 00 38 */	addi r4, r1, 0x38
/* 80D08DEC  4B 36 B5 C8 */	b LineCross__4cBgSFP11cBgS_LinChk
/* 80D08DF0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80D08DF4  41 82 01 A4 */	beq lbl_80D08F98
/* 80D08DF8  3C 60 80 D1 */	lis r3, __vt__8cM3dGPla@ha
/* 80D08DFC  38 03 BA 8C */	addi r0, r3, __vt__8cM3dGPla@l
/* 80D08E00  90 01 00 34 */	stw r0, 0x34(r1)
/* 80D08E04  7F A3 EB 78 */	mr r3, r29
/* 80D08E08  38 81 00 4C */	addi r4, r1, 0x4c
/* 80D08E0C  38 A1 00 24 */	addi r5, r1, 0x24
/* 80D08E10  4B 36 B9 34 */	b GetTriPla__4cBgSCFRC13cBgS_PolyInfoP8cM3dGPla
/* 80D08E14  C0 01 00 68 */	lfs f0, 0x68(r1)
/* 80D08E18  D0 1F 04 D0 */	stfs f0, 0x4d0(r31)
/* 80D08E1C  C0 01 00 6C */	lfs f0, 0x6c(r1)
/* 80D08E20  D0 1F 04 D4 */	stfs f0, 0x4d4(r31)
/* 80D08E24  C0 01 00 70 */	lfs f0, 0x70(r1)
/* 80D08E28  D0 1F 04 D8 */	stfs f0, 0x4d8(r31)
/* 80D08E2C  C0 1E 00 4C */	lfs f0, 0x4c(r30)
/* 80D08E30  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80D08E34  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80D08E38  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80D08E3C  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80D08E40  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 80D08E44  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80D08E48  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 80D08E4C  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80D08E50  38 61 00 18 */	addi r3, r1, 0x18
/* 80D08E54  38 81 00 0C */	addi r4, r1, 0xc
/* 80D08E58  4B 63 E5 44 */	b PSVECSquareDistance
/* 80D08E5C  C0 1E 00 4C */	lfs f0, 0x4c(r30)
/* 80D08E60  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80D08E64  40 81 00 58 */	ble lbl_80D08EBC
/* 80D08E68  FC 00 08 34 */	frsqrte f0, f1
/* 80D08E6C  C8 9E 00 68 */	lfd f4, 0x68(r30)
/* 80D08E70  FC 44 00 32 */	fmul f2, f4, f0
/* 80D08E74  C8 7E 00 70 */	lfd f3, 0x70(r30)
/* 80D08E78  FC 00 00 32 */	fmul f0, f0, f0
/* 80D08E7C  FC 01 00 32 */	fmul f0, f1, f0
/* 80D08E80  FC 03 00 28 */	fsub f0, f3, f0
/* 80D08E84  FC 02 00 32 */	fmul f0, f2, f0
/* 80D08E88  FC 44 00 32 */	fmul f2, f4, f0
/* 80D08E8C  FC 00 00 32 */	fmul f0, f0, f0
/* 80D08E90  FC 01 00 32 */	fmul f0, f1, f0
/* 80D08E94  FC 03 00 28 */	fsub f0, f3, f0
/* 80D08E98  FC 02 00 32 */	fmul f0, f2, f0
/* 80D08E9C  FC 44 00 32 */	fmul f2, f4, f0
/* 80D08EA0  FC 00 00 32 */	fmul f0, f0, f0
/* 80D08EA4  FC 01 00 32 */	fmul f0, f1, f0
/* 80D08EA8  FC 03 00 28 */	fsub f0, f3, f0
/* 80D08EAC  FC 02 00 32 */	fmul f0, f2, f0
/* 80D08EB0  FC 41 00 32 */	fmul f2, f1, f0
/* 80D08EB4  FC 40 10 18 */	frsp f2, f2
/* 80D08EB8  48 00 00 90 */	b lbl_80D08F48
lbl_80D08EBC:
/* 80D08EBC  C8 1E 00 78 */	lfd f0, 0x78(r30)
/* 80D08EC0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80D08EC4  40 80 00 10 */	bge lbl_80D08ED4
/* 80D08EC8  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80D08ECC  C0 43 0A E0 */	lfs f2, __float_nan@l(r3)
/* 80D08ED0  48 00 00 78 */	b lbl_80D08F48
lbl_80D08ED4:
/* 80D08ED4  D0 21 00 08 */	stfs f1, 8(r1)
/* 80D08ED8  80 81 00 08 */	lwz r4, 8(r1)
/* 80D08EDC  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80D08EE0  3C 00 7F 80 */	lis r0, 0x7f80
/* 80D08EE4  7C 03 00 00 */	cmpw r3, r0
/* 80D08EE8  41 82 00 14 */	beq lbl_80D08EFC
/* 80D08EEC  40 80 00 40 */	bge lbl_80D08F2C
/* 80D08EF0  2C 03 00 00 */	cmpwi r3, 0
/* 80D08EF4  41 82 00 20 */	beq lbl_80D08F14
/* 80D08EF8  48 00 00 34 */	b lbl_80D08F2C
lbl_80D08EFC:
/* 80D08EFC  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80D08F00  41 82 00 0C */	beq lbl_80D08F0C
/* 80D08F04  38 00 00 01 */	li r0, 1
/* 80D08F08  48 00 00 28 */	b lbl_80D08F30
lbl_80D08F0C:
/* 80D08F0C  38 00 00 02 */	li r0, 2
/* 80D08F10  48 00 00 20 */	b lbl_80D08F30
lbl_80D08F14:
/* 80D08F14  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80D08F18  41 82 00 0C */	beq lbl_80D08F24
/* 80D08F1C  38 00 00 05 */	li r0, 5
/* 80D08F20  48 00 00 10 */	b lbl_80D08F30
lbl_80D08F24:
/* 80D08F24  38 00 00 03 */	li r0, 3
/* 80D08F28  48 00 00 08 */	b lbl_80D08F30
lbl_80D08F2C:
/* 80D08F2C  38 00 00 04 */	li r0, 4
lbl_80D08F30:
/* 80D08F30  2C 00 00 01 */	cmpwi r0, 1
/* 80D08F34  40 82 00 10 */	bne lbl_80D08F44
/* 80D08F38  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80D08F3C  C0 43 0A E0 */	lfs f2, __float_nan@l(r3)
/* 80D08F40  48 00 00 08 */	b lbl_80D08F48
lbl_80D08F44:
/* 80D08F44  FC 40 08 90 */	fmr f2, f1
lbl_80D08F48:
/* 80D08F48  C0 21 00 24 */	lfs f1, 0x24(r1)
/* 80D08F4C  4B 55 E7 28 */	b cM_atan2s__Fff
/* 80D08F50  7C 03 00 D0 */	neg r0, r3
/* 80D08F54  B0 1F 06 06 */	sth r0, 0x606(r31)
/* 80D08F58  C0 21 00 2C */	lfs f1, 0x2c(r1)
/* 80D08F5C  C0 41 00 28 */	lfs f2, 0x28(r1)
/* 80D08F60  4B 55 E7 14 */	b cM_atan2s__Fff
/* 80D08F64  B0 7F 06 02 */	sth r3, 0x602(r31)
/* 80D08F68  C0 21 00 24 */	lfs f1, 0x24(r1)
/* 80D08F6C  C0 41 00 2C */	lfs f2, 0x2c(r1)
/* 80D08F70  4B 55 E7 04 */	b cM_atan2s__Fff
/* 80D08F74  B0 7F 06 0A */	sth r3, 0x60a(r31)
/* 80D08F78  3C 60 80 D1 */	lis r3, __vt__8cM3dGPla@ha
/* 80D08F7C  38 03 BA 8C */	addi r0, r3, __vt__8cM3dGPla@l
/* 80D08F80  90 01 00 34 */	stw r0, 0x34(r1)
/* 80D08F84  38 61 00 38 */	addi r3, r1, 0x38
/* 80D08F88  38 80 FF FF */	li r4, -1
/* 80D08F8C  4B 36 ED 50 */	b __dt__11dBgS_LinChkFv
/* 80D08F90  38 60 00 01 */	li r3, 1
/* 80D08F94  48 00 00 14 */	b lbl_80D08FA8
lbl_80D08F98:
/* 80D08F98  38 61 00 38 */	addi r3, r1, 0x38
/* 80D08F9C  38 80 FF FF */	li r4, -1
/* 80D08FA0  4B 36 ED 3C */	b __dt__11dBgS_LinChkFv
/* 80D08FA4  38 60 00 00 */	li r3, 0
lbl_80D08FA8:
/* 80D08FA8  39 61 00 C0 */	addi r11, r1, 0xc0
/* 80D08FAC  4B 65 92 7C */	b _restgpr_29
/* 80D08FB0  80 01 00 C4 */	lwz r0, 0xc4(r1)
/* 80D08FB4  7C 08 03 A6 */	mtlr r0
/* 80D08FB8  38 21 00 C0 */	addi r1, r1, 0xc0
/* 80D08FBC  4E 80 00 20 */	blr 
