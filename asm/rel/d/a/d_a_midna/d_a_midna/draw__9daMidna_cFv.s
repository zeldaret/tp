lbl_804C5A08:
/* 804C5A08  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 804C5A0C  7C 08 02 A6 */	mflr r0
/* 804C5A10  90 01 00 64 */	stw r0, 0x64(r1)
/* 804C5A14  39 61 00 60 */	addi r11, r1, 0x60
/* 804C5A18  4B E9 C7 B5 */	bl _savegpr_25
/* 804C5A1C  7C 7F 1B 78 */	mr r31, r3
/* 804C5A20  3C 80 80 4C */	lis r4, lit_3777@ha /* 0x804C64C8@ha */
/* 804C5A24  3B C4 64 C8 */	addi r30, r4, lit_3777@l /* 0x804C64C8@l */
/* 804C5A28  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804C5A2C  3B 84 61 C0 */	addi r28, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804C5A30  83 7C 5D B4 */	lwz r27, 0x5db4(r28)
/* 804C5A34  4B FF F1 35 */	bl checkNoDrawState__9daMidna_cFv
/* 804C5A38  2C 03 00 00 */	cmpwi r3, 0
/* 804C5A3C  40 82 00 38 */	bne lbl_804C5A74
/* 804C5A40  80 1F 08 94 */	lwz r0, 0x894(r31)
/* 804C5A44  54 00 07 BF */	clrlwi. r0, r0, 0x1e
/* 804C5A48  40 82 00 34 */	bne lbl_804C5A7C
/* 804C5A4C  80 7C 5D B4 */	lwz r3, 0x5db4(r28)
/* 804C5A50  81 83 06 28 */	lwz r12, 0x628(r3)
/* 804C5A54  81 8C 01 0C */	lwz r12, 0x10c(r12)
/* 804C5A58  7D 89 03 A6 */	mtctr r12
/* 804C5A5C  4E 80 04 21 */	bctrl 
/* 804C5A60  28 03 00 00 */	cmplwi r3, 0
/* 804C5A64  41 82 00 18 */	beq lbl_804C5A7C
/* 804C5A68  80 1F 08 90 */	lwz r0, 0x890(r31)
/* 804C5A6C  70 00 05 00 */	andi. r0, r0, 0x500
/* 804C5A70  40 82 00 0C */	bne lbl_804C5A7C
lbl_804C5A74:
/* 804C5A74  38 60 00 01 */	li r3, 1
/* 804C5A78  48 00 06 F4 */	b lbl_804C616C
lbl_804C5A7C:
/* 804C5A7C  3B 80 00 00 */	li r28, 0
/* 804C5A80  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804C5A84  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804C5A88  80 04 5F 88 */	lwz r0, 0x5f88(r4)
/* 804C5A8C  3C 60 80 43 */	lis r3, j3dSys@ha /* 0x80434AC8@ha */
/* 804C5A90  3B A3 4A C8 */	addi r29, r3, j3dSys@l /* 0x80434AC8@l */
/* 804C5A94  90 1D 00 48 */	stw r0, 0x48(r29)
/* 804C5A98  80 04 5F 8C */	lwz r0, 0x5f8c(r4)
/* 804C5A9C  90 1D 00 4C */	stw r0, 0x4c(r29)
/* 804C5AA0  80 1F 08 90 */	lwz r0, 0x890(r31)
/* 804C5AA4  54 00 04 A5 */	rlwinm. r0, r0, 0, 0x12, 0x12
/* 804C5AA8  40 82 03 40 */	bne lbl_804C5DE8
/* 804C5AAC  80 1F 08 94 */	lwz r0, 0x894(r31)
/* 804C5AB0  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 804C5AB4  40 82 03 34 */	bne lbl_804C5DE8
/* 804C5AB8  80 1F 05 70 */	lwz r0, 0x570(r31)
/* 804C5ABC  28 00 00 00 */	cmplwi r0, 0
/* 804C5AC0  41 82 03 28 */	beq lbl_804C5DE8
/* 804C5AC4  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 804C5AC8  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 804C5ACC  38 80 00 03 */	li r4, 3
/* 804C5AD0  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 804C5AD4  38 DF 01 0C */	addi r6, r31, 0x10c
/* 804C5AD8  4B CD DC ED */	bl settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 804C5ADC  38 7E 01 1C */	addi r3, r30, 0x11c
/* 804C5AE0  A0 63 01 50 */	lhz r3, 0x150(r3)
/* 804C5AE4  A0 1F 05 E4 */	lhz r0, 0x5e4(r31)
/* 804C5AE8  7C 03 00 40 */	cmplw r3, r0
/* 804C5AEC  40 82 00 5C */	bne lbl_804C5B48
/* 804C5AF0  80 7F 05 78 */	lwz r3, 0x578(r31)
/* 804C5AF4  A8 03 00 14 */	lha r0, 0x14(r3)
/* 804C5AF8  C8 3E 00 C0 */	lfd f1, 0xc0(r30)
/* 804C5AFC  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 804C5B00  90 01 00 34 */	stw r0, 0x34(r1)
/* 804C5B04  3C 00 43 30 */	lis r0, 0x4330
/* 804C5B08  90 01 00 30 */	stw r0, 0x30(r1)
/* 804C5B0C  C8 01 00 30 */	lfd f0, 0x30(r1)
/* 804C5B10  EC 00 08 28 */	fsubs f0, f0, f1
/* 804C5B14  C0 43 00 1C */	lfs f2, 0x1c(r3)
/* 804C5B18  C0 3E 05 88 */	lfs f1, 0x588(r30)
/* 804C5B1C  EC 02 00 24 */	fdivs f0, f2, f0
/* 804C5B20  EC 01 00 32 */	fmuls f0, f1, f0
/* 804C5B24  FC 00 00 1E */	fctiwz f0, f0
/* 804C5B28  D8 01 00 38 */	stfd f0, 0x38(r1)
/* 804C5B2C  80 01 00 3C */	lwz r0, 0x3c(r1)
/* 804C5B30  B0 1F 04 64 */	sth r0, 0x464(r31)
/* 804C5B34  A8 1F 04 64 */	lha r0, 0x464(r31)
/* 804C5B38  B0 1F 04 66 */	sth r0, 0x466(r31)
/* 804C5B3C  A8 1F 04 64 */	lha r0, 0x464(r31)
/* 804C5B40  B0 1F 04 68 */	sth r0, 0x468(r31)
/* 804C5B44  48 00 00 FC */	b lbl_804C5C40
lbl_804C5B48:
/* 804C5B48  A8 1B 30 06 */	lha r0, 0x3006(r27)
/* 804C5B4C  7C 00 07 35 */	extsh. r0, r0
/* 804C5B50  40 82 00 10 */	bne lbl_804C5B60
/* 804C5B54  80 1B 05 74 */	lwz r0, 0x574(r27)
/* 804C5B58  54 00 00 43 */	rlwinm. r0, r0, 0, 1, 1
/* 804C5B5C  41 82 00 E4 */	beq lbl_804C5C40
lbl_804C5B60:
/* 804C5B60  A8 1B 04 64 */	lha r0, 0x464(r27)
/* 804C5B64  B0 1F 04 64 */	sth r0, 0x464(r31)
/* 804C5B68  A8 1B 04 66 */	lha r0, 0x466(r27)
/* 804C5B6C  B0 1F 04 66 */	sth r0, 0x466(r31)
/* 804C5B70  A8 1B 04 68 */	lha r0, 0x468(r27)
/* 804C5B74  B0 1F 04 68 */	sth r0, 0x468(r31)
/* 804C5B78  A8 1B 04 6A */	lha r0, 0x46a(r27)
/* 804C5B7C  B0 1F 04 6A */	sth r0, 0x46a(r31)
/* 804C5B80  80 1B 04 64 */	lwz r0, 0x464(r27)
/* 804C5B84  90 1F 06 E0 */	stw r0, 0x6e0(r31)
/* 804C5B88  80 1B 04 68 */	lwz r0, 0x468(r27)
/* 804C5B8C  90 1F 06 E4 */	stw r0, 0x6e4(r31)
/* 804C5B90  4B CE 69 ED */	bl dKy_darkworld_check__Fv
/* 804C5B94  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 804C5B98  41 82 00 58 */	beq lbl_804C5BF0
/* 804C5B9C  80 1E 00 34 */	lwz r0, 0x34(r30)
/* 804C5BA0  90 01 00 14 */	stw r0, 0x14(r1)
/* 804C5BA4  88 01 00 14 */	lbz r0, 0x14(r1)
/* 804C5BA8  98 1F 06 E8 */	stb r0, 0x6e8(r31)
/* 804C5BAC  88 01 00 15 */	lbz r0, 0x15(r1)
/* 804C5BB0  98 1F 06 E9 */	stb r0, 0x6e9(r31)
/* 804C5BB4  88 01 00 16 */	lbz r0, 0x16(r1)
/* 804C5BB8  98 1F 06 EA */	stb r0, 0x6ea(r31)
/* 804C5BBC  88 01 00 17 */	lbz r0, 0x17(r1)
/* 804C5BC0  98 1F 06 EB */	stb r0, 0x6eb(r31)
/* 804C5BC4  80 1E 00 38 */	lwz r0, 0x38(r30)
/* 804C5BC8  90 01 00 10 */	stw r0, 0x10(r1)
/* 804C5BCC  88 01 00 10 */	lbz r0, 0x10(r1)
/* 804C5BD0  98 1F 06 EC */	stb r0, 0x6ec(r31)
/* 804C5BD4  88 01 00 11 */	lbz r0, 0x11(r1)
/* 804C5BD8  98 1F 06 ED */	stb r0, 0x6ed(r31)
/* 804C5BDC  88 01 00 12 */	lbz r0, 0x12(r1)
/* 804C5BE0  98 1F 06 EE */	stb r0, 0x6ee(r31)
/* 804C5BE4  88 01 00 13 */	lbz r0, 0x13(r1)
/* 804C5BE8  98 1F 06 EF */	stb r0, 0x6ef(r31)
/* 804C5BEC  48 00 00 54 */	b lbl_804C5C40
lbl_804C5BF0:
/* 804C5BF0  80 1E 00 48 */	lwz r0, 0x48(r30)
/* 804C5BF4  90 01 00 0C */	stw r0, 0xc(r1)
/* 804C5BF8  88 01 00 0C */	lbz r0, 0xc(r1)
/* 804C5BFC  98 1F 06 E8 */	stb r0, 0x6e8(r31)
/* 804C5C00  88 01 00 0D */	lbz r0, 0xd(r1)
/* 804C5C04  98 1F 06 E9 */	stb r0, 0x6e9(r31)
/* 804C5C08  88 01 00 0E */	lbz r0, 0xe(r1)
/* 804C5C0C  98 1F 06 EA */	stb r0, 0x6ea(r31)
/* 804C5C10  88 01 00 0F */	lbz r0, 0xf(r1)
/* 804C5C14  98 1F 06 EB */	stb r0, 0x6eb(r31)
/* 804C5C18  80 1E 00 4C */	lwz r0, 0x4c(r30)
/* 804C5C1C  90 01 00 08 */	stw r0, 8(r1)
/* 804C5C20  88 01 00 08 */	lbz r0, 8(r1)
/* 804C5C24  98 1F 06 EC */	stb r0, 0x6ec(r31)
/* 804C5C28  88 01 00 09 */	lbz r0, 9(r1)
/* 804C5C2C  98 1F 06 ED */	stb r0, 0x6ed(r31)
/* 804C5C30  88 01 00 0A */	lbz r0, 0xa(r1)
/* 804C5C34  98 1F 06 EE */	stb r0, 0x6ee(r31)
/* 804C5C38  88 01 00 0B */	lbz r0, 0xb(r1)
/* 804C5C3C  98 1F 06 EF */	stb r0, 0x6ef(r31)
lbl_804C5C40:
/* 804C5C40  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 804C5C44  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 804C5C48  80 9F 05 70 */	lwz r4, 0x570(r31)
/* 804C5C4C  80 84 00 04 */	lwz r4, 4(r4)
/* 804C5C50  38 BF 01 0C */	addi r5, r31, 0x10c
/* 804C5C54  4B CD F1 4D */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 804C5C58  80 7F 05 70 */	lwz r3, 0x570(r31)
/* 804C5C5C  80 63 00 04 */	lwz r3, 4(r3)
/* 804C5C60  80 63 00 60 */	lwz r3, 0x60(r3)
/* 804C5C64  83 43 00 10 */	lwz r26, 0x10(r3)
/* 804C5C68  80 7F 06 68 */	lwz r3, 0x668(r31)
/* 804C5C6C  28 03 00 00 */	cmplwi r3, 0
/* 804C5C70  41 82 00 20 */	beq lbl_804C5C90
/* 804C5C74  38 80 00 00 */	li r4, 0
/* 804C5C78  38 BF 06 E0 */	addi r5, r31, 0x6e0
/* 804C5C7C  4B E6 55 7D */	bl getTevColorReg__15J3DAnmTevRegKeyCFUsP11_GXColorS10
/* 804C5C80  80 7F 06 68 */	lwz r3, 0x668(r31)
/* 804C5C84  38 80 00 00 */	li r4, 0
/* 804C5C88  38 BF 06 E8 */	addi r5, r31, 0x6e8
/* 804C5C8C  4B E6 58 31 */	bl getTevKonstReg__15J3DAnmTevRegKeyCFUsP8_GXColor
lbl_804C5C90:
/* 804C5C90  80 7A 00 2C */	lwz r3, 0x2c(r26)
/* 804C5C94  38 80 00 01 */	li r4, 1
/* 804C5C98  38 BF 06 E0 */	addi r5, r31, 0x6e0
/* 804C5C9C  81 83 00 00 */	lwz r12, 0(r3)
/* 804C5CA0  81 8C 00 60 */	lwz r12, 0x60(r12)
/* 804C5CA4  7D 89 03 A6 */	mtctr r12
/* 804C5CA8  4E 80 04 21 */	bctrl 
/* 804C5CAC  80 7A 00 2C */	lwz r3, 0x2c(r26)
/* 804C5CB0  38 80 00 01 */	li r4, 1
/* 804C5CB4  38 BF 06 E8 */	addi r5, r31, 0x6e8
/* 804C5CB8  81 83 00 00 */	lwz r12, 0(r3)
/* 804C5CBC  81 8C 00 6C */	lwz r12, 0x6c(r12)
/* 804C5CC0  7D 89 03 A6 */	mtctr r12
/* 804C5CC4  4E 80 04 21 */	bctrl 
/* 804C5CC8  80 7F 05 70 */	lwz r3, 0x570(r31)
/* 804C5CCC  4B B4 80 99 */	bl mDoExt_modelEntryDL__FP8J3DModel
/* 804C5CD0  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 804C5CD4  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 804C5CD8  80 9F 06 78 */	lwz r4, 0x678(r31)
/* 804C5CDC  80 84 00 04 */	lwz r4, 4(r4)
/* 804C5CE0  38 BF 01 0C */	addi r5, r31, 0x10c
/* 804C5CE4  4B CD F0 BD */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 804C5CE8  80 7F 06 78 */	lwz r3, 0x678(r31)
/* 804C5CEC  4B B4 80 79 */	bl mDoExt_modelEntryDL__FP8J3DModel
/* 804C5CF0  80 1F 06 80 */	lwz r0, 0x680(r31)
/* 804C5CF4  28 00 00 00 */	cmplwi r0, 0
/* 804C5CF8  41 82 00 B0 */	beq lbl_804C5DA8
/* 804C5CFC  80 1F 08 94 */	lwz r0, 0x894(r31)
/* 804C5D00  70 00 00 50 */	andi. r0, r0, 0x50
/* 804C5D04  40 82 00 A4 */	bne lbl_804C5DA8
/* 804C5D08  3B 20 00 00 */	li r25, 0
/* 804C5D0C  48 00 00 70 */	b lbl_804C5D7C
lbl_804C5D10:
/* 804C5D10  80 7F 06 80 */	lwz r3, 0x680(r31)
/* 804C5D14  80 63 00 04 */	lwz r3, 4(r3)
/* 804C5D18  80 63 00 60 */	lwz r3, 0x60(r3)
/* 804C5D1C  57 20 13 BA */	rlwinm r0, r25, 2, 0xe, 0x1d
/* 804C5D20  7F 43 00 2E */	lwzx r26, r3, r0
/* 804C5D24  80 7A 00 2C */	lwz r3, 0x2c(r26)
/* 804C5D28  38 80 00 01 */	li r4, 1
/* 804C5D2C  38 BF 06 E0 */	addi r5, r31, 0x6e0
/* 804C5D30  81 83 00 00 */	lwz r12, 0(r3)
/* 804C5D34  81 8C 00 60 */	lwz r12, 0x60(r12)
/* 804C5D38  7D 89 03 A6 */	mtctr r12
/* 804C5D3C  4E 80 04 21 */	bctrl 
/* 804C5D40  80 7A 00 2C */	lwz r3, 0x2c(r26)
/* 804C5D44  38 80 00 01 */	li r4, 1
/* 804C5D48  38 BF 06 E8 */	addi r5, r31, 0x6e8
/* 804C5D4C  81 83 00 00 */	lwz r12, 0(r3)
/* 804C5D50  81 8C 00 6C */	lwz r12, 0x6c(r12)
/* 804C5D54  7D 89 03 A6 */	mtctr r12
/* 804C5D58  4E 80 04 21 */	bctrl 
/* 804C5D5C  80 7A 00 2C */	lwz r3, 0x2c(r26)
/* 804C5D60  38 80 00 02 */	li r4, 2
/* 804C5D64  38 BF 06 EC */	addi r5, r31, 0x6ec
/* 804C5D68  81 83 00 00 */	lwz r12, 0(r3)
/* 804C5D6C  81 8C 00 6C */	lwz r12, 0x6c(r12)
/* 804C5D70  7D 89 03 A6 */	mtctr r12
/* 804C5D74  4E 80 04 21 */	bctrl 
/* 804C5D78  3B 39 00 01 */	addi r25, r25, 1
lbl_804C5D7C:
/* 804C5D7C  57 20 04 3E */	clrlwi r0, r25, 0x10
/* 804C5D80  28 00 00 03 */	cmplwi r0, 3
/* 804C5D84  41 80 FF 8C */	blt lbl_804C5D10
/* 804C5D88  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 804C5D8C  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 804C5D90  80 9F 06 80 */	lwz r4, 0x680(r31)
/* 804C5D94  80 84 00 04 */	lwz r4, 4(r4)
/* 804C5D98  38 BF 01 0C */	addi r5, r31, 0x10c
/* 804C5D9C  4B CD F0 05 */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 804C5DA0  80 7F 06 80 */	lwz r3, 0x680(r31)
/* 804C5DA4  4B B4 7F C1 */	bl mDoExt_modelEntryDL__FP8J3DModel
lbl_804C5DA8:
/* 804C5DA8  80 1F 08 94 */	lwz r0, 0x894(r31)
/* 804C5DAC  54 00 06 31 */	rlwinm. r0, r0, 0, 0x18, 0x18
/* 804C5DB0  40 82 00 24 */	bne lbl_804C5DD4
/* 804C5DB4  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 804C5DB8  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 804C5DBC  80 9F 06 70 */	lwz r4, 0x670(r31)
/* 804C5DC0  80 84 00 04 */	lwz r4, 4(r4)
/* 804C5DC4  38 BF 01 0C */	addi r5, r31, 0x10c
/* 804C5DC8  4B CD EF D9 */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 804C5DCC  80 7F 06 70 */	lwz r3, 0x670(r31)
/* 804C5DD0  4B B4 7F 95 */	bl mDoExt_modelEntryDL__FP8J3DModel
lbl_804C5DD4:
/* 804C5DD4  80 1B 05 70 */	lwz r0, 0x570(r27)
/* 804C5DD8  54 00 07 7B */	rlwinm. r0, r0, 0, 0x1d, 0x1d
/* 804C5DDC  40 82 01 68 */	bne lbl_804C5F44
/* 804C5DE0  3B 80 00 01 */	li r28, 1
/* 804C5DE4  48 00 01 60 */	b lbl_804C5F44
lbl_804C5DE8:
/* 804C5DE8  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 804C5DEC  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 804C5DF0  38 80 00 01 */	li r4, 1
/* 804C5DF4  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 804C5DF8  38 DF 01 0C */	addi r6, r31, 0x10c
/* 804C5DFC  4B CD D9 C9 */	bl settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 804C5E00  80 7F 06 68 */	lwz r3, 0x668(r31)
/* 804C5E04  28 03 00 00 */	cmplwi r3, 0
/* 804C5E08  41 82 00 10 */	beq lbl_804C5E18
/* 804C5E0C  38 80 00 00 */	li r4, 0
/* 804C5E10  38 BF 04 64 */	addi r5, r31, 0x464
/* 804C5E14  4B E6 53 E5 */	bl getTevColorReg__15J3DAnmTevRegKeyCFUsP11_GXColorS10
lbl_804C5E18:
/* 804C5E18  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 804C5E1C  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 804C5E20  80 9F 06 98 */	lwz r4, 0x698(r31)
/* 804C5E24  80 84 00 04 */	lwz r4, 4(r4)
/* 804C5E28  38 BF 01 0C */	addi r5, r31, 0x10c
/* 804C5E2C  4B CD EF 75 */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 804C5E30  80 7F 06 98 */	lwz r3, 0x698(r31)
/* 804C5E34  4B B4 7F 31 */	bl mDoExt_modelEntryDL__FP8J3DModel
/* 804C5E38  80 7F 05 74 */	lwz r3, 0x574(r31)
/* 804C5E3C  80 63 00 84 */	lwz r3, 0x84(r3)
/* 804C5E40  80 63 00 0C */	lwz r3, 0xc(r3)
/* 804C5E44  C0 43 00 2C */	lfs f2, 0x2c(r3)
/* 804C5E48  C0 23 00 1C */	lfs f1, 0x1c(r3)
/* 804C5E4C  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 804C5E50  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 804C5E54  D0 21 00 28 */	stfs f1, 0x28(r1)
/* 804C5E58  D0 41 00 2C */	stfs f2, 0x2c(r1)
/* 804C5E5C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804C5E60  3B 63 61 C0 */	addi r27, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804C5E64  80 7B 61 B0 */	lwz r3, 0x61b0(r27)
/* 804C5E68  38 63 01 40 */	addi r3, r3, 0x140
/* 804C5E6C  38 81 00 24 */	addi r4, r1, 0x24
/* 804C5E70  7C 85 23 78 */	mr r5, r4
/* 804C5E74  4B E8 0E F9 */	bl PSMTXMultVec
/* 804C5E78  C0 21 00 2C */	lfs f1, 0x2c(r1)
/* 804C5E7C  C0 1E 05 8C */	lfs f0, 0x58c(r30)
/* 804C5E80  EC 01 00 28 */	fsubs f0, f1, f0
/* 804C5E84  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 804C5E88  80 7B 61 B0 */	lwz r3, 0x61b0(r27)
/* 804C5E8C  38 63 01 70 */	addi r3, r3, 0x170
/* 804C5E90  38 81 00 24 */	addi r4, r1, 0x24
/* 804C5E94  7C 85 23 78 */	mr r5, r4
/* 804C5E98  4B E8 0E D5 */	bl PSMTXMultVec
/* 804C5E9C  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 804C5EA0  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 804C5EA4  80 9F 05 74 */	lwz r4, 0x574(r31)
/* 804C5EA8  80 84 00 04 */	lwz r4, 4(r4)
/* 804C5EAC  38 BF 01 0C */	addi r5, r31, 0x10c
/* 804C5EB0  4B CD EE F1 */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 804C5EB4  38 7F 05 C4 */	addi r3, r31, 0x5c4
/* 804C5EB8  38 81 00 24 */	addi r4, r1, 0x24
/* 804C5EBC  4B B4 89 05 */	bl entryDL__21mDoExt_invisibleModelFP4cXyz
/* 804C5EC0  80 1F 08 94 */	lwz r0, 0x894(r31)
/* 804C5EC4  54 00 06 31 */	rlwinm. r0, r0, 0, 0x18, 0x18
/* 804C5EC8  40 82 00 28 */	bne lbl_804C5EF0
/* 804C5ECC  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 804C5ED0  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 804C5ED4  80 9F 06 74 */	lwz r4, 0x674(r31)
/* 804C5ED8  80 84 00 04 */	lwz r4, 4(r4)
/* 804C5EDC  38 BF 01 0C */	addi r5, r31, 0x10c
/* 804C5EE0  4B CD EE C1 */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 804C5EE4  38 7F 05 CC */	addi r3, r31, 0x5cc
/* 804C5EE8  38 81 00 24 */	addi r4, r1, 0x24
/* 804C5EEC  4B B4 88 D5 */	bl entryDL__21mDoExt_invisibleModelFP4cXyz
lbl_804C5EF0:
/* 804C5EF0  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 804C5EF4  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 804C5EF8  80 9F 06 7C */	lwz r4, 0x67c(r31)
/* 804C5EFC  80 84 00 04 */	lwz r4, 4(r4)
/* 804C5F00  38 BF 01 0C */	addi r5, r31, 0x10c
/* 804C5F04  4B CD EE 9D */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 804C5F08  38 7F 05 D4 */	addi r3, r31, 0x5d4
/* 804C5F0C  38 81 00 24 */	addi r4, r1, 0x24
/* 804C5F10  4B B4 88 B1 */	bl entryDL__21mDoExt_invisibleModelFP4cXyz
/* 804C5F14  80 1F 08 94 */	lwz r0, 0x894(r31)
/* 804C5F18  54 00 06 73 */	rlwinm. r0, r0, 0, 0x19, 0x19
/* 804C5F1C  40 82 00 28 */	bne lbl_804C5F44
/* 804C5F20  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 804C5F24  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 804C5F28  80 9F 06 84 */	lwz r4, 0x684(r31)
/* 804C5F2C  80 84 00 04 */	lwz r4, 4(r4)
/* 804C5F30  38 BF 01 0C */	addi r5, r31, 0x10c
/* 804C5F34  4B CD EE 6D */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 804C5F38  38 7F 05 DC */	addi r3, r31, 0x5dc
/* 804C5F3C  38 81 00 24 */	addi r4, r1, 0x24
/* 804C5F40  4B B4 88 81 */	bl entryDL__21mDoExt_invisibleModelFP4cXyz
lbl_804C5F44:
/* 804C5F44  A0 1F 08 78 */	lhz r0, 0x878(r31)
/* 804C5F48  28 00 00 FD */	cmplwi r0, 0xfd
/* 804C5F4C  40 82 00 24 */	bne lbl_804C5F70
/* 804C5F50  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 804C5F54  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 804C5F58  80 9F 06 C8 */	lwz r4, 0x6c8(r31)
/* 804C5F5C  80 84 00 04 */	lwz r4, 4(r4)
/* 804C5F60  38 BF 01 0C */	addi r5, r31, 0x10c
/* 804C5F64  4B CD EE 3D */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 804C5F68  80 7F 06 C8 */	lwz r3, 0x6c8(r31)
/* 804C5F6C  4B B4 7D F9 */	bl mDoExt_modelEntryDL__FP8J3DModel
lbl_804C5F70:
/* 804C5F70  A0 1F 08 7A */	lhz r0, 0x87a(r31)
/* 804C5F74  28 00 00 FD */	cmplwi r0, 0xfd
/* 804C5F78  40 82 00 24 */	bne lbl_804C5F9C
/* 804C5F7C  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 804C5F80  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 804C5F84  80 9F 06 D0 */	lwz r4, 0x6d0(r31)
/* 804C5F88  80 84 00 04 */	lwz r4, 4(r4)
/* 804C5F8C  38 BF 01 0C */	addi r5, r31, 0x10c
/* 804C5F90  4B CD EE 11 */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 804C5F94  80 7F 06 D0 */	lwz r3, 0x6d0(r31)
/* 804C5F98  4B B4 7D CD */	bl mDoExt_modelEntryDL__FP8J3DModel
lbl_804C5F9C:
/* 804C5F9C  80 1F 08 90 */	lwz r0, 0x890(r31)
/* 804C5FA0  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 804C5FA4  41 82 00 60 */	beq lbl_804C6004
/* 804C5FA8  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 804C5FAC  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 804C5FB0  80 9F 06 AC */	lwz r4, 0x6ac(r31)
/* 804C5FB4  80 84 00 04 */	lwz r4, 4(r4)
/* 804C5FB8  38 BF 01 0C */	addi r5, r31, 0x10c
/* 804C5FBC  4B CD ED E5 */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 804C5FC0  80 9F 06 6C */	lwz r4, 0x66c(r31)
/* 804C5FC4  28 04 00 00 */	cmplwi r4, 0
/* 804C5FC8  41 82 00 14 */	beq lbl_804C5FDC
/* 804C5FCC  80 7F 06 AC */	lwz r3, 0x6ac(r31)
/* 804C5FD0  80 63 00 04 */	lwz r3, 4(r3)
/* 804C5FD4  38 63 00 58 */	addi r3, r3, 0x58
/* 804C5FD8  4B E6 9E 99 */	bl entryTevRegAnimator__16J3DMaterialTableFP15J3DAnmTevRegKey
lbl_804C5FDC:
/* 804C5FDC  80 7F 06 AC */	lwz r3, 0x6ac(r31)
/* 804C5FE0  4B B4 7D 85 */	bl mDoExt_modelEntryDL__FP8J3DModel
/* 804C5FE4  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 804C5FE8  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 804C5FEC  80 9F 06 B0 */	lwz r4, 0x6b0(r31)
/* 804C5FF0  80 84 00 04 */	lwz r4, 4(r4)
/* 804C5FF4  38 BF 01 0C */	addi r5, r31, 0x10c
/* 804C5FF8  4B CD ED A9 */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 804C5FFC  80 7F 06 B0 */	lwz r3, 0x6b0(r31)
/* 804C6000  4B B4 7D 65 */	bl mDoExt_modelEntryDL__FP8J3DModel
lbl_804C6004:
/* 804C6004  80 7F 08 94 */	lwz r3, 0x894(r31)
/* 804C6008  54 60 06 73 */	rlwinm. r0, r3, 0, 0x19, 0x19
/* 804C600C  40 82 00 2C */	bne lbl_804C6038
/* 804C6010  54 60 06 F7 */	rlwinm. r0, r3, 0, 0x1b, 0x1b
/* 804C6014  41 82 00 24 */	beq lbl_804C6038
/* 804C6018  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 804C601C  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 804C6020  80 9F 06 D8 */	lwz r4, 0x6d8(r31)
/* 804C6024  80 84 00 04 */	lwz r4, 4(r4)
/* 804C6028  38 BF 01 0C */	addi r5, r31, 0x10c
/* 804C602C  4B CD ED 75 */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 804C6030  80 7F 06 D8 */	lwz r3, 0x6d8(r31)
/* 804C6034  4B B4 7D 31 */	bl mDoExt_modelEntryDL__FP8J3DModel
lbl_804C6038:
/* 804C6038  38 00 00 00 */	li r0, 0
/* 804C603C  B0 1F 04 64 */	sth r0, 0x464(r31)
/* 804C6040  B0 1F 04 66 */	sth r0, 0x466(r31)
/* 804C6044  B0 1F 04 68 */	sth r0, 0x468(r31)
/* 804C6048  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804C604C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804C6050  80 03 5F 80 */	lwz r0, 0x5f80(r3)
/* 804C6054  90 1D 00 48 */	stw r0, 0x48(r29)
/* 804C6058  80 03 5F 84 */	lwz r0, 0x5f84(r3)
/* 804C605C  90 1D 00 4C */	stw r0, 0x4c(r29)
/* 804C6060  2C 1C 00 00 */	cmpwi r28, 0
/* 804C6064  41 82 01 04 */	beq lbl_804C6168
/* 804C6068  80 1F 08 94 */	lwz r0, 0x894(r31)
/* 804C606C  54 00 04 E7 */	rlwinm. r0, r0, 0, 0x13, 0x13
/* 804C6070  40 82 00 F8 */	bne lbl_804C6168
/* 804C6074  80 7F 05 70 */	lwz r3, 0x570(r31)
/* 804C6078  80 63 00 84 */	lwz r3, 0x84(r3)
/* 804C607C  80 63 00 0C */	lwz r3, 0xc(r3)
/* 804C6080  C0 03 00 3C */	lfs f0, 0x3c(r3)
/* 804C6084  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 804C6088  C0 03 00 4C */	lfs f0, 0x4c(r3)
/* 804C608C  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 804C6090  C0 03 00 5C */	lfs f0, 0x5c(r3)
/* 804C6094  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 804C6098  38 61 00 18 */	addi r3, r1, 0x18
/* 804C609C  4B B5 7C 21 */	bl gndCheck__11fopAcM_gc_cFPC4cXyz
/* 804C60A0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 804C60A4  41 82 00 C4 */	beq lbl_804C6168
/* 804C60A8  80 7F 08 9C */	lwz r3, 0x89c(r31)
/* 804C60AC  38 80 00 00 */	li r4, 0
/* 804C60B0  80 BF 05 70 */	lwz r5, 0x570(r31)
/* 804C60B4  38 C1 00 18 */	addi r6, r1, 0x18
/* 804C60B8  C0 3E 05 90 */	lfs f1, 0x590(r30)
/* 804C60BC  C0 5E 00 B8 */	lfs f2, 0xb8(r30)
/* 804C60C0  C0 61 00 1C */	lfs f3, 0x1c(r1)
/* 804C60C4  C0 1E 05 94 */	lfs f0, 0x594(r30)
/* 804C60C8  EC 63 00 28 */	fsubs f3, f3, f0
/* 804C60CC  3C E0 80 45 */	lis r7, mGroundY__11fopAcM_gc_c@ha /* 0x80450CD0@ha */
/* 804C60D0  C0 87 0C D0 */	lfs f4, mGroundY__11fopAcM_gc_c@l(r7)  /* 0x80450CD0@l */
/* 804C60D4  3C E0 80 3F */	lis r7, mGndCheck__11fopAcM_gc_c@ha /* 0x803F1CC4@ha */
/* 804C60D8  38 E7 1C C4 */	addi r7, r7, mGndCheck__11fopAcM_gc_c@l /* 0x803F1CC4@l */
/* 804C60DC  38 E7 00 14 */	addi r7, r7, 0x14
/* 804C60E0  39 1F 01 0C */	addi r8, r31, 0x10c
/* 804C60E4  39 20 00 00 */	li r9, 0
/* 804C60E8  C0 BE 00 BC */	lfs f5, 0xbc(r30)
/* 804C60EC  3D 40 80 42 */	lis r10, mSimpleTexObj__21dDlst_shadowControl_c@ha /* 0x804248D0@ha */
/* 804C60F0  39 4A 48 D0 */	addi r10, r10, mSimpleTexObj__21dDlst_shadowControl_c@l /* 0x804248D0@l */
/* 804C60F4  4B B6 88 1D */	bl dComIfGd_setShadow__FUlScP8J3DModelP4cXyzffffR13cBgS_PolyInfoP12dKy_tevstr_csfP9_GXTexObj
/* 804C60F8  90 7F 08 9C */	stw r3, 0x89c(r31)
/* 804C60FC  80 1F 08 94 */	lwz r0, 0x894(r31)
/* 804C6100  54 00 06 31 */	rlwinm. r0, r0, 0, 0x18, 0x18
/* 804C6104  40 82 00 1C */	bne lbl_804C6120
/* 804C6108  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804C610C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804C6110  38 63 61 C0 */	addi r3, r3, 0x61c0
/* 804C6114  80 9F 08 9C */	lwz r4, 0x89c(r31)
/* 804C6118  80 BF 06 70 */	lwz r5, 0x670(r31)
/* 804C611C  4B B8 FE 01 */	bl addReal__21dDlst_shadowControl_cFUlP8J3DModel
lbl_804C6120:
/* 804C6120  80 7F 08 94 */	lwz r3, 0x894(r31)
/* 804C6124  54 60 06 73 */	rlwinm. r0, r3, 0, 0x19, 0x19
/* 804C6128  40 82 00 40 */	bne lbl_804C6168
/* 804C612C  54 60 06 F7 */	rlwinm. r0, r3, 0, 0x1b, 0x1b
/* 804C6130  41 82 00 20 */	beq lbl_804C6150
/* 804C6134  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804C6138  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804C613C  38 63 61 C0 */	addi r3, r3, 0x61c0
/* 804C6140  80 9F 08 9C */	lwz r4, 0x89c(r31)
/* 804C6144  80 BF 06 D8 */	lwz r5, 0x6d8(r31)
/* 804C6148  4B B8 FD D5 */	bl addReal__21dDlst_shadowControl_cFUlP8J3DModel
/* 804C614C  48 00 00 1C */	b lbl_804C6168
lbl_804C6150:
/* 804C6150  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804C6154  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804C6158  38 63 61 C0 */	addi r3, r3, 0x61c0
/* 804C615C  80 9F 08 9C */	lwz r4, 0x89c(r31)
/* 804C6160  80 BF 06 80 */	lwz r5, 0x680(r31)
/* 804C6164  4B B8 FD B9 */	bl addReal__21dDlst_shadowControl_cFUlP8J3DModel
lbl_804C6168:
/* 804C6168  38 60 00 01 */	li r3, 1
lbl_804C616C:
/* 804C616C  39 61 00 60 */	addi r11, r1, 0x60
/* 804C6170  4B E9 C0 A9 */	bl _restgpr_25
/* 804C6174  80 01 00 64 */	lwz r0, 0x64(r1)
/* 804C6178  7C 08 03 A6 */	mtlr r0
/* 804C617C  38 21 00 60 */	addi r1, r1, 0x60
/* 804C6180  4E 80 00 20 */	blr 
