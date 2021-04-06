lbl_80C84FF4:
/* 80C84FF4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C84FF8  7C 08 02 A6 */	mflr r0
/* 80C84FFC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C85000  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C85004  93 C1 00 08 */	stw r30, 8(r1)
/* 80C85008  7C 7E 1B 78 */	mr r30, r3
/* 80C8500C  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80C85010  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80C85014  38 80 00 10 */	li r4, 0x10
/* 80C85018  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80C8501C  38 DE 01 0C */	addi r6, r30, 0x10c
/* 80C85020  4B 51 E7 A5 */	bl settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 80C85024  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80C85028  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80C8502C  80 9E 05 A8 */	lwz r4, 0x5a8(r30)
/* 80C85030  80 84 00 04 */	lwz r4, 4(r4)
/* 80C85034  38 BE 01 0C */	addi r5, r30, 0x10c
/* 80C85038  4B 51 FD 69 */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80C8503C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C85040  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C85044  80 04 5F 70 */	lwz r0, 0x5f70(r4)
/* 80C85048  3C 60 80 43 */	lis r3, j3dSys@ha /* 0x80434AC8@ha */
/* 80C8504C  3B E3 4A C8 */	addi r31, r3, j3dSys@l /* 0x80434AC8@l */
/* 80C85050  90 1F 00 48 */	stw r0, 0x48(r31)
/* 80C85054  80 04 5F 74 */	lwz r0, 0x5f74(r4)
/* 80C85058  90 1F 00 4C */	stw r0, 0x4c(r31)
/* 80C8505C  80 7E 05 A8 */	lwz r3, 0x5a8(r30)
/* 80C85060  4B 38 8C 65 */	bl mDoExt_modelUpdateDL__FP8J3DModel
/* 80C85064  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C85068  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C8506C  80 03 5F 80 */	lwz r0, 0x5f80(r3)
/* 80C85070  90 1F 00 48 */	stw r0, 0x48(r31)
/* 80C85074  80 03 5F 84 */	lwz r0, 0x5f84(r3)
/* 80C85078  90 1F 00 4C */	stw r0, 0x4c(r31)
/* 80C8507C  38 60 00 01 */	li r3, 1
/* 80C85080  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C85084  83 C1 00 08 */	lwz r30, 8(r1)
/* 80C85088  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C8508C  7C 08 03 A6 */	mtlr r0
/* 80C85090  38 21 00 10 */	addi r1, r1, 0x10
/* 80C85094  4E 80 00 20 */	blr 
