lbl_8058A5B8:
/* 8058A5B8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8058A5BC  7C 08 02 A6 */	mflr r0
/* 8058A5C0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8058A5C4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8058A5C8  93 C1 00 08 */	stw r30, 8(r1)
/* 8058A5CC  7C 7F 1B 78 */	mr r31, r3
/* 8058A5D0  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 8058A5D4  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 8058A5D8  38 80 00 10 */	li r4, 0x10
/* 8058A5DC  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 8058A5E0  38 DF 01 0C */	addi r6, r31, 0x10c
/* 8058A5E4  4B C1 91 E1 */	bl settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 8058A5E8  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 8058A5EC  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 8058A5F0  80 9F 05 A8 */	lwz r4, 0x5a8(r31)
/* 8058A5F4  80 84 00 04 */	lwz r4, 4(r4)
/* 8058A5F8  38 BF 01 0C */	addi r5, r31, 0x10c
/* 8058A5FC  4B C1 A7 A5 */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 8058A600  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 8058A604  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 8058A608  80 9F 05 AC */	lwz r4, 0x5ac(r31)
/* 8058A60C  80 84 00 04 */	lwz r4, 4(r4)
/* 8058A610  38 BF 01 0C */	addi r5, r31, 0x10c
/* 8058A614  4B C1 A7 8D */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 8058A618  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8058A61C  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8058A620  80 04 5F 70 */	lwz r0, 0x5f70(r4)
/* 8058A624  3C 60 80 43 */	lis r3, j3dSys@ha /* 0x80434AC8@ha */
/* 8058A628  3B C3 4A C8 */	addi r30, r3, j3dSys@l /* 0x80434AC8@l */
/* 8058A62C  90 1E 00 48 */	stw r0, 0x48(r30)
/* 8058A630  80 04 5F 74 */	lwz r0, 0x5f74(r4)
/* 8058A634  90 1E 00 4C */	stw r0, 0x4c(r30)
/* 8058A638  80 7F 05 A8 */	lwz r3, 0x5a8(r31)
/* 8058A63C  4B A8 36 89 */	bl mDoExt_modelUpdateDL__FP8J3DModel
/* 8058A640  80 7F 05 AC */	lwz r3, 0x5ac(r31)
/* 8058A644  4B A8 36 81 */	bl mDoExt_modelUpdateDL__FP8J3DModel
/* 8058A648  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8058A64C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8058A650  80 03 5F 80 */	lwz r0, 0x5f80(r3)
/* 8058A654  90 1E 00 48 */	stw r0, 0x48(r30)
/* 8058A658  80 03 5F 84 */	lwz r0, 0x5f84(r3)
/* 8058A65C  90 1E 00 4C */	stw r0, 0x4c(r30)
/* 8058A660  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 8058A664  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 8058A668  28 00 00 FF */	cmplwi r0, 0xff
/* 8058A66C  41 82 00 6C */	beq lbl_8058A6D8
/* 8058A670  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 8058A674  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 8058A678  38 80 00 10 */	li r4, 0x10
/* 8058A67C  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 8058A680  38 DF 01 0C */	addi r6, r31, 0x10c
/* 8058A684  4B C1 91 41 */	bl settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 8058A688  80 9F 05 B4 */	lwz r4, 0x5b4(r31)
/* 8058A68C  28 04 00 00 */	cmplwi r4, 0
/* 8058A690  41 82 00 20 */	beq lbl_8058A6B0
/* 8058A694  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 8058A698  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 8058A69C  80 84 00 04 */	lwz r4, 4(r4)
/* 8058A6A0  38 BF 01 0C */	addi r5, r31, 0x10c
/* 8058A6A4  4B C1 A6 FD */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 8058A6A8  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 8058A6AC  4B A8 36 19 */	bl mDoExt_modelUpdateDL__FP8J3DModel
lbl_8058A6B0:
/* 8058A6B0  80 9F 05 B0 */	lwz r4, 0x5b0(r31)
/* 8058A6B4  28 04 00 00 */	cmplwi r4, 0
/* 8058A6B8  41 82 00 20 */	beq lbl_8058A6D8
/* 8058A6BC  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 8058A6C0  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 8058A6C4  80 84 00 04 */	lwz r4, 4(r4)
/* 8058A6C8  38 BF 01 0C */	addi r5, r31, 0x10c
/* 8058A6CC  4B C1 A6 D5 */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 8058A6D0  80 7F 05 B0 */	lwz r3, 0x5b0(r31)
/* 8058A6D4  4B A8 35 F1 */	bl mDoExt_modelUpdateDL__FP8J3DModel
lbl_8058A6D8:
/* 8058A6D8  38 60 00 01 */	li r3, 1
/* 8058A6DC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8058A6E0  83 C1 00 08 */	lwz r30, 8(r1)
/* 8058A6E4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8058A6E8  7C 08 03 A6 */	mtlr r0
/* 8058A6EC  38 21 00 10 */	addi r1, r1, 0x10
/* 8058A6F0  4E 80 00 20 */	blr 
