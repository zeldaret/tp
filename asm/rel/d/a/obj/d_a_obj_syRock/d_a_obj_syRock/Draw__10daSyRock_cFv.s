lbl_80D03A4C:
/* 80D03A4C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D03A50  7C 08 02 A6 */	mflr r0
/* 80D03A54  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D03A58  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D03A5C  93 C1 00 08 */	stw r30, 8(r1)
/* 80D03A60  7C 7E 1B 78 */	mr r30, r3
/* 80D03A64  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80D03A68  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80D03A6C  38 80 00 10 */	li r4, 0x10
/* 80D03A70  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80D03A74  38 DE 01 0C */	addi r6, r30, 0x10c
/* 80D03A78  4B 49 FD 4D */	bl settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 80D03A7C  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80D03A80  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80D03A84  88 1E 09 9C */	lbz r0, 0x99c(r30)
/* 80D03A88  54 00 10 3A */	slwi r0, r0, 2
/* 80D03A8C  7C 9E 02 14 */	add r4, r30, r0
/* 80D03A90  80 84 05 C0 */	lwz r4, 0x5c0(r4)
/* 80D03A94  80 84 00 04 */	lwz r4, 4(r4)
/* 80D03A98  38 BE 01 0C */	addi r5, r30, 0x10c
/* 80D03A9C  4B 4A 13 05 */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80D03AA0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D03AA4  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D03AA8  80 04 5F 70 */	lwz r0, 0x5f70(r4)
/* 80D03AAC  3C 60 80 43 */	lis r3, j3dSys@ha /* 0x80434AC8@ha */
/* 80D03AB0  3B E3 4A C8 */	addi r31, r3, j3dSys@l /* 0x80434AC8@l */
/* 80D03AB4  90 1F 00 48 */	stw r0, 0x48(r31)
/* 80D03AB8  80 04 5F 74 */	lwz r0, 0x5f74(r4)
/* 80D03ABC  90 1F 00 4C */	stw r0, 0x4c(r31)
/* 80D03AC0  88 1E 09 9C */	lbz r0, 0x99c(r30)
/* 80D03AC4  54 00 10 3A */	slwi r0, r0, 2
/* 80D03AC8  7C 7E 02 14 */	add r3, r30, r0
/* 80D03ACC  80 63 05 C0 */	lwz r3, 0x5c0(r3)
/* 80D03AD0  4B 30 A1 F5 */	bl mDoExt_modelUpdateDL__FP8J3DModel
/* 80D03AD4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D03AD8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D03ADC  80 03 5F 80 */	lwz r0, 0x5f80(r3)
/* 80D03AE0  90 1F 00 48 */	stw r0, 0x48(r31)
/* 80D03AE4  80 03 5F 84 */	lwz r0, 0x5f84(r3)
/* 80D03AE8  90 1F 00 4C */	stw r0, 0x4c(r31)
/* 80D03AEC  38 60 00 01 */	li r3, 1
/* 80D03AF0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D03AF4  83 C1 00 08 */	lwz r30, 8(r1)
/* 80D03AF8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D03AFC  7C 08 03 A6 */	mtlr r0
/* 80D03B00  38 21 00 10 */	addi r1, r1, 0x10
/* 80D03B04  4E 80 00 20 */	blr 
