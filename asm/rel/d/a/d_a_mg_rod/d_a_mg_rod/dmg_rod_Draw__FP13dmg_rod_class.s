lbl_804A99E0:
/* 804A99E0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 804A99E4  7C 08 02 A6 */	mflr r0
/* 804A99E8  90 01 00 34 */	stw r0, 0x34(r1)
/* 804A99EC  39 61 00 30 */	addi r11, r1, 0x30
/* 804A99F0  4B EB 87 E5 */	bl _savegpr_27
/* 804A99F4  7C 7F 1B 78 */	mr r31, r3
/* 804A99F8  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 804A99FC  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 804A9A00  38 80 00 00 */	li r4, 0
/* 804A9A04  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 804A9A08  38 DF 01 0C */	addi r6, r31, 0x10c
/* 804A9A0C  4B CF 9D B9 */	bl settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 804A9A10  A8 1F 0F 7C */	lha r0, 0xf7c(r31)
/* 804A9A14  2C 00 00 00 */	cmpwi r0, 0
/* 804A9A18  40 82 01 C4 */	bne lbl_804A9BDC
/* 804A9A1C  88 1F 0F 80 */	lbz r0, 0xf80(r31)
/* 804A9A20  7C 00 07 74 */	extsb r0, r0
/* 804A9A24  54 00 10 3A */	slwi r0, r0, 2
/* 804A9A28  7C 7F 02 14 */	add r3, r31, r0
/* 804A9A2C  83 83 0F 84 */	lwz r28, 0xf84(r3)
/* 804A9A30  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 804A9A34  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 804A9A38  80 9C 00 04 */	lwz r4, 4(r28)
/* 804A9A3C  38 BF 01 0C */	addi r5, r31, 0x10c
/* 804A9A40  4B CF B3 61 */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 804A9A44  7F 83 E3 78 */	mr r3, r28
/* 804A9A48  4B B6 42 7D */	bl mDoExt_modelUpdateDL__FP8J3DModel
/* 804A9A4C  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 804A9A50  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 804A9A54  80 9F 0F A0 */	lwz r4, 0xfa0(r31)
/* 804A9A58  80 84 00 04 */	lwz r4, 4(r4)
/* 804A9A5C  38 BF 01 0C */	addi r5, r31, 0x10c
/* 804A9A60  4B CF B3 41 */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 804A9A64  80 7F 0F A0 */	lwz r3, 0xfa0(r31)
/* 804A9A68  4B B6 42 5D */	bl mDoExt_modelUpdateDL__FP8J3DModel
/* 804A9A6C  88 1F 0F 80 */	lbz r0, 0xf80(r31)
/* 804A9A70  7C 00 07 75 */	extsb. r0, r0
/* 804A9A74  41 82 00 58 */	beq lbl_804A9ACC
/* 804A9A78  3B 60 00 00 */	li r27, 0
/* 804A9A7C  3B C0 00 00 */	li r30, 0
/* 804A9A80  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 804A9A84  3B A3 CA 54 */	addi r29, r3, g_env_light@l /* 0x8042CA54@l */
lbl_804A9A88:
/* 804A9A88  2C 1B 00 01 */	cmpwi r27, 1
/* 804A9A8C  41 82 00 10 */	beq lbl_804A9A9C
/* 804A9A90  88 1F 0F 80 */	lbz r0, 0xf80(r31)
/* 804A9A94  2C 00 00 04 */	cmpwi r0, 4
/* 804A9A98  41 82 00 24 */	beq lbl_804A9ABC
lbl_804A9A9C:
/* 804A9A9C  7F A3 EB 78 */	mr r3, r29
/* 804A9AA0  3B 9E 0F 98 */	addi r28, r30, 0xf98
/* 804A9AA4  7C 9F E0 2E */	lwzx r4, r31, r28
/* 804A9AA8  80 84 00 04 */	lwz r4, 4(r4)
/* 804A9AAC  38 BF 01 0C */	addi r5, r31, 0x10c
/* 804A9AB0  4B CF B2 F1 */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 804A9AB4  7C 7F E0 2E */	lwzx r3, r31, r28
/* 804A9AB8  4B B6 42 0D */	bl mDoExt_modelUpdateDL__FP8J3DModel
lbl_804A9ABC:
/* 804A9ABC  3B 7B 00 01 */	addi r27, r27, 1
/* 804A9AC0  2C 1B 00 02 */	cmpwi r27, 2
/* 804A9AC4  3B DE 00 04 */	addi r30, r30, 4
/* 804A9AC8  41 80 FF C0 */	blt lbl_804A9A88
lbl_804A9ACC:
/* 804A9ACC  88 7F 11 48 */	lbz r3, 0x1148(r31)
/* 804A9AD0  7C 60 07 75 */	extsb. r0, r3
/* 804A9AD4  41 82 00 10 */	beq lbl_804A9AE4
/* 804A9AD8  38 03 FF FF */	addi r0, r3, -1
/* 804A9ADC  98 1F 11 48 */	stb r0, 0x1148(r31)
/* 804A9AE0  48 00 00 84 */	b lbl_804A9B64
lbl_804A9AE4:
/* 804A9AE4  3B 60 00 00 */	li r27, 0
/* 804A9AE8  3B C0 00 00 */	li r30, 0
/* 804A9AEC  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 804A9AF0  3B A3 CA 54 */	addi r29, r3, g_env_light@l /* 0x8042CA54@l */
lbl_804A9AF4:
/* 804A9AF4  7F A3 EB 78 */	mr r3, r29
/* 804A9AF8  3B 9E 06 64 */	addi r28, r30, 0x664
/* 804A9AFC  7C 9F E0 2E */	lwzx r4, r31, r28
/* 804A9B00  80 84 00 04 */	lwz r4, 4(r4)
/* 804A9B04  38 BF 01 0C */	addi r5, r31, 0x10c
/* 804A9B08  4B CF B2 99 */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 804A9B0C  7C 7F E0 2E */	lwzx r3, r31, r28
/* 804A9B10  4B B6 41 B5 */	bl mDoExt_modelUpdateDL__FP8J3DModel
/* 804A9B14  3B 7B 00 01 */	addi r27, r27, 1
/* 804A9B18  2C 1B 00 0F */	cmpwi r27, 0xf
/* 804A9B1C  3B DE 00 04 */	addi r30, r30, 4
/* 804A9B20  41 80 FF D4 */	blt lbl_804A9AF4
/* 804A9B24  3B 60 00 00 */	li r27, 0
/* 804A9B28  3B C0 00 00 */	li r30, 0
/* 804A9B2C  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 804A9B30  3B A3 CA 54 */	addi r29, r3, g_env_light@l /* 0x8042CA54@l */
lbl_804A9B34:
/* 804A9B34  7F A3 EB 78 */	mr r3, r29
/* 804A9B38  3B 9E 07 04 */	addi r28, r30, 0x704
/* 804A9B3C  7C 9F E0 2E */	lwzx r4, r31, r28
/* 804A9B40  80 84 00 04 */	lwz r4, 4(r4)
/* 804A9B44  38 BF 01 0C */	addi r5, r31, 0x10c
/* 804A9B48  4B CF B2 59 */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 804A9B4C  7C 7F E0 2E */	lwzx r3, r31, r28
/* 804A9B50  4B B6 41 75 */	bl mDoExt_modelUpdateDL__FP8J3DModel
/* 804A9B54  3B 7B 00 01 */	addi r27, r27, 1
/* 804A9B58  2C 1B 00 06 */	cmpwi r27, 6
/* 804A9B5C  3B DE 00 04 */	addi r30, r30, 4
/* 804A9B60  41 80 FF D4 */	blt lbl_804A9B34
lbl_804A9B64:
/* 804A9B64  38 7F 0F 40 */	addi r3, r31, 0xf40
/* 804A9B68  38 80 00 6A */	li r4, 0x6a
/* 804A9B6C  3C A0 80 4C */	lis r5, l_color_4439@ha /* 0x804BB878@ha */
/* 804A9B70  38 A5 B8 78 */	addi r5, r5, l_color_4439@l /* 0x804BB878@l */
/* 804A9B74  38 DF 01 0C */	addi r6, r31, 0x10c
/* 804A9B78  4B B6 92 C5 */	bl update__19mDoExt_3DlineMat0_cFiR8_GXColorP12dKy_tevstr_c
/* 804A9B7C  38 7F 0F 40 */	addi r3, r31, 0xf40
/* 804A9B80  81 9F 0F 40 */	lwz r12, 0xf40(r31)
/* 804A9B84  81 8C 00 08 */	lwz r12, 8(r12)
/* 804A9B88  7D 89 03 A6 */	mtctr r12
/* 804A9B8C  4E 80 04 21 */	bctrl 
/* 804A9B90  1C 83 00 14 */	mulli r4, r3, 0x14
/* 804A9B94  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804A9B98  38 03 61 C0 */	addi r0, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804A9B9C  7C 60 22 14 */	add r3, r0, r4
/* 804A9BA0  3C 63 00 01 */	addis r3, r3, 1
/* 804A9BA4  38 63 61 54 */	addi r3, r3, 0x6154
/* 804A9BA8  38 63 5F 64 */	addi r3, r3, 0x5f64
/* 804A9BAC  38 9F 0F 40 */	addi r4, r31, 0xf40
/* 804A9BB0  4B B6 AB 89 */	bl setMat__26mDoExt_3DlineMatSortPacketFP18mDoExt_3DlineMat_c
/* 804A9BB4  80 7F 07 00 */	lwz r3, 0x700(r31)
/* 804A9BB8  80 83 00 04 */	lwz r4, 4(r3)
/* 804A9BBC  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 804A9BC0  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 804A9BC4  80 84 00 04 */	lwz r4, 4(r4)
/* 804A9BC8  38 BF 01 0C */	addi r5, r31, 0x10c
/* 804A9BCC  4B CF B1 D5 */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 804A9BD0  80 7F 07 00 */	lwz r3, 0x700(r31)
/* 804A9BD4  4B B6 6A AD */	bl entryDL__14mDoExt_McaMorfFv
/* 804A9BD8  48 00 02 B8 */	b lbl_804A9E90
lbl_804A9BDC:
/* 804A9BDC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804A9BE0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804A9BE4  80 03 5F 18 */	lwz r0, 0x5f18(r3)
/* 804A9BE8  54 00 04 A5 */	rlwinm. r0, r0, 0, 0x12, 0x12
/* 804A9BEC  41 82 00 48 */	beq lbl_804A9C34
/* 804A9BF0  80 83 5D AC */	lwz r4, 0x5dac(r3)
/* 804A9BF4  80 63 5D 74 */	lwz r3, 0x5d74(r3)
/* 804A9BF8  C0 24 04 D0 */	lfs f1, 0x4d0(r4)
/* 804A9BFC  C0 03 00 D8 */	lfs f0, 0xd8(r3)
/* 804A9C00  EC 41 00 28 */	fsubs f2, f1, f0
/* 804A9C04  C0 24 04 D8 */	lfs f1, 0x4d8(r4)
/* 804A9C08  C0 03 00 E0 */	lfs f0, 0xe0(r3)
/* 804A9C0C  EC 01 00 28 */	fsubs f0, f1, f0
/* 804A9C10  EC 22 00 B2 */	fmuls f1, f2, f2
/* 804A9C14  EC 00 00 32 */	fmuls f0, f0, f0
/* 804A9C18  EC 21 00 2A */	fadds f1, f1, f0
/* 804A9C1C  3C 60 80 4C */	lis r3, lit_4545@ha /* 0x804BB560@ha */
/* 804A9C20  C0 03 B5 60 */	lfs f0, lit_4545@l(r3)  /* 0x804BB560@l */
/* 804A9C24  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804A9C28  40 80 00 0C */	bge lbl_804A9C34
/* 804A9C2C  38 60 00 01 */	li r3, 1
/* 804A9C30  48 00 02 64 */	b lbl_804A9E94
lbl_804A9C34:
/* 804A9C34  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 804A9C38  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 804A9C3C  80 9F 10 24 */	lwz r4, 0x1024(r31)
/* 804A9C40  80 84 00 04 */	lwz r4, 4(r4)
/* 804A9C44  38 BF 01 0C */	addi r5, r31, 0x10c
/* 804A9C48  4B CF B1 59 */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 804A9C4C  80 7F 10 24 */	lwz r3, 0x1024(r31)
/* 804A9C50  4B B6 40 75 */	bl mDoExt_modelUpdateDL__FP8J3DModel
/* 804A9C54  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 804A9C58  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 804A9C5C  80 9F 10 28 */	lwz r4, 0x1028(r31)
/* 804A9C60  80 84 00 04 */	lwz r4, 4(r4)
/* 804A9C64  38 BF 01 0C */	addi r5, r31, 0x10c
/* 804A9C68  4B CF B1 39 */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 804A9C6C  80 7F 10 28 */	lwz r3, 0x1028(r31)
/* 804A9C70  4B B6 40 55 */	bl mDoExt_modelUpdateDL__FP8J3DModel
/* 804A9C74  38 7F 0F 40 */	addi r3, r31, 0xf40
/* 804A9C78  38 80 00 64 */	li r4, 0x64
/* 804A9C7C  3C A0 80 4C */	lis r5, l_color_4445@ha /* 0x804BB87C@ha */
/* 804A9C80  38 A5 B8 7C */	addi r5, r5, l_color_4445@l /* 0x804BB87C@l */
/* 804A9C84  38 DF 01 0C */	addi r6, r31, 0x10c
/* 804A9C88  4B B6 91 B5 */	bl update__19mDoExt_3DlineMat0_cFiR8_GXColorP12dKy_tevstr_c
/* 804A9C8C  38 7F 0F 40 */	addi r3, r31, 0xf40
/* 804A9C90  81 9F 0F 40 */	lwz r12, 0xf40(r31)
/* 804A9C94  81 8C 00 08 */	lwz r12, 8(r12)
/* 804A9C98  7D 89 03 A6 */	mtctr r12
/* 804A9C9C  4E 80 04 21 */	bctrl 
/* 804A9CA0  1C 83 00 14 */	mulli r4, r3, 0x14
/* 804A9CA4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804A9CA8  38 03 61 C0 */	addi r0, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804A9CAC  7C 60 22 14 */	add r3, r0, r4
/* 804A9CB0  3C 63 00 01 */	addis r3, r3, 1
/* 804A9CB4  38 63 61 54 */	addi r3, r3, 0x6154
/* 804A9CB8  38 63 5F 64 */	addi r3, r3, 0x5f64
/* 804A9CBC  38 9F 0F 40 */	addi r4, r31, 0xf40
/* 804A9CC0  4B B6 AA 79 */	bl setMat__26mDoExt_3DlineMatSortPacketFP18mDoExt_3DlineMat_c
/* 804A9CC4  3B 60 00 00 */	li r27, 0
/* 804A9CC8  3B C0 00 00 */	li r30, 0
/* 804A9CCC  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 804A9CD0  3B A3 CA 54 */	addi r29, r3, g_env_light@l /* 0x8042CA54@l */
lbl_804A9CD4:
/* 804A9CD4  7F A3 EB 78 */	mr r3, r29
/* 804A9CD8  3B 9E 06 64 */	addi r28, r30, 0x664
/* 804A9CDC  7C 9F E0 2E */	lwzx r4, r31, r28
/* 804A9CE0  80 84 00 04 */	lwz r4, 4(r4)
/* 804A9CE4  38 BF 01 0C */	addi r5, r31, 0x10c
/* 804A9CE8  4B CF B0 B9 */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 804A9CEC  7C 7F E0 2E */	lwzx r3, r31, r28
/* 804A9CF0  4B B6 3F D5 */	bl mDoExt_modelUpdateDL__FP8J3DModel
/* 804A9CF4  3B 7B 00 01 */	addi r27, r27, 1
/* 804A9CF8  2C 1B 00 0F */	cmpwi r27, 0xf
/* 804A9CFC  3B DE 00 04 */	addi r30, r30, 4
/* 804A9D00  41 80 FF D4 */	blt lbl_804A9CD4
/* 804A9D04  A8 1F 0F 7E */	lha r0, 0xf7e(r31)
/* 804A9D08  2C 00 00 05 */	cmpwi r0, 5
/* 804A9D0C  41 82 01 10 */	beq lbl_804A9E1C
/* 804A9D10  2C 00 00 06 */	cmpwi r0, 6
/* 804A9D14  41 82 01 08 */	beq lbl_804A9E1C
/* 804A9D18  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 804A9D1C  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 804A9D20  88 1F 10 2D */	lbz r0, 0x102d(r31)
/* 804A9D24  7C 00 07 74 */	extsb r0, r0
/* 804A9D28  54 00 10 3A */	slwi r0, r0, 2
/* 804A9D2C  7C 9F 02 14 */	add r4, r31, r0
/* 804A9D30  80 84 0F 98 */	lwz r4, 0xf98(r4)
/* 804A9D34  80 84 00 04 */	lwz r4, 4(r4)
/* 804A9D38  38 BF 01 0C */	addi r5, r31, 0x10c
/* 804A9D3C  4B CF B0 65 */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 804A9D40  88 1F 10 2D */	lbz r0, 0x102d(r31)
/* 804A9D44  7C 00 07 74 */	extsb r0, r0
/* 804A9D48  54 00 10 3A */	slwi r0, r0, 2
/* 804A9D4C  7C 7F 02 14 */	add r3, r31, r0
/* 804A9D50  80 63 0F 98 */	lwz r3, 0xf98(r3)
/* 804A9D54  4B B6 3F 71 */	bl mDoExt_modelUpdateDL__FP8J3DModel
/* 804A9D58  88 9F 10 2C */	lbz r4, 0x102c(r31)
/* 804A9D5C  7C 80 07 75 */	extsb. r0, r4
/* 804A9D60  41 82 01 30 */	beq lbl_804A9E90
/* 804A9D64  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 804A9D68  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 804A9D6C  7C 80 07 74 */	extsb r0, r4
/* 804A9D70  54 00 10 3A */	slwi r0, r0, 2
/* 804A9D74  7C 9F 02 14 */	add r4, r31, r0
/* 804A9D78  80 84 10 2C */	lwz r4, 0x102c(r4)
/* 804A9D7C  80 84 00 04 */	lwz r4, 4(r4)
/* 804A9D80  38 BF 01 0C */	addi r5, r31, 0x10c
/* 804A9D84  4B CF B0 1D */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 804A9D88  88 1F 10 2C */	lbz r0, 0x102c(r31)
/* 804A9D8C  7C 00 07 74 */	extsb r0, r0
/* 804A9D90  2C 00 00 02 */	cmpwi r0, 2
/* 804A9D94  40 82 00 6C */	bne lbl_804A9E00
/* 804A9D98  54 00 10 3A */	slwi r0, r0, 2
/* 804A9D9C  7C 7F 02 14 */	add r3, r31, r0
/* 804A9DA0  80 63 10 2C */	lwz r3, 0x102c(r3)
/* 804A9DA4  93 E3 00 14 */	stw r31, 0x14(r3)
/* 804A9DA8  38 C0 00 00 */	li r6, 0
/* 804A9DAC  3C 60 80 4B */	lis r3, Worm_nodeCallBack__FP8J3DJointi@ha /* 0x804A98F4@ha */
/* 804A9DB0  38 83 98 F4 */	addi r4, r3, Worm_nodeCallBack__FP8J3DJointi@l /* 0x804A98F4@l */
/* 804A9DB4  48 00 00 24 */	b lbl_804A9DD8
lbl_804A9DB8:
/* 804A9DB8  54 C0 04 3E */	clrlwi r0, r6, 0x10
/* 804A9DBC  28 00 00 01 */	cmplwi r0, 1
/* 804A9DC0  41 80 00 14 */	blt lbl_804A9DD4
/* 804A9DC4  80 65 00 28 */	lwz r3, 0x28(r5)
/* 804A9DC8  54 C0 13 BA */	rlwinm r0, r6, 2, 0xe, 0x1d
/* 804A9DCC  7C 63 00 2E */	lwzx r3, r3, r0
/* 804A9DD0  90 83 00 04 */	stw r4, 4(r3)
lbl_804A9DD4:
/* 804A9DD4  38 C6 00 01 */	addi r6, r6, 1
lbl_804A9DD8:
/* 804A9DD8  88 1F 10 2C */	lbz r0, 0x102c(r31)
/* 804A9DDC  7C 00 07 74 */	extsb r0, r0
/* 804A9DE0  54 03 10 3A */	slwi r3, r0, 2
/* 804A9DE4  38 03 10 2C */	addi r0, r3, 0x102c
/* 804A9DE8  7C 7F 00 2E */	lwzx r3, r31, r0
/* 804A9DEC  80 A3 00 04 */	lwz r5, 4(r3)
/* 804A9DF0  A0 65 00 2C */	lhz r3, 0x2c(r5)
/* 804A9DF4  54 C0 04 3E */	clrlwi r0, r6, 0x10
/* 804A9DF8  7C 00 18 40 */	cmplw r0, r3
/* 804A9DFC  41 80 FF BC */	blt lbl_804A9DB8
lbl_804A9E00:
/* 804A9E00  88 1F 10 2C */	lbz r0, 0x102c(r31)
/* 804A9E04  7C 00 07 74 */	extsb r0, r0
/* 804A9E08  54 00 10 3A */	slwi r0, r0, 2
/* 804A9E0C  7C 7F 02 14 */	add r3, r31, r0
/* 804A9E10  80 63 10 2C */	lwz r3, 0x102c(r3)
/* 804A9E14  4B B6 3E B1 */	bl mDoExt_modelUpdateDL__FP8J3DModel
/* 804A9E18  48 00 00 78 */	b lbl_804A9E90
lbl_804A9E1C:
/* 804A9E1C  2C 00 00 06 */	cmpwi r0, 6
/* 804A9E20  40 82 00 70 */	bne lbl_804A9E90
/* 804A9E24  80 1F 10 AC */	lwz r0, 0x10ac(r31)
/* 804A9E28  90 01 00 08 */	stw r0, 8(r1)
/* 804A9E2C  3C 60 80 02 */	lis r3, fpcSch_JudgeByID__FPvPv@ha /* 0x80023590@ha */
/* 804A9E30  38 63 35 90 */	addi r3, r3, fpcSch_JudgeByID__FPvPv@l /* 0x80023590@l */
/* 804A9E34  38 81 00 08 */	addi r4, r1, 8
/* 804A9E38  4B B6 F9 C1 */	bl fopAcIt_Judge__FPFPvPv_PvPv
/* 804A9E3C  88 03 0C 3D */	lbz r0, 0xc3d(r3)
/* 804A9E40  28 00 00 02 */	cmplwi r0, 2
/* 804A9E44  41 82 00 0C */	beq lbl_804A9E50
/* 804A9E48  28 00 00 08 */	cmplwi r0, 8
/* 804A9E4C  41 80 00 44 */	blt lbl_804A9E90
lbl_804A9E50:
/* 804A9E50  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 804A9E54  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 804A9E58  88 1F 10 2D */	lbz r0, 0x102d(r31)
/* 804A9E5C  7C 00 07 74 */	extsb r0, r0
/* 804A9E60  54 00 10 3A */	slwi r0, r0, 2
/* 804A9E64  7C 9F 02 14 */	add r4, r31, r0
/* 804A9E68  80 84 0F 98 */	lwz r4, 0xf98(r4)
/* 804A9E6C  80 84 00 04 */	lwz r4, 4(r4)
/* 804A9E70  38 BF 01 0C */	addi r5, r31, 0x10c
/* 804A9E74  4B CF AF 2D */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 804A9E78  88 1F 10 2D */	lbz r0, 0x102d(r31)
/* 804A9E7C  7C 00 07 74 */	extsb r0, r0
/* 804A9E80  54 00 10 3A */	slwi r0, r0, 2
/* 804A9E84  7C 7F 02 14 */	add r3, r31, r0
/* 804A9E88  80 63 0F 98 */	lwz r3, 0xf98(r3)
/* 804A9E8C  4B B6 3E 39 */	bl mDoExt_modelUpdateDL__FP8J3DModel
lbl_804A9E90:
/* 804A9E90  38 60 00 01 */	li r3, 1
lbl_804A9E94:
/* 804A9E94  39 61 00 30 */	addi r11, r1, 0x30
/* 804A9E98  4B EB 83 89 */	bl _restgpr_27
/* 804A9E9C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 804A9EA0  7C 08 03 A6 */	mtlr r0
/* 804A9EA4  38 21 00 30 */	addi r1, r1, 0x30
/* 804A9EA8  4E 80 00 20 */	blr 
