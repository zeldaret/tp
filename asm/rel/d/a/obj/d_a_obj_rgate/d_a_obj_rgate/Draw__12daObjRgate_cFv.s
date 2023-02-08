lbl_80CBBE18:
/* 80CBBE18  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CBBE1C  7C 08 02 A6 */	mflr r0
/* 80CBBE20  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CBBE24  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CBBE28  93 C1 00 08 */	stw r30, 8(r1)
/* 80CBBE2C  7C 7F 1B 78 */	mr r31, r3
/* 80CBBE30  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80CBBE34  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80CBBE38  38 80 00 10 */	li r4, 0x10
/* 80CBBE3C  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 80CBBE40  38 DF 01 0C */	addi r6, r31, 0x10c
/* 80CBBE44  4B 4E 79 81 */	bl settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 80CBBE48  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80CBBE4C  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80CBBE50  80 9F 05 A8 */	lwz r4, 0x5a8(r31)
/* 80CBBE54  80 84 00 04 */	lwz r4, 4(r4)
/* 80CBBE58  38 BF 01 0C */	addi r5, r31, 0x10c
/* 80CBBE5C  4B 4E 8F 45 */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80CBBE60  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CBBE64  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CBBE68  80 04 5F 70 */	lwz r0, 0x5f70(r4)
/* 80CBBE6C  3C 60 80 43 */	lis r3, j3dSys@ha /* 0x80434AC8@ha */
/* 80CBBE70  3B C3 4A C8 */	addi r30, r3, j3dSys@l /* 0x80434AC8@l */
/* 80CBBE74  90 1E 00 48 */	stw r0, 0x48(r30)
/* 80CBBE78  80 04 5F 74 */	lwz r0, 0x5f74(r4)
/* 80CBBE7C  90 1E 00 4C */	stw r0, 0x4c(r30)
/* 80CBBE80  80 7F 05 A8 */	lwz r3, 0x5a8(r31)
/* 80CBBE84  4B 35 1E 41 */	bl mDoExt_modelUpdateDL__FP8J3DModel
/* 80CBBE88  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CBBE8C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CBBE90  80 03 5F 80 */	lwz r0, 0x5f80(r3)
/* 80CBBE94  90 1E 00 48 */	stw r0, 0x48(r30)
/* 80CBBE98  80 03 5F 84 */	lwz r0, 0x5f84(r3)
/* 80CBBE9C  90 1E 00 4C */	stw r0, 0x4c(r30)
/* 80CBBEA0  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80CBBEA4  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 80CBBEA8  28 00 00 FF */	cmplwi r0, 0xff
/* 80CBBEAC  41 82 00 6C */	beq lbl_80CBBF18
/* 80CBBEB0  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80CBBEB4  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80CBBEB8  38 80 00 10 */	li r4, 0x10
/* 80CBBEBC  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 80CBBEC0  38 DF 01 0C */	addi r6, r31, 0x10c
/* 80CBBEC4  4B 4E 79 01 */	bl settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 80CBBEC8  80 9F 05 B0 */	lwz r4, 0x5b0(r31)
/* 80CBBECC  28 04 00 00 */	cmplwi r4, 0
/* 80CBBED0  41 82 00 20 */	beq lbl_80CBBEF0
/* 80CBBED4  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80CBBED8  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80CBBEDC  80 84 00 04 */	lwz r4, 4(r4)
/* 80CBBEE0  38 BF 01 0C */	addi r5, r31, 0x10c
/* 80CBBEE4  4B 4E 8E BD */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80CBBEE8  80 7F 05 B0 */	lwz r3, 0x5b0(r31)
/* 80CBBEEC  4B 35 1D D9 */	bl mDoExt_modelUpdateDL__FP8J3DModel
lbl_80CBBEF0:
/* 80CBBEF0  80 9F 05 AC */	lwz r4, 0x5ac(r31)
/* 80CBBEF4  28 04 00 00 */	cmplwi r4, 0
/* 80CBBEF8  41 82 00 20 */	beq lbl_80CBBF18
/* 80CBBEFC  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80CBBF00  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80CBBF04  80 84 00 04 */	lwz r4, 4(r4)
/* 80CBBF08  38 BF 01 0C */	addi r5, r31, 0x10c
/* 80CBBF0C  4B 4E 8E 95 */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80CBBF10  80 7F 05 AC */	lwz r3, 0x5ac(r31)
/* 80CBBF14  4B 35 1D B1 */	bl mDoExt_modelUpdateDL__FP8J3DModel
lbl_80CBBF18:
/* 80CBBF18  38 60 00 01 */	li r3, 1
/* 80CBBF1C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CBBF20  83 C1 00 08 */	lwz r30, 8(r1)
/* 80CBBF24  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CBBF28  7C 08 03 A6 */	mtlr r0
/* 80CBBF2C  38 21 00 10 */	addi r1, r1, 0x10
/* 80CBBF30  4E 80 00 20 */	blr 
