lbl_80D412B0:
/* 80D412B0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D412B4  7C 08 02 A6 */	mflr r0
/* 80D412B8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D412BC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D412C0  93 C1 00 08 */	stw r30, 8(r1)
/* 80D412C4  7C 7E 1B 78 */	mr r30, r3
/* 80D412C8  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80D412CC  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80D412D0  38 80 00 10 */	li r4, 0x10
/* 80D412D4  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80D412D8  38 DE 01 0C */	addi r6, r30, 0x10c
/* 80D412DC  4B 46 24 E9 */	bl settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 80D412E0  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80D412E4  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80D412E8  80 9E 07 20 */	lwz r4, 0x720(r30)
/* 80D412EC  80 84 00 04 */	lwz r4, 4(r4)
/* 80D412F0  38 BE 01 0C */	addi r5, r30, 0x10c
/* 80D412F4  4B 46 3A AD */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80D412F8  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80D412FC  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80D41300  80 9E 07 24 */	lwz r4, 0x724(r30)
/* 80D41304  80 84 00 04 */	lwz r4, 4(r4)
/* 80D41308  38 BE 01 0C */	addi r5, r30, 0x10c
/* 80D4130C  4B 46 3A 95 */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80D41310  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D41314  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D41318  80 04 5F 70 */	lwz r0, 0x5f70(r4)
/* 80D4131C  3C 60 80 43 */	lis r3, j3dSys@ha /* 0x80434AC8@ha */
/* 80D41320  3B E3 4A C8 */	addi r31, r3, j3dSys@l /* 0x80434AC8@l */
/* 80D41324  90 1F 00 48 */	stw r0, 0x48(r31)
/* 80D41328  80 04 5F 74 */	lwz r0, 0x5f74(r4)
/* 80D4132C  90 1F 00 4C */	stw r0, 0x4c(r31)
/* 80D41330  80 7E 07 20 */	lwz r3, 0x720(r30)
/* 80D41334  4B 2C C9 91 */	bl mDoExt_modelUpdateDL__FP8J3DModel
/* 80D41338  88 1E 07 2A */	lbz r0, 0x72a(r30)
/* 80D4133C  28 00 00 00 */	cmplwi r0, 0
/* 80D41340  41 82 00 0C */	beq lbl_80D4134C
/* 80D41344  80 7E 07 24 */	lwz r3, 0x724(r30)
/* 80D41348  4B 2C C9 7D */	bl mDoExt_modelUpdateDL__FP8J3DModel
lbl_80D4134C:
/* 80D4134C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D41350  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D41354  80 03 5F 80 */	lwz r0, 0x5f80(r3)
/* 80D41358  90 1F 00 48 */	stw r0, 0x48(r31)
/* 80D4135C  80 03 5F 84 */	lwz r0, 0x5f84(r3)
/* 80D41360  90 1F 00 4C */	stw r0, 0x4c(r31)
/* 80D41364  38 60 00 01 */	li r3, 1
/* 80D41368  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D4136C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80D41370  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D41374  7C 08 03 A6 */	mtlr r0
/* 80D41378  38 21 00 10 */	addi r1, r1, 0x10
/* 80D4137C  4E 80 00 20 */	blr 
