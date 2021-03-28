lbl_80A54A14:
/* 80A54A14  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80A54A18  7C 08 02 A6 */	mflr r0
/* 80A54A1C  90 01 00 54 */	stw r0, 0x54(r1)
/* 80A54A20  39 61 00 50 */	addi r11, r1, 0x50
/* 80A54A24  4B 90 D7 B0 */	b _savegpr_27
/* 80A54A28  7C 7B 1B 78 */	mr r27, r3
/* 80A54A2C  3C 80 80 A6 */	lis r4, lit_1109@ha
/* 80A54A30  3B C4 FE 48 */	addi r30, r4, lit_1109@l
/* 80A54A34  3C 80 80 A6 */	lis r4, lit_4030@ha
/* 80A54A38  3B E4 DE FC */	addi r31, r4, lit_4030@l
/* 80A54A3C  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80A54A40  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 80A54A44  83 A4 5D AC */	lwz r29, 0x5dac(r4)
/* 80A54A48  3B 80 00 01 */	li r28, 1
/* 80A54A4C  80 83 05 CC */	lwz r4, 0x5cc(r3)
/* 80A54A50  C0 04 00 1C */	lfs f0, 0x1c(r4)
/* 80A54A54  FC 00 00 1E */	fctiwz f0, f0
/* 80A54A58  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 80A54A5C  80 81 00 2C */	lwz r4, 0x2c(r1)
/* 80A54A60  A8 03 05 EA */	lha r0, 0x5ea(r3)
/* 80A54A64  2C 00 00 0A */	cmpwi r0, 0xa
/* 80A54A68  41 82 01 E0 */	beq lbl_80A54C48
/* 80A54A6C  40 80 00 28 */	bge lbl_80A54A94
/* 80A54A70  2C 00 00 01 */	cmpwi r0, 1
/* 80A54A74  41 82 00 70 */	beq lbl_80A54AE4
/* 80A54A78  40 80 00 10 */	bge lbl_80A54A88
/* 80A54A7C  2C 00 00 00 */	cmpwi r0, 0
/* 80A54A80  40 80 00 38 */	bge lbl_80A54AB8
/* 80A54A84  48 00 05 D8 */	b lbl_80A5505C
lbl_80A54A88:
/* 80A54A88  2C 00 00 05 */	cmpwi r0, 5
/* 80A54A8C  41 82 01 40 */	beq lbl_80A54BCC
/* 80A54A90  48 00 05 CC */	b lbl_80A5505C
lbl_80A54A94:
/* 80A54A94  2C 00 00 29 */	cmpwi r0, 0x29
/* 80A54A98  41 82 04 B8 */	beq lbl_80A54F50
/* 80A54A9C  40 80 00 10 */	bge lbl_80A54AAC
/* 80A54AA0  2C 00 00 28 */	cmpwi r0, 0x28
/* 80A54AA4  40 80 04 6C */	bge lbl_80A54F10
/* 80A54AA8  48 00 05 B4 */	b lbl_80A5505C
lbl_80A54AAC:
/* 80A54AAC  2C 00 00 2B */	cmpwi r0, 0x2b
/* 80A54AB0  40 80 05 AC */	bge lbl_80A5505C
/* 80A54AB4  48 00 05 50 */	b lbl_80A55004
lbl_80A54AB8:
/* 80A54AB8  38 80 00 1A */	li r4, 0x1a
/* 80A54ABC  C0 3F 00 90 */	lfs f1, 0x90(r31)
/* 80A54AC0  38 A0 00 02 */	li r5, 2
/* 80A54AC4  C0 5F 00 28 */	lfs f2, 0x28(r31)
/* 80A54AC8  4B FF 46 DD */	bl anm_init__FP12npc_ks_classifUcf
/* 80A54ACC  38 00 00 01 */	li r0, 1
/* 80A54AD0  B0 1B 05 EA */	sth r0, 0x5ea(r27)
/* 80A54AD4  38 00 00 00 */	li r0, 0
/* 80A54AD8  90 1B 09 04 */	stw r0, 0x904(r27)
/* 80A54ADC  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 80A54AE0  D0 1B 05 2C */	stfs f0, 0x52c(r27)
lbl_80A54AE4:
/* 80A54AE4  C0 3B 05 C4 */	lfs f1, 0x5c4(r27)
/* 80A54AE8  C0 1F 03 FC */	lfs f0, 0x3fc(r31)
/* 80A54AEC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A54AF0  41 81 00 20 */	bgt lbl_80A54B10
/* 80A54AF4  80 1B 09 04 */	lwz r0, 0x904(r27)
/* 80A54AF8  1C A0 00 34 */	mulli r5, r0, 0x34
/* 80A54AFC  3C 60 80 A6 */	lis r3, guide_path_00@ha
/* 80A54B00  38 83 EA 24 */	addi r4, r3, guide_path_00@l
/* 80A54B04  7C 04 28 2E */	lwzx r0, r4, r5
/* 80A54B08  2C 00 00 00 */	cmpwi r0, 0
/* 80A54B0C  40 80 00 64 */	bge lbl_80A54B70
lbl_80A54B10:
/* 80A54B10  80 1E 00 5C */	lwz r0, 0x5c(r30)
/* 80A54B14  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80A54B18  41 82 00 20 */	beq lbl_80A54B38
/* 80A54B1C  7F 63 DB 78 */	mr r3, r27
/* 80A54B20  38 80 00 08 */	li r4, 8
/* 80A54B24  C0 3F 00 6C */	lfs f1, 0x6c(r31)
/* 80A54B28  38 A0 00 02 */	li r5, 2
/* 80A54B2C  C0 5F 00 28 */	lfs f2, 0x28(r31)
/* 80A54B30  4B FF 46 75 */	bl anm_init__FP12npc_ks_classifUcf
/* 80A54B34  48 00 00 1C */	b lbl_80A54B50
lbl_80A54B38:
/* 80A54B38  7F 63 DB 78 */	mr r3, r27
/* 80A54B3C  38 80 00 07 */	li r4, 7
/* 80A54B40  C0 3F 00 6C */	lfs f1, 0x6c(r31)
/* 80A54B44  38 A0 00 02 */	li r5, 2
/* 80A54B48  C0 5F 00 28 */	lfs f2, 0x28(r31)
/* 80A54B4C  4B FF 46 59 */	bl anm_init__FP12npc_ks_classifUcf
lbl_80A54B50:
/* 80A54B50  80 7E 00 5C */	lwz r3, 0x5c(r30)
/* 80A54B54  38 03 00 01 */	addi r0, r3, 1
/* 80A54B58  90 1E 00 5C */	stw r0, 0x5c(r30)
/* 80A54B5C  38 00 00 0A */	li r0, 0xa
/* 80A54B60  B0 1B 05 EA */	sth r0, 0x5ea(r27)
/* 80A54B64  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 80A54B68  D0 1B 05 2C */	stfs f0, 0x52c(r27)
/* 80A54B6C  48 00 04 F0 */	b lbl_80A5505C
lbl_80A54B70:
/* 80A54B70  7C 64 2A 14 */	add r3, r4, r5
/* 80A54B74  C0 03 00 04 */	lfs f0, 4(r3)
/* 80A54B78  D0 1B 08 F0 */	stfs f0, 0x8f0(r27)
/* 80A54B7C  80 1B 09 04 */	lwz r0, 0x904(r27)
/* 80A54B80  1C 00 00 34 */	mulli r0, r0, 0x34
/* 80A54B84  7C 64 02 14 */	add r3, r4, r0
/* 80A54B88  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 80A54B8C  D0 1B 08 F8 */	stfs f0, 0x8f8(r27)
/* 80A54B90  38 00 00 05 */	li r0, 5
/* 80A54B94  B0 1B 05 EA */	sth r0, 0x5ea(r27)
/* 80A54B98  38 7E 00 70 */	addi r3, r30, 0x70
/* 80A54B9C  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 80A54BA0  D0 1B 05 2C */	stfs f0, 0x52c(r27)
/* 80A54BA4  80 1B 05 D0 */	lwz r0, 0x5d0(r27)
/* 80A54BA8  2C 00 00 1A */	cmpwi r0, 0x1a
/* 80A54BAC  41 82 04 B0 */	beq lbl_80A5505C
/* 80A54BB0  7F 63 DB 78 */	mr r3, r27
/* 80A54BB4  38 80 00 1A */	li r4, 0x1a
/* 80A54BB8  C0 3F 00 90 */	lfs f1, 0x90(r31)
/* 80A54BBC  38 A0 00 02 */	li r5, 2
/* 80A54BC0  C0 5F 00 28 */	lfs f2, 0x28(r31)
/* 80A54BC4  4B FF 45 E1 */	bl anm_init__FP12npc_ks_classifUcf
/* 80A54BC8  48 00 04 94 */	b lbl_80A5505C
lbl_80A54BCC:
/* 80A54BCC  C0 3B 08 F0 */	lfs f1, 0x8f0(r27)
/* 80A54BD0  C0 1B 04 D0 */	lfs f0, 0x4d0(r27)
/* 80A54BD4  EC 21 00 28 */	fsubs f1, f1, f0
/* 80A54BD8  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 80A54BDC  C0 5B 08 F8 */	lfs f2, 0x8f8(r27)
/* 80A54BE0  C0 1B 04 D8 */	lfs f0, 0x4d8(r27)
/* 80A54BE4  EC 42 00 28 */	fsubs f2, f2, f0
/* 80A54BE8  D0 41 00 20 */	stfs f2, 0x20(r1)
/* 80A54BEC  4B 81 2A 88 */	b cM_atan2s__Fff
/* 80A54BF0  B0 7B 08 FE */	sth r3, 0x8fe(r27)
/* 80A54BF4  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 80A54BF8  EC 20 00 32 */	fmuls f1, f0, f0
/* 80A54BFC  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 80A54C00  EC 00 00 32 */	fmuls f0, f0, f0
/* 80A54C04  EC 41 00 2A */	fadds f2, f1, f0
/* 80A54C08  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 80A54C0C  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80A54C10  40 81 00 0C */	ble lbl_80A54C1C
/* 80A54C14  FC 00 10 34 */	frsqrte f0, f2
/* 80A54C18  EC 40 00 B2 */	fmuls f2, f0, f2
lbl_80A54C1C:
/* 80A54C1C  C0 3F 00 AC */	lfs f1, 0xac(r31)
/* 80A54C20  C0 1B 05 2C */	lfs f0, 0x52c(r27)
/* 80A54C24  EC 01 00 32 */	fmuls f0, f1, f0
/* 80A54C28  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80A54C2C  40 80 04 30 */	bge lbl_80A5505C
/* 80A54C30  80 7B 09 04 */	lwz r3, 0x904(r27)
/* 80A54C34  38 03 00 01 */	addi r0, r3, 1
/* 80A54C38  90 1B 09 04 */	stw r0, 0x904(r27)
/* 80A54C3C  38 00 00 01 */	li r0, 1
/* 80A54C40  B0 1B 05 EA */	sth r0, 0x5ea(r27)
/* 80A54C44  48 00 04 18 */	b lbl_80A5505C
lbl_80A54C48:
/* 80A54C48  80 1B 05 D0 */	lwz r0, 0x5d0(r27)
/* 80A54C4C  2C 00 00 08 */	cmpwi r0, 8
/* 80A54C50  40 82 00 18 */	bne lbl_80A54C68
/* 80A54C54  A8 7B 05 C8 */	lha r3, 0x5c8(r27)
/* 80A54C58  3C 63 00 01 */	addis r3, r3, 1
/* 80A54C5C  38 03 80 00 */	addi r0, r3, -32768
/* 80A54C60  B0 1B 08 FE */	sth r0, 0x8fe(r27)
/* 80A54C64  48 00 00 0C */	b lbl_80A54C70
lbl_80A54C68:
/* 80A54C68  A8 1B 05 C8 */	lha r0, 0x5c8(r27)
/* 80A54C6C  B0 1B 08 FE */	sth r0, 0x8fe(r27)
lbl_80A54C70:
/* 80A54C70  C0 3B 05 C4 */	lfs f1, 0x5c4(r27)
/* 80A54C74  C0 1F 01 08 */	lfs f0, 0x108(r31)
/* 80A54C78  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A54C7C  40 80 00 2C */	bge lbl_80A54CA8
/* 80A54C80  80 1B 09 04 */	lwz r0, 0x904(r27)
/* 80A54C84  1C 00 00 34 */	mulli r0, r0, 0x34
/* 80A54C88  3C 60 80 A6 */	lis r3, guide_path_00@ha
/* 80A54C8C  38 63 EA 24 */	addi r3, r3, guide_path_00@l
/* 80A54C90  7C 03 00 2E */	lwzx r0, r3, r0
/* 80A54C94  2C 00 00 00 */	cmpwi r0, 0
/* 80A54C98  41 80 00 10 */	blt lbl_80A54CA8
/* 80A54C9C  38 00 00 01 */	li r0, 1
/* 80A54CA0  B0 1B 05 EA */	sth r0, 0x5ea(r27)
/* 80A54CA4  48 00 03 B8 */	b lbl_80A5505C
lbl_80A54CA8:
/* 80A54CA8  C0 1F 01 10 */	lfs f0, 0x110(r31)
/* 80A54CAC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A54CB0  40 80 00 28 */	bge lbl_80A54CD8
/* 80A54CB4  80 1B 05 D0 */	lwz r0, 0x5d0(r27)
/* 80A54CB8  2C 00 00 33 */	cmpwi r0, 0x33
/* 80A54CBC  41 82 00 1C */	beq lbl_80A54CD8
/* 80A54CC0  7F 63 DB 78 */	mr r3, r27
/* 80A54CC4  38 80 00 33 */	li r4, 0x33
/* 80A54CC8  C0 3F 00 6C */	lfs f1, 0x6c(r31)
/* 80A54CCC  38 A0 00 02 */	li r5, 2
/* 80A54CD0  C0 5F 00 28 */	lfs f2, 0x28(r31)
/* 80A54CD4  4B FF 44 D1 */	bl anm_init__FP12npc_ks_classifUcf
lbl_80A54CD8:
/* 80A54CD8  80 1B 05 D0 */	lwz r0, 0x5d0(r27)
/* 80A54CDC  2C 00 00 33 */	cmpwi r0, 0x33
/* 80A54CE0  40 82 00 0C */	bne lbl_80A54CEC
/* 80A54CE4  38 00 00 01 */	li r0, 1
/* 80A54CE8  98 1B 05 FC */	stb r0, 0x5fc(r27)
lbl_80A54CEC:
/* 80A54CEC  80 1B 09 04 */	lwz r0, 0x904(r27)
/* 80A54CF0  1C 00 00 34 */	mulli r0, r0, 0x34
/* 80A54CF4  3C 60 80 A6 */	lis r3, guide_path_00@ha
/* 80A54CF8  38 63 EA 24 */	addi r3, r3, guide_path_00@l
/* 80A54CFC  7C 03 00 2E */	lwzx r0, r3, r0
/* 80A54D00  2C 00 00 00 */	cmpwi r0, 0
/* 80A54D04  40 80 03 58 */	bge lbl_80A5505C
/* 80A54D08  7F 63 DB 78 */	mr r3, r27
/* 80A54D0C  4B FF DB 01 */	bl saru_count_check__FP12npc_ks_class
/* 80A54D10  2C 03 00 00 */	cmpwi r3, 0
/* 80A54D14  41 82 03 48 */	beq lbl_80A5505C
/* 80A54D18  C0 3D 04 D0 */	lfs f1, 0x4d0(r29)
/* 80A54D1C  80 7B 09 34 */	lwz r3, 0x934(r27)
/* 80A54D20  C0 03 09 04 */	lfs f0, 0x904(r3)
/* 80A54D24  EC 01 00 28 */	fsubs f0, f1, f0
/* 80A54D28  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80A54D2C  C0 5D 04 D4 */	lfs f2, 0x4d4(r29)
/* 80A54D30  C0 23 09 08 */	lfs f1, 0x908(r3)
/* 80A54D34  C0 1F 03 F0 */	lfs f0, 0x3f0(r31)
/* 80A54D38  EC 01 00 28 */	fsubs f0, f1, f0
/* 80A54D3C  EC 02 00 28 */	fsubs f0, f2, f0
/* 80A54D40  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80A54D44  C0 3D 04 D8 */	lfs f1, 0x4d8(r29)
/* 80A54D48  C0 03 09 0C */	lfs f0, 0x90c(r3)
/* 80A54D4C  EC 01 00 28 */	fsubs f0, f1, f0
/* 80A54D50  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80A54D54  38 61 00 18 */	addi r3, r1, 0x18
/* 80A54D58  4B 8F 23 E0 */	b PSVECSquareMag
/* 80A54D5C  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 80A54D60  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A54D64  40 81 00 58 */	ble lbl_80A54DBC
/* 80A54D68  FC 00 08 34 */	frsqrte f0, f1
/* 80A54D6C  C8 9F 00 50 */	lfd f4, 0x50(r31)
/* 80A54D70  FC 44 00 32 */	fmul f2, f4, f0
/* 80A54D74  C8 7F 00 58 */	lfd f3, 0x58(r31)
/* 80A54D78  FC 00 00 32 */	fmul f0, f0, f0
/* 80A54D7C  FC 01 00 32 */	fmul f0, f1, f0
/* 80A54D80  FC 03 00 28 */	fsub f0, f3, f0
/* 80A54D84  FC 02 00 32 */	fmul f0, f2, f0
/* 80A54D88  FC 44 00 32 */	fmul f2, f4, f0
/* 80A54D8C  FC 00 00 32 */	fmul f0, f0, f0
/* 80A54D90  FC 01 00 32 */	fmul f0, f1, f0
/* 80A54D94  FC 03 00 28 */	fsub f0, f3, f0
/* 80A54D98  FC 02 00 32 */	fmul f0, f2, f0
/* 80A54D9C  FC 44 00 32 */	fmul f2, f4, f0
/* 80A54DA0  FC 00 00 32 */	fmul f0, f0, f0
/* 80A54DA4  FC 01 00 32 */	fmul f0, f1, f0
/* 80A54DA8  FC 03 00 28 */	fsub f0, f3, f0
/* 80A54DAC  FC 02 00 32 */	fmul f0, f2, f0
/* 80A54DB0  FC 21 00 32 */	fmul f1, f1, f0
/* 80A54DB4  FC 20 08 18 */	frsp f1, f1
/* 80A54DB8  48 00 00 88 */	b lbl_80A54E40
lbl_80A54DBC:
/* 80A54DBC  C8 1F 00 60 */	lfd f0, 0x60(r31)
/* 80A54DC0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A54DC4  40 80 00 10 */	bge lbl_80A54DD4
/* 80A54DC8  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80A54DCC  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 80A54DD0  48 00 00 70 */	b lbl_80A54E40
lbl_80A54DD4:
/* 80A54DD4  D0 21 00 08 */	stfs f1, 8(r1)
/* 80A54DD8  80 81 00 08 */	lwz r4, 8(r1)
/* 80A54DDC  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80A54DE0  3C 00 7F 80 */	lis r0, 0x7f80
/* 80A54DE4  7C 03 00 00 */	cmpw r3, r0
/* 80A54DE8  41 82 00 14 */	beq lbl_80A54DFC
/* 80A54DEC  40 80 00 40 */	bge lbl_80A54E2C
/* 80A54DF0  2C 03 00 00 */	cmpwi r3, 0
/* 80A54DF4  41 82 00 20 */	beq lbl_80A54E14
/* 80A54DF8  48 00 00 34 */	b lbl_80A54E2C
lbl_80A54DFC:
/* 80A54DFC  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80A54E00  41 82 00 0C */	beq lbl_80A54E0C
/* 80A54E04  38 00 00 01 */	li r0, 1
/* 80A54E08  48 00 00 28 */	b lbl_80A54E30
lbl_80A54E0C:
/* 80A54E0C  38 00 00 02 */	li r0, 2
/* 80A54E10  48 00 00 20 */	b lbl_80A54E30
lbl_80A54E14:
/* 80A54E14  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80A54E18  41 82 00 0C */	beq lbl_80A54E24
/* 80A54E1C  38 00 00 05 */	li r0, 5
/* 80A54E20  48 00 00 10 */	b lbl_80A54E30
lbl_80A54E24:
/* 80A54E24  38 00 00 03 */	li r0, 3
/* 80A54E28  48 00 00 08 */	b lbl_80A54E30
lbl_80A54E2C:
/* 80A54E2C  38 00 00 04 */	li r0, 4
lbl_80A54E30:
/* 80A54E30  2C 00 00 01 */	cmpwi r0, 1
/* 80A54E34  40 82 00 0C */	bne lbl_80A54E40
/* 80A54E38  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80A54E3C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_80A54E40:
/* 80A54E40  C0 1F 00 14 */	lfs f0, 0x14(r31)
/* 80A54E44  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A54E48  40 80 02 14 */	bge lbl_80A5505C
/* 80A54E4C  38 00 00 01 */	li r0, 1
/* 80A54E50  98 1B 0B D9 */	stb r0, 0xbd9(r27)
/* 80A54E54  38 00 00 14 */	li r0, 0x14
/* 80A54E58  B0 1B 05 E8 */	sth r0, 0x5e8(r27)
/* 80A54E5C  38 00 00 00 */	li r0, 0
/* 80A54E60  B0 1B 05 EA */	sth r0, 0x5ea(r27)
/* 80A54E64  98 1B 0A EC */	stb r0, 0xaec(r27)
/* 80A54E68  80 7B 09 34 */	lwz r3, 0x934(r27)
/* 80A54E6C  C0 03 09 04 */	lfs f0, 0x904(r3)
/* 80A54E70  D0 1B 0B C8 */	stfs f0, 0xbc8(r27)
/* 80A54E74  C0 03 09 08 */	lfs f0, 0x908(r3)
/* 80A54E78  D0 1B 0B CC */	stfs f0, 0xbcc(r27)
/* 80A54E7C  C0 03 09 0C */	lfs f0, 0x90c(r3)
/* 80A54E80  D0 1B 0B D0 */	stfs f0, 0xbd0(r27)
/* 80A54E84  38 61 00 0C */	addi r3, r1, 0xc
/* 80A54E88  80 9B 09 34 */	lwz r4, 0x934(r27)
/* 80A54E8C  38 84 09 10 */	addi r4, r4, 0x910
/* 80A54E90  38 BB 0B C8 */	addi r5, r27, 0xbc8
/* 80A54E94  4B 81 1C A0 */	b __mi__4cXyzCFRC3Vec
/* 80A54E98  C0 21 00 0C */	lfs f1, 0xc(r1)
/* 80A54E9C  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 80A54EA0  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 80A54EA4  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80A54EA8  C0 41 00 14 */	lfs f2, 0x14(r1)
/* 80A54EAC  D0 41 00 20 */	stfs f2, 0x20(r1)
/* 80A54EB0  4B 81 27 C4 */	b cM_atan2s__Fff
/* 80A54EB4  80 9E 00 58 */	lwz r4, 0x58(r30)
/* 80A54EB8  B0 64 0B D4 */	sth r3, 0xbd4(r4)
/* 80A54EBC  38 00 00 0A */	li r0, 0xa
/* 80A54EC0  80 7E 00 58 */	lwz r3, 0x58(r30)
/* 80A54EC4  B0 03 0B 42 */	sth r0, 0xb42(r3)
/* 80A54EC8  80 7B 09 34 */	lwz r3, 0x934(r27)
/* 80A54ECC  88 03 05 70 */	lbz r0, 0x570(r3)
/* 80A54ED0  80 7E 00 58 */	lwz r3, 0x58(r30)
/* 80A54ED4  98 03 0B 40 */	stb r0, 0xb40(r3)
/* 80A54ED8  88 1B 05 B6 */	lbz r0, 0x5b6(r27)
/* 80A54EDC  28 00 00 00 */	cmplwi r0, 0
/* 80A54EE0  41 82 01 7C */	beq lbl_80A5505C
/* 80A54EE4  80 1B 09 34 */	lwz r0, 0x934(r27)
/* 80A54EE8  80 7E 00 58 */	lwz r3, 0x58(r30)
/* 80A54EEC  90 03 09 34 */	stw r0, 0x934(r3)
/* 80A54EF0  80 7E 00 58 */	lwz r3, 0x58(r30)
/* 80A54EF4  C0 1B 0B C8 */	lfs f0, 0xbc8(r27)
/* 80A54EF8  D0 03 0B C8 */	stfs f0, 0xbc8(r3)
/* 80A54EFC  C0 1B 0B CC */	lfs f0, 0xbcc(r27)
/* 80A54F00  D0 03 0B CC */	stfs f0, 0xbcc(r3)
/* 80A54F04  C0 1B 0B D0 */	lfs f0, 0xbd0(r27)
/* 80A54F08  D0 03 0B D0 */	stfs f0, 0xbd0(r3)
/* 80A54F0C  48 00 01 50 */	b lbl_80A5505C
lbl_80A54F10:
/* 80A54F10  38 80 00 27 */	li r4, 0x27
/* 80A54F14  C0 3F 00 6C */	lfs f1, 0x6c(r31)
/* 80A54F18  38 A0 00 02 */	li r5, 2
/* 80A54F1C  C0 5F 00 28 */	lfs f2, 0x28(r31)
/* 80A54F20  4B FF 42 85 */	bl anm_init__FP12npc_ks_classifUcf
/* 80A54F24  38 00 00 29 */	li r0, 0x29
/* 80A54F28  B0 1B 05 EA */	sth r0, 0x5ea(r27)
/* 80A54F2C  C0 3F 00 D4 */	lfs f1, 0xd4(r31)
/* 80A54F30  4B 81 2A 24 */	b cM_rndF__Ff
/* 80A54F34  C0 1F 00 20 */	lfs f0, 0x20(r31)
/* 80A54F38  EC 00 08 2A */	fadds f0, f0, f1
/* 80A54F3C  FC 00 00 1E */	fctiwz f0, f0
/* 80A54F40  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 80A54F44  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 80A54F48  B0 1B 05 F0 */	sth r0, 0x5f0(r27)
/* 80A54F4C  48 00 01 10 */	b lbl_80A5505C
lbl_80A54F50:
/* 80A54F50  80 1B 05 D0 */	lwz r0, 0x5d0(r27)
/* 80A54F54  2C 00 00 27 */	cmpwi r0, 0x27
/* 80A54F58  41 82 00 2C */	beq lbl_80A54F84
/* 80A54F5C  2C 00 00 2B */	cmpwi r0, 0x2b
/* 80A54F60  40 82 00 0C */	bne lbl_80A54F6C
/* 80A54F64  2C 04 00 07 */	cmpwi r4, 7
/* 80A54F68  41 80 00 1C */	blt lbl_80A54F84
lbl_80A54F6C:
/* 80A54F6C  2C 04 00 28 */	cmpwi r4, 0x28
/* 80A54F70  40 81 00 0C */	ble lbl_80A54F7C
/* 80A54F74  2C 04 00 30 */	cmpwi r4, 0x30
/* 80A54F78  41 80 00 0C */	blt lbl_80A54F84
lbl_80A54F7C:
/* 80A54F7C  2C 04 00 41 */	cmpwi r4, 0x41
/* 80A54F80  40 81 00 0C */	ble lbl_80A54F8C
lbl_80A54F84:
/* 80A54F84  38 00 00 04 */	li r0, 4
/* 80A54F88  B0 1B 05 E0 */	sth r0, 0x5e0(r27)
lbl_80A54F8C:
/* 80A54F8C  A8 1B 05 F0 */	lha r0, 0x5f0(r27)
/* 80A54F90  2C 00 00 00 */	cmpwi r0, 0
/* 80A54F94  40 82 00 28 */	bne lbl_80A54FBC
/* 80A54F98  80 1B 05 D0 */	lwz r0, 0x5d0(r27)
/* 80A54F9C  2C 00 00 27 */	cmpwi r0, 0x27
/* 80A54FA0  40 82 00 1C */	bne lbl_80A54FBC
/* 80A54FA4  7F 63 DB 78 */	mr r3, r27
/* 80A54FA8  38 80 00 2B */	li r4, 0x2b
/* 80A54FAC  C0 3F 00 6C */	lfs f1, 0x6c(r31)
/* 80A54FB0  38 A0 00 00 */	li r5, 0
/* 80A54FB4  C0 5F 00 28 */	lfs f2, 0x28(r31)
/* 80A54FB8  4B FF 41 ED */	bl anm_init__FP12npc_ks_classifUcf
lbl_80A54FBC:
/* 80A54FBC  80 1B 05 D0 */	lwz r0, 0x5d0(r27)
/* 80A54FC0  2C 00 00 2B */	cmpwi r0, 0x2b
/* 80A54FC4  40 82 00 98 */	bne lbl_80A5505C
/* 80A54FC8  80 7B 05 CC */	lwz r3, 0x5cc(r27)
/* 80A54FCC  38 80 00 01 */	li r4, 1
/* 80A54FD0  88 03 00 11 */	lbz r0, 0x11(r3)
/* 80A54FD4  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80A54FD8  40 82 00 18 */	bne lbl_80A54FF0
/* 80A54FDC  C0 3F 00 30 */	lfs f1, 0x30(r31)
/* 80A54FE0  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 80A54FE4  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80A54FE8  41 82 00 08 */	beq lbl_80A54FF0
/* 80A54FEC  38 80 00 00 */	li r4, 0
lbl_80A54FF0:
/* 80A54FF0  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 80A54FF4  41 82 00 68 */	beq lbl_80A5505C
/* 80A54FF8  38 00 00 28 */	li r0, 0x28
/* 80A54FFC  B0 1B 05 EA */	sth r0, 0x5ea(r27)
/* 80A55000  48 00 00 5C */	b lbl_80A5505C
lbl_80A55004:
/* 80A55004  A8 1B 05 F0 */	lha r0, 0x5f0(r27)
/* 80A55008  2C 00 00 00 */	cmpwi r0, 0
/* 80A5500C  40 82 00 50 */	bne lbl_80A5505C
/* 80A55010  80 1E 00 5C */	lwz r0, 0x5c(r30)
/* 80A55014  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80A55018  41 82 00 1C */	beq lbl_80A55034
/* 80A5501C  38 80 00 08 */	li r4, 8
/* 80A55020  C0 3F 00 6C */	lfs f1, 0x6c(r31)
/* 80A55024  38 A0 00 02 */	li r5, 2
/* 80A55028  C0 5F 00 28 */	lfs f2, 0x28(r31)
/* 80A5502C  4B FF 41 79 */	bl anm_init__FP12npc_ks_classifUcf
/* 80A55030  48 00 00 18 */	b lbl_80A55048
lbl_80A55034:
/* 80A55034  38 80 00 07 */	li r4, 7
/* 80A55038  C0 3F 00 6C */	lfs f1, 0x6c(r31)
/* 80A5503C  38 A0 00 02 */	li r5, 2
/* 80A55040  C0 5F 00 28 */	lfs f2, 0x28(r31)
/* 80A55044  4B FF 41 61 */	bl anm_init__FP12npc_ks_classifUcf
lbl_80A55048:
/* 80A55048  80 7E 00 5C */	lwz r3, 0x5c(r30)
/* 80A5504C  38 03 00 01 */	addi r0, r3, 1
/* 80A55050  90 1E 00 5C */	stw r0, 0x5c(r30)
/* 80A55054  38 00 00 0A */	li r0, 0xa
/* 80A55058  B0 1B 05 EA */	sth r0, 0x5ea(r27)
lbl_80A5505C:
/* 80A5505C  38 7B 04 DE */	addi r3, r27, 0x4de
/* 80A55060  A8 9B 08 FE */	lha r4, 0x8fe(r27)
/* 80A55064  38 A0 00 01 */	li r5, 1
/* 80A55068  38 C0 10 00 */	li r6, 0x1000
/* 80A5506C  4B 81 B5 9C */	b cLib_addCalcAngleS2__FPssss
/* 80A55070  A8 7B 08 FE */	lha r3, 0x8fe(r27)
/* 80A55074  A8 1B 04 DE */	lha r0, 0x4de(r27)
/* 80A55078  7C 03 00 50 */	subf r0, r3, r0
/* 80A5507C  7C 00 07 34 */	extsh r0, r0
/* 80A55080  2C 00 10 00 */	cmpwi r0, 0x1000
/* 80A55084  41 81 00 0C */	bgt lbl_80A55090
/* 80A55088  2C 00 F0 00 */	cmpwi r0, -4096
/* 80A5508C  40 80 00 08 */	bge lbl_80A55094
lbl_80A55090:
/* 80A55090  3B 80 00 00 */	li r28, 0
lbl_80A55094:
/* 80A55094  38 7B 04 DC */	addi r3, r27, 0x4dc
/* 80A55098  38 80 00 00 */	li r4, 0
/* 80A5509C  38 A0 00 01 */	li r5, 1
/* 80A550A0  38 C0 08 00 */	li r6, 0x800
/* 80A550A4  4B 81 B5 64 */	b cLib_addCalcAngleS2__FPssss
/* 80A550A8  4B FF 3F AD */	bl checkDoorDemo__Fv
/* 80A550AC  2C 03 00 00 */	cmpwi r3, 0
/* 80A550B0  41 82 00 14 */	beq lbl_80A550C4
/* 80A550B4  38 00 00 64 */	li r0, 0x64
/* 80A550B8  B0 1B 05 E8 */	sth r0, 0x5e8(r27)
/* 80A550BC  38 00 00 00 */	li r0, 0
/* 80A550C0  B0 1B 05 EA */	sth r0, 0x5ea(r27)
lbl_80A550C4:
/* 80A550C4  A8 1B 05 EA */	lha r0, 0x5ea(r27)
/* 80A550C8  2C 00 00 28 */	cmpwi r0, 0x28
/* 80A550CC  41 80 00 68 */	blt lbl_80A55134
/* 80A550D0  2C 00 00 29 */	cmpwi r0, 0x29
/* 80A550D4  41 81 00 60 */	bgt lbl_80A55134
/* 80A550D8  7F 63 DB 78 */	mr r3, r27
/* 80A550DC  C0 3F 00 48 */	lfs f1, 0x48(r31)
/* 80A550E0  4B FF 4D BD */	bl enemy_check__FP12npc_ks_classf
/* 80A550E4  28 03 00 00 */	cmplwi r3, 0
/* 80A550E8  40 82 00 18 */	bne lbl_80A55100
/* 80A550EC  38 00 00 2A */	li r0, 0x2a
/* 80A550F0  B0 1B 05 EA */	sth r0, 0x5ea(r27)
/* 80A550F4  38 00 00 1E */	li r0, 0x1e
/* 80A550F8  B0 1B 05 F0 */	sth r0, 0x5f0(r27)
/* 80A550FC  48 00 00 5C */	b lbl_80A55158
lbl_80A55100:
/* 80A55100  C0 23 04 D0 */	lfs f1, 0x4d0(r3)
/* 80A55104  C0 1B 04 D0 */	lfs f0, 0x4d0(r27)
/* 80A55108  EC 21 00 28 */	fsubs f1, f1, f0
/* 80A5510C  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 80A55110  C0 43 04 D8 */	lfs f2, 0x4d8(r3)
/* 80A55114  C0 1B 04 D8 */	lfs f0, 0x4d8(r27)
/* 80A55118  EC 42 00 28 */	fsubs f2, f2, f0
/* 80A5511C  D0 41 00 20 */	stfs f2, 0x20(r1)
/* 80A55120  4B 81 25 54 */	b cM_atan2s__Fff
/* 80A55124  3C 63 00 01 */	addis r3, r3, 1
/* 80A55128  38 03 80 00 */	addi r0, r3, -32768
/* 80A5512C  B0 1B 08 FE */	sth r0, 0x8fe(r27)
/* 80A55130  48 00 00 28 */	b lbl_80A55158
lbl_80A55134:
/* 80A55134  7F 63 DB 78 */	mr r3, r27
/* 80A55138  C0 3F 03 FC */	lfs f1, 0x3fc(r31)
/* 80A5513C  4B FF 4D 3D */	bl enemy_view_check__FP12npc_ks_classf
/* 80A55140  28 03 00 00 */	cmplwi r3, 0
/* 80A55144  41 82 00 14 */	beq lbl_80A55158
/* 80A55148  38 00 00 28 */	li r0, 0x28
/* 80A5514C  B0 1B 05 EA */	sth r0, 0x5ea(r27)
/* 80A55150  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 80A55154  D0 1B 05 2C */	stfs f0, 0x52c(r27)
lbl_80A55158:
/* 80A55158  7F 83 E3 78 */	mr r3, r28
/* 80A5515C  39 61 00 50 */	addi r11, r1, 0x50
/* 80A55160  4B 90 D0 C0 */	b _restgpr_27
/* 80A55164  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80A55168  7C 08 03 A6 */	mtlr r0
/* 80A5516C  38 21 00 50 */	addi r1, r1, 0x50
/* 80A55170  4E 80 00 20 */	blr 
