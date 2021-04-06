lbl_80B9C450:
/* 80B9C450  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B9C454  7C 08 02 A6 */	mflr r0
/* 80B9C458  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B9C45C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B9C460  7C 7F 1B 78 */	mr r31, r3
/* 80B9C464  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80B9C468  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80B9C46C  38 80 00 10 */	li r4, 0x10
/* 80B9C470  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 80B9C474  38 DF 01 0C */	addi r6, r31, 0x10c
/* 80B9C478  4B 60 73 4D */	bl settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 80B9C47C  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80B9C480  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80B9C484  80 9F 05 90 */	lwz r4, 0x590(r31)
/* 80B9C488  80 84 00 04 */	lwz r4, 4(r4)
/* 80B9C48C  38 BF 01 0C */	addi r5, r31, 0x10c
/* 80B9C490  4B 60 89 11 */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80B9C494  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80B9C498  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80B9C49C  80 04 5F 70 */	lwz r0, 0x5f70(r4)
/* 80B9C4A0  3C 60 80 43 */	lis r3, j3dSys@ha /* 0x80434AC8@ha */
/* 80B9C4A4  38 63 4A C8 */	addi r3, r3, j3dSys@l /* 0x80434AC8@l */
/* 80B9C4A8  90 03 00 48 */	stw r0, 0x48(r3)
/* 80B9C4AC  80 04 5F 74 */	lwz r0, 0x5f74(r4)
/* 80B9C4B0  90 03 00 4C */	stw r0, 0x4c(r3)
/* 80B9C4B4  80 7F 05 90 */	lwz r3, 0x590(r31)
/* 80B9C4B8  80 83 00 04 */	lwz r4, 4(r3)
/* 80B9C4BC  38 7F 05 94 */	addi r3, r31, 0x594
/* 80B9C4C0  C0 3F 05 A4 */	lfs f1, 0x5a4(r31)
/* 80B9C4C4  4B 47 15 09 */	bl entry__13mDoExt_bckAnmFP12J3DModelDataf
/* 80B9C4C8  80 7F 05 90 */	lwz r3, 0x590(r31)
/* 80B9C4CC  4B 47 17 F9 */	bl mDoExt_modelUpdateDL__FP8J3DModel
/* 80B9C4D0  80 7F 05 90 */	lwz r3, 0x590(r31)
/* 80B9C4D4  80 63 00 04 */	lwz r3, 4(r3)
/* 80B9C4D8  80 63 00 28 */	lwz r3, 0x28(r3)
/* 80B9C4DC  80 63 00 00 */	lwz r3, 0(r3)
/* 80B9C4E0  38 00 00 00 */	li r0, 0
/* 80B9C4E4  90 03 00 54 */	stw r0, 0x54(r3)
/* 80B9C4E8  38 60 00 01 */	li r3, 1
/* 80B9C4EC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B9C4F0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B9C4F4  7C 08 03 A6 */	mtlr r0
/* 80B9C4F8  38 21 00 10 */	addi r1, r1, 0x10
/* 80B9C4FC  4E 80 00 20 */	blr 
