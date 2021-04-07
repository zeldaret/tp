lbl_80BD0058:
/* 80BD0058  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BD005C  7C 08 02 A6 */	mflr r0
/* 80BD0060  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BD0064  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BD0068  7C 7F 1B 78 */	mr r31, r3
/* 80BD006C  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80BD0070  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80BD0074  38 80 00 10 */	li r4, 0x10
/* 80BD0078  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 80BD007C  38 DF 01 0C */	addi r6, r31, 0x10c
/* 80BD0080  4B 5D 37 45 */	bl settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 80BD0084  80 1F 05 A0 */	lwz r0, 0x5a0(r31)
/* 80BD0088  2C 00 00 01 */	cmpwi r0, 1
/* 80BD008C  40 82 00 38 */	bne lbl_80BD00C4
/* 80BD0090  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80BD0094  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80BD0098  80 9F 06 60 */	lwz r4, 0x660(r31)
/* 80BD009C  80 84 00 04 */	lwz r4, 4(r4)
/* 80BD00A0  38 BF 01 0C */	addi r5, r31, 0x10c
/* 80BD00A4  4B 5D 4C FD */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80BD00A8  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80BD00AC  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80BD00B0  80 9F 06 64 */	lwz r4, 0x664(r31)
/* 80BD00B4  80 84 00 04 */	lwz r4, 4(r4)
/* 80BD00B8  38 BF 01 0C */	addi r5, r31, 0x10c
/* 80BD00BC  4B 5D 4C E5 */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80BD00C0  48 00 00 1C */	b lbl_80BD00DC
lbl_80BD00C4:
/* 80BD00C4  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80BD00C8  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80BD00CC  80 9F 06 5C */	lwz r4, 0x65c(r31)
/* 80BD00D0  80 84 00 04 */	lwz r4, 4(r4)
/* 80BD00D4  38 BF 01 0C */	addi r5, r31, 0x10c
/* 80BD00D8  4B 5D 4C C9 */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
lbl_80BD00DC:
/* 80BD00DC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80BD00E0  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80BD00E4  80 04 5F 70 */	lwz r0, 0x5f70(r4)
/* 80BD00E8  3C 60 80 43 */	lis r3, j3dSys@ha /* 0x80434AC8@ha */
/* 80BD00EC  38 63 4A C8 */	addi r3, r3, j3dSys@l /* 0x80434AC8@l */
/* 80BD00F0  90 03 00 48 */	stw r0, 0x48(r3)
/* 80BD00F4  80 04 5F 74 */	lwz r0, 0x5f74(r4)
/* 80BD00F8  90 03 00 4C */	stw r0, 0x4c(r3)
/* 80BD00FC  80 1F 05 A0 */	lwz r0, 0x5a0(r31)
/* 80BD0100  2C 00 00 01 */	cmpwi r0, 1
/* 80BD0104  40 82 00 18 */	bne lbl_80BD011C
/* 80BD0108  80 7F 06 60 */	lwz r3, 0x660(r31)
/* 80BD010C  4B 43 DB B9 */	bl mDoExt_modelUpdateDL__FP8J3DModel
/* 80BD0110  80 7F 06 64 */	lwz r3, 0x664(r31)
/* 80BD0114  4B 43 DB B1 */	bl mDoExt_modelUpdateDL__FP8J3DModel
/* 80BD0118  48 00 00 0C */	b lbl_80BD0124
lbl_80BD011C:
/* 80BD011C  80 7F 06 5C */	lwz r3, 0x65c(r31)
/* 80BD0120  4B 43 DB A5 */	bl mDoExt_modelUpdateDL__FP8J3DModel
lbl_80BD0124:
/* 80BD0124  38 60 00 01 */	li r3, 1
/* 80BD0128  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BD012C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BD0130  7C 08 03 A6 */	mtlr r0
/* 80BD0134  38 21 00 10 */	addi r1, r1, 0x10
/* 80BD0138  4E 80 00 20 */	blr 
