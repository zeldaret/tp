lbl_80BD3CA0:
/* 80BD3CA0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80BD3CA4  7C 08 02 A6 */	mflr r0
/* 80BD3CA8  90 01 00 24 */	stw r0, 0x24(r1)
/* 80BD3CAC  39 61 00 20 */	addi r11, r1, 0x20
/* 80BD3CB0  4B 78 E5 24 */	b _savegpr_27
/* 80BD3CB4  7C 7F 1B 78 */	mr r31, r3
/* 80BD3CB8  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80BD3CBC  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80BD3CC0  38 80 00 00 */	li r4, 0
/* 80BD3CC4  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 80BD3CC8  38 DF 01 0C */	addi r6, r31, 0x10c
/* 80BD3CCC  4B 5C FA F8 */	b settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 80BD3CD0  3B 80 00 00 */	li r28, 0
/* 80BD3CD4  7F 9E E3 78 */	mr r30, r28
/* 80BD3CD8  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80BD3CDC  3B A3 CA 54 */	addi r29, r3, g_env_light@l
lbl_80BD3CE0:
/* 80BD3CE0  7F A3 EB 78 */	mr r3, r29
/* 80BD3CE4  38 1E 07 60 */	addi r0, r30, 0x760
/* 80BD3CE8  7C 9F 00 2E */	lwzx r4, r31, r0
/* 80BD3CEC  80 84 00 04 */	lwz r4, 4(r4)
/* 80BD3CF0  38 BF 01 0C */	addi r5, r31, 0x10c
/* 80BD3CF4  4B 5D 10 AC */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80BD3CF8  3B 9C 00 01 */	addi r28, r28, 1
/* 80BD3CFC  2C 1C 00 0A */	cmpwi r28, 0xa
/* 80BD3D00  3B DE 00 04 */	addi r30, r30, 4
/* 80BD3D04  41 80 FF DC */	blt lbl_80BD3CE0
/* 80BD3D08  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80BD3D0C  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l
/* 80BD3D10  80 04 5F 70 */	lwz r0, 0x5f70(r4)
/* 80BD3D14  3C 60 80 43 */	lis r3, j3dSys@ha
/* 80BD3D18  3B A3 4A C8 */	addi r29, r3, j3dSys@l
/* 80BD3D1C  90 1D 00 48 */	stw r0, 0x48(r29)
/* 80BD3D20  80 04 5F 74 */	lwz r0, 0x5f74(r4)
/* 80BD3D24  90 1D 00 4C */	stw r0, 0x4c(r29)
/* 80BD3D28  88 1F 07 50 */	lbz r0, 0x750(r31)
/* 80BD3D2C  28 00 00 00 */	cmplwi r0, 0
/* 80BD3D30  41 82 00 38 */	beq lbl_80BD3D68
/* 80BD3D34  3B 80 00 00 */	li r28, 0
/* 80BD3D38  3B C0 00 00 */	li r30, 0
/* 80BD3D3C  3B 64 0F 38 */	addi r27, r4, 0xf38
lbl_80BD3D40:
/* 80BD3D40  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80BD3D44  7C 05 07 74 */	extsb r5, r0
/* 80BD3D48  7F 63 DB 78 */	mr r3, r27
/* 80BD3D4C  38 1E 07 60 */	addi r0, r30, 0x760
/* 80BD3D50  7C 9F 00 2E */	lwzx r4, r31, r0
/* 80BD3D54  4B 45 8E 14 */	b entrySimpleModel__14dComIfG_play_cFP8J3DModeli
/* 80BD3D58  3B 9C 00 01 */	addi r28, r28, 1
/* 80BD3D5C  2C 1C 00 0A */	cmpwi r28, 0xa
/* 80BD3D60  3B DE 00 04 */	addi r30, r30, 4
/* 80BD3D64  41 80 FF DC */	blt lbl_80BD3D40
lbl_80BD3D68:
/* 80BD3D68  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80BD3D6C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80BD3D70  80 03 5F 80 */	lwz r0, 0x5f80(r3)
/* 80BD3D74  90 1D 00 48 */	stw r0, 0x48(r29)
/* 80BD3D78  80 03 5F 84 */	lwz r0, 0x5f84(r3)
/* 80BD3D7C  90 1D 00 4C */	stw r0, 0x4c(r29)
/* 80BD3D80  38 60 00 01 */	li r3, 1
/* 80BD3D84  39 61 00 20 */	addi r11, r1, 0x20
/* 80BD3D88  4B 78 E4 98 */	b _restgpr_27
/* 80BD3D8C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80BD3D90  7C 08 03 A6 */	mtlr r0
/* 80BD3D94  38 21 00 20 */	addi r1, r1, 0x20
/* 80BD3D98  4E 80 00 20 */	blr 
