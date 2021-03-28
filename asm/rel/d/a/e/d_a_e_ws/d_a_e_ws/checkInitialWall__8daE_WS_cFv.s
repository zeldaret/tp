lbl_807E5CD8:
/* 807E5CD8  94 21 FF 30 */	stwu r1, -0xd0(r1)
/* 807E5CDC  7C 08 02 A6 */	mflr r0
/* 807E5CE0  90 01 00 D4 */	stw r0, 0xd4(r1)
/* 807E5CE4  39 61 00 D0 */	addi r11, r1, 0xd0
/* 807E5CE8  4B B7 C4 EC */	b _savegpr_27
/* 807E5CEC  7C 7F 1B 78 */	mr r31, r3
/* 807E5CF0  3C 60 80 7E */	lis r3, lit_3802@ha
/* 807E5CF4  3B A3 73 00 */	addi r29, r3, lit_3802@l
/* 807E5CF8  C0 1D 00 04 */	lfs f0, 4(r29)
/* 807E5CFC  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 807E5D00  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 807E5D04  C0 1D 00 38 */	lfs f0, 0x38(r29)
/* 807E5D08  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 807E5D0C  38 61 00 44 */	addi r3, r1, 0x44
/* 807E5D10  4B 89 1F 58 */	b __ct__11dBgS_LinChkFv
/* 807E5D14  3B 60 00 00 */	li r27, 0
/* 807E5D18  3B C0 00 00 */	li r30, 0
/* 807E5D1C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 807E5D20  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 807E5D24  3B 83 0F 38 */	addi r28, r3, 0xf38
lbl_807E5D28:
/* 807E5D28  38 61 00 24 */	addi r3, r1, 0x24
/* 807E5D2C  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 807E5D30  A8 1F 04 E6 */	lha r0, 0x4e6(r31)
/* 807E5D34  7C 00 F2 14 */	add r0, r0, r30
/* 807E5D38  7C 05 07 34 */	extsh r5, r0
/* 807E5D3C  38 C1 00 18 */	addi r6, r1, 0x18
/* 807E5D40  4B A8 B0 80 */	b cLib_offsetPos__FP4cXyzPC4cXyzsPC4cXyz
/* 807E5D44  38 61 00 44 */	addi r3, r1, 0x44
/* 807E5D48  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 807E5D4C  38 A1 00 24 */	addi r5, r1, 0x24
/* 807E5D50  38 C0 00 00 */	li r6, 0
/* 807E5D54  4B 89 20 10 */	b Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 807E5D58  7F 83 E3 78 */	mr r3, r28
/* 807E5D5C  38 81 00 44 */	addi r4, r1, 0x44
/* 807E5D60  4B 88 E6 54 */	b LineCross__4cBgSFP11cBgS_LinChk
/* 807E5D64  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 807E5D68  41 82 01 D4 */	beq lbl_807E5F3C
/* 807E5D6C  88 1F 06 91 */	lbz r0, 0x691(r31)
/* 807E5D70  28 00 00 00 */	cmplwi r0, 0
/* 807E5D74  40 82 00 40 */	bne lbl_807E5DB4
/* 807E5D78  7F 83 E3 78 */	mr r3, r28
/* 807E5D7C  3B C1 00 58 */	addi r30, r1, 0x58
/* 807E5D80  7F C4 F3 78 */	mr r4, r30
/* 807E5D84  4B 88 F0 7C */	b GetWallCode__4dBgSFRC13cBgS_PolyInfo
/* 807E5D88  2C 03 00 01 */	cmpwi r3, 1
/* 807E5D8C  41 82 00 28 */	beq lbl_807E5DB4
/* 807E5D90  7F 83 E3 78 */	mr r3, r28
/* 807E5D94  7F C4 F3 78 */	mr r4, r30
/* 807E5D98  4B 88 F0 68 */	b GetWallCode__4dBgSFRC13cBgS_PolyInfo
/* 807E5D9C  2C 03 00 04 */	cmpwi r3, 4
/* 807E5DA0  41 82 00 14 */	beq lbl_807E5DB4
/* 807E5DA4  38 61 00 44 */	addi r3, r1, 0x44
/* 807E5DA8  38 80 FF FF */	li r4, -1
/* 807E5DAC  4B 89 1F 30 */	b __dt__11dBgS_LinChkFv
/* 807E5DB0  48 00 01 A8 */	b lbl_807E5F58
lbl_807E5DB4:
/* 807E5DB4  C0 01 00 74 */	lfs f0, 0x74(r1)
/* 807E5DB8  D0 1F 04 D0 */	stfs f0, 0x4d0(r31)
/* 807E5DBC  C0 01 00 78 */	lfs f0, 0x78(r1)
/* 807E5DC0  D0 1F 04 D4 */	stfs f0, 0x4d4(r31)
/* 807E5DC4  C0 01 00 7C */	lfs f0, 0x7c(r1)
/* 807E5DC8  D0 1F 04 D8 */	stfs f0, 0x4d8(r31)
/* 807E5DCC  3C 60 80 7E */	lis r3, __vt__8cM3dGPla@ha
/* 807E5DD0  38 03 75 94 */	addi r0, r3, __vt__8cM3dGPla@l
/* 807E5DD4  90 01 00 40 */	stw r0, 0x40(r1)
/* 807E5DD8  7F 83 E3 78 */	mr r3, r28
/* 807E5DDC  38 81 00 58 */	addi r4, r1, 0x58
/* 807E5DE0  38 A1 00 30 */	addi r5, r1, 0x30
/* 807E5DE4  4B 88 E9 60 */	b GetTriPla__4cBgSCFRC13cBgS_PolyInfoP8cM3dGPla
/* 807E5DE8  C0 21 00 30 */	lfs f1, 0x30(r1)
/* 807E5DEC  C0 41 00 38 */	lfs f2, 0x38(r1)
/* 807E5DF0  4B A8 18 84 */	b cM_atan2s__Fff
/* 807E5DF4  B0 7F 06 6A */	sth r3, 0x66a(r31)
/* 807E5DF8  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 807E5DFC  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 807E5E00  C0 1D 00 04 */	lfs f0, 4(r29)
/* 807E5E04  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 807E5E08  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 807E5E0C  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 807E5E10  38 61 00 0C */	addi r3, r1, 0xc
/* 807E5E14  4B B6 13 24 */	b PSVECSquareMag
/* 807E5E18  C0 1D 00 04 */	lfs f0, 4(r29)
/* 807E5E1C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807E5E20  40 81 00 58 */	ble lbl_807E5E78
/* 807E5E24  FC 00 08 34 */	frsqrte f0, f1
/* 807E5E28  C8 9D 00 10 */	lfd f4, 0x10(r29)
/* 807E5E2C  FC 44 00 32 */	fmul f2, f4, f0
/* 807E5E30  C8 7D 00 18 */	lfd f3, 0x18(r29)
/* 807E5E34  FC 00 00 32 */	fmul f0, f0, f0
/* 807E5E38  FC 01 00 32 */	fmul f0, f1, f0
/* 807E5E3C  FC 03 00 28 */	fsub f0, f3, f0
/* 807E5E40  FC 02 00 32 */	fmul f0, f2, f0
/* 807E5E44  FC 44 00 32 */	fmul f2, f4, f0
/* 807E5E48  FC 00 00 32 */	fmul f0, f0, f0
/* 807E5E4C  FC 01 00 32 */	fmul f0, f1, f0
/* 807E5E50  FC 03 00 28 */	fsub f0, f3, f0
/* 807E5E54  FC 02 00 32 */	fmul f0, f2, f0
/* 807E5E58  FC 44 00 32 */	fmul f2, f4, f0
/* 807E5E5C  FC 00 00 32 */	fmul f0, f0, f0
/* 807E5E60  FC 01 00 32 */	fmul f0, f1, f0
/* 807E5E64  FC 03 00 28 */	fsub f0, f3, f0
/* 807E5E68  FC 02 00 32 */	fmul f0, f2, f0
/* 807E5E6C  FC 21 00 32 */	fmul f1, f1, f0
/* 807E5E70  FC 20 08 18 */	frsp f1, f1
/* 807E5E74  48 00 00 88 */	b lbl_807E5EFC
lbl_807E5E78:
/* 807E5E78  C8 1D 00 20 */	lfd f0, 0x20(r29)
/* 807E5E7C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807E5E80  40 80 00 10 */	bge lbl_807E5E90
/* 807E5E84  3C 60 80 45 */	lis r3, __float_nan@ha
/* 807E5E88  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 807E5E8C  48 00 00 70 */	b lbl_807E5EFC
lbl_807E5E90:
/* 807E5E90  D0 21 00 08 */	stfs f1, 8(r1)
/* 807E5E94  80 81 00 08 */	lwz r4, 8(r1)
/* 807E5E98  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 807E5E9C  3C 00 7F 80 */	lis r0, 0x7f80
/* 807E5EA0  7C 03 00 00 */	cmpw r3, r0
/* 807E5EA4  41 82 00 14 */	beq lbl_807E5EB8
/* 807E5EA8  40 80 00 40 */	bge lbl_807E5EE8
/* 807E5EAC  2C 03 00 00 */	cmpwi r3, 0
/* 807E5EB0  41 82 00 20 */	beq lbl_807E5ED0
/* 807E5EB4  48 00 00 34 */	b lbl_807E5EE8
lbl_807E5EB8:
/* 807E5EB8  54 80 02 7F */	clrlwi. r0, r4, 9
/* 807E5EBC  41 82 00 0C */	beq lbl_807E5EC8
/* 807E5EC0  38 00 00 01 */	li r0, 1
/* 807E5EC4  48 00 00 28 */	b lbl_807E5EEC
lbl_807E5EC8:
/* 807E5EC8  38 00 00 02 */	li r0, 2
/* 807E5ECC  48 00 00 20 */	b lbl_807E5EEC
lbl_807E5ED0:
/* 807E5ED0  54 80 02 7F */	clrlwi. r0, r4, 9
/* 807E5ED4  41 82 00 0C */	beq lbl_807E5EE0
/* 807E5ED8  38 00 00 05 */	li r0, 5
/* 807E5EDC  48 00 00 10 */	b lbl_807E5EEC
lbl_807E5EE0:
/* 807E5EE0  38 00 00 03 */	li r0, 3
/* 807E5EE4  48 00 00 08 */	b lbl_807E5EEC
lbl_807E5EE8:
/* 807E5EE8  38 00 00 04 */	li r0, 4
lbl_807E5EEC:
/* 807E5EEC  2C 00 00 01 */	cmpwi r0, 1
/* 807E5EF0  40 82 00 0C */	bne lbl_807E5EFC
/* 807E5EF4  3C 60 80 45 */	lis r3, __float_nan@ha
/* 807E5EF8  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_807E5EFC:
/* 807E5EFC  C0 41 00 34 */	lfs f2, 0x34(r1)
/* 807E5F00  4B A8 17 74 */	b cM_atan2s__Fff
/* 807E5F04  B0 7F 06 68 */	sth r3, 0x668(r31)
/* 807E5F08  A8 1F 06 68 */	lha r0, 0x668(r31)
/* 807E5F0C  B0 1F 06 6E */	sth r0, 0x66e(r31)
/* 807E5F10  A8 1F 06 6A */	lha r0, 0x66a(r31)
/* 807E5F14  B0 1F 06 70 */	sth r0, 0x670(r31)
/* 807E5F18  A8 1F 06 6C */	lha r0, 0x66c(r31)
/* 807E5F1C  B0 1F 06 72 */	sth r0, 0x672(r31)
/* 807E5F20  3C 60 80 7E */	lis r3, __vt__8cM3dGPla@ha
/* 807E5F24  38 03 75 94 */	addi r0, r3, __vt__8cM3dGPla@l
/* 807E5F28  90 01 00 40 */	stw r0, 0x40(r1)
/* 807E5F2C  38 61 00 44 */	addi r3, r1, 0x44
/* 807E5F30  38 80 FF FF */	li r4, -1
/* 807E5F34  4B 89 1D A8 */	b __dt__11dBgS_LinChkFv
/* 807E5F38  48 00 00 20 */	b lbl_807E5F58
lbl_807E5F3C:
/* 807E5F3C  3B 7B 00 01 */	addi r27, r27, 1
/* 807E5F40  2C 1B 00 04 */	cmpwi r27, 4
/* 807E5F44  3B DE 40 00 */	addi r30, r30, 0x4000
/* 807E5F48  41 80 FD E0 */	blt lbl_807E5D28
/* 807E5F4C  38 61 00 44 */	addi r3, r1, 0x44
/* 807E5F50  38 80 FF FF */	li r4, -1
/* 807E5F54  4B 89 1D 88 */	b __dt__11dBgS_LinChkFv
lbl_807E5F58:
/* 807E5F58  39 61 00 D0 */	addi r11, r1, 0xd0
/* 807E5F5C  4B B7 C2 C4 */	b _restgpr_27
/* 807E5F60  80 01 00 D4 */	lwz r0, 0xd4(r1)
/* 807E5F64  7C 08 03 A6 */	mtlr r0
/* 807E5F68  38 21 00 D0 */	addi r1, r1, 0xd0
/* 807E5F6C  4E 80 00 20 */	blr 
