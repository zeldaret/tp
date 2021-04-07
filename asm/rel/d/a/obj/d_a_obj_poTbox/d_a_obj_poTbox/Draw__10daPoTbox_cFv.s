lbl_80CB4C94:
/* 80CB4C94  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CB4C98  7C 08 02 A6 */	mflr r0
/* 80CB4C9C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CB4CA0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CB4CA4  93 C1 00 08 */	stw r30, 8(r1)
/* 80CB4CA8  7C 7F 1B 78 */	mr r31, r3
/* 80CB4CAC  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80CB4CB0  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80CB4CB4  38 80 00 10 */	li r4, 0x10
/* 80CB4CB8  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 80CB4CBC  38 DF 01 0C */	addi r6, r31, 0x10c
/* 80CB4CC0  4B 4E EB 05 */	bl settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 80CB4CC4  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80CB4CC8  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80CB4CCC  80 9F 05 A8 */	lwz r4, 0x5a8(r31)
/* 80CB4CD0  80 84 00 04 */	lwz r4, 4(r4)
/* 80CB4CD4  38 BF 01 0C */	addi r5, r31, 0x10c
/* 80CB4CD8  4B 4F 00 C9 */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80CB4CDC  80 9F 05 AC */	lwz r4, 0x5ac(r31)
/* 80CB4CE0  28 04 00 00 */	cmplwi r4, 0
/* 80CB4CE4  41 82 00 18 */	beq lbl_80CB4CFC
/* 80CB4CE8  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80CB4CEC  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80CB4CF0  80 84 00 04 */	lwz r4, 4(r4)
/* 80CB4CF4  38 BF 01 0C */	addi r5, r31, 0x10c
/* 80CB4CF8  4B 4F 00 A9 */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
lbl_80CB4CFC:
/* 80CB4CFC  80 9F 05 B0 */	lwz r4, 0x5b0(r31)
/* 80CB4D00  28 04 00 00 */	cmplwi r4, 0
/* 80CB4D04  41 82 00 18 */	beq lbl_80CB4D1C
/* 80CB4D08  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80CB4D0C  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80CB4D10  80 84 00 04 */	lwz r4, 4(r4)
/* 80CB4D14  38 BF 01 0C */	addi r5, r31, 0x10c
/* 80CB4D18  4B 4F 00 89 */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
lbl_80CB4D1C:
/* 80CB4D1C  88 1F 06 06 */	lbz r0, 0x606(r31)
/* 80CB4D20  28 00 00 00 */	cmplwi r0, 0
/* 80CB4D24  40 82 00 50 */	bne lbl_80CB4D74
/* 80CB4D28  88 1F 06 05 */	lbz r0, 0x605(r31)
/* 80CB4D2C  28 00 00 01 */	cmplwi r0, 1
/* 80CB4D30  40 82 00 58 */	bne lbl_80CB4D88
/* 80CB4D34  80 7F 05 AC */	lwz r3, 0x5ac(r31)
/* 80CB4D38  80 83 00 04 */	lwz r4, 4(r3)
/* 80CB4D3C  38 7F 05 B8 */	addi r3, r31, 0x5b8
/* 80CB4D40  C0 3F 05 C8 */	lfs f1, 0x5c8(r31)
/* 80CB4D44  4B 35 8C 89 */	bl entry__13mDoExt_bckAnmFP12J3DModelDataf
/* 80CB4D48  80 7F 05 B0 */	lwz r3, 0x5b0(r31)
/* 80CB4D4C  83 C3 00 04 */	lwz r30, 4(r3)
/* 80CB4D50  C0 3F 05 E4 */	lfs f1, 0x5e4(r31)
/* 80CB4D54  38 7F 05 D4 */	addi r3, r31, 0x5d4
/* 80CB4D58  38 9E 00 58 */	addi r4, r30, 0x58
/* 80CB4D5C  4B 35 89 7D */	bl entry__13mDoExt_btkAnmFP16J3DMaterialTablef
/* 80CB4D60  C0 3F 05 FC */	lfs f1, 0x5fc(r31)
/* 80CB4D64  38 7F 05 EC */	addi r3, r31, 0x5ec
/* 80CB4D68  38 9E 00 58 */	addi r4, r30, 0x58
/* 80CB4D6C  4B 35 8A 3D */	bl entry__13mDoExt_brkAnmFP16J3DMaterialTablef
/* 80CB4D70  48 00 00 18 */	b lbl_80CB4D88
lbl_80CB4D74:
/* 80CB4D74  80 7F 05 A8 */	lwz r3, 0x5a8(r31)
/* 80CB4D78  80 83 00 04 */	lwz r4, 4(r3)
/* 80CB4D7C  38 7F 05 B8 */	addi r3, r31, 0x5b8
/* 80CB4D80  C0 3F 05 C8 */	lfs f1, 0x5c8(r31)
/* 80CB4D84  4B 35 8C 49 */	bl entry__13mDoExt_bckAnmFP12J3DModelDataf
lbl_80CB4D88:
/* 80CB4D88  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CB4D8C  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CB4D90  80 04 5F 70 */	lwz r0, 0x5f70(r4)
/* 80CB4D94  3C 60 80 43 */	lis r3, j3dSys@ha /* 0x80434AC8@ha */
/* 80CB4D98  3B C3 4A C8 */	addi r30, r3, j3dSys@l /* 0x80434AC8@l */
/* 80CB4D9C  90 1E 00 48 */	stw r0, 0x48(r30)
/* 80CB4DA0  80 04 5F 74 */	lwz r0, 0x5f74(r4)
/* 80CB4DA4  90 1E 00 4C */	stw r0, 0x4c(r30)
/* 80CB4DA8  88 1F 06 05 */	lbz r0, 0x605(r31)
/* 80CB4DAC  28 00 00 00 */	cmplwi r0, 0
/* 80CB4DB0  40 82 00 10 */	bne lbl_80CB4DC0
/* 80CB4DB4  80 7F 05 A8 */	lwz r3, 0x5a8(r31)
/* 80CB4DB8  4B 35 8F 0D */	bl mDoExt_modelUpdateDL__FP8J3DModel
/* 80CB4DBC  48 00 00 24 */	b lbl_80CB4DE0
lbl_80CB4DC0:
/* 80CB4DC0  80 7F 05 AC */	lwz r3, 0x5ac(r31)
/* 80CB4DC4  28 03 00 00 */	cmplwi r3, 0
/* 80CB4DC8  41 82 00 08 */	beq lbl_80CB4DD0
/* 80CB4DCC  4B 35 8E F9 */	bl mDoExt_modelUpdateDL__FP8J3DModel
lbl_80CB4DD0:
/* 80CB4DD0  80 7F 05 B0 */	lwz r3, 0x5b0(r31)
/* 80CB4DD4  28 03 00 00 */	cmplwi r3, 0
/* 80CB4DD8  41 82 00 08 */	beq lbl_80CB4DE0
/* 80CB4DDC  4B 35 8E E9 */	bl mDoExt_modelUpdateDL__FP8J3DModel
lbl_80CB4DE0:
/* 80CB4DE0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CB4DE4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CB4DE8  80 03 5F 80 */	lwz r0, 0x5f80(r3)
/* 80CB4DEC  90 1E 00 48 */	stw r0, 0x48(r30)
/* 80CB4DF0  80 03 5F 84 */	lwz r0, 0x5f84(r3)
/* 80CB4DF4  90 1E 00 4C */	stw r0, 0x4c(r30)
/* 80CB4DF8  38 60 00 01 */	li r3, 1
/* 80CB4DFC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CB4E00  83 C1 00 08 */	lwz r30, 8(r1)
/* 80CB4E04  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CB4E08  7C 08 03 A6 */	mtlr r0
/* 80CB4E0C  38 21 00 10 */	addi r1, r1, 0x10
/* 80CB4E10  4E 80 00 20 */	blr 
