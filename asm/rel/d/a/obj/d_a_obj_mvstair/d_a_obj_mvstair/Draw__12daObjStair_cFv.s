lbl_80C9D710:
/* 80C9D710  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C9D714  7C 08 02 A6 */	mflr r0
/* 80C9D718  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C9D71C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C9D720  93 C1 00 08 */	stw r30, 8(r1)
/* 80C9D724  7C 7E 1B 78 */	mr r30, r3
/* 80C9D728  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80C9D72C  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80C9D730  38 80 00 10 */	li r4, 0x10
/* 80C9D734  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80C9D738  38 DE 01 0C */	addi r6, r30, 0x10c
/* 80C9D73C  4B 50 60 89 */	bl settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 80C9D740  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80C9D744  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80C9D748  80 9E 05 A8 */	lwz r4, 0x5a8(r30)
/* 80C9D74C  80 84 00 04 */	lwz r4, 4(r4)
/* 80C9D750  38 BE 01 0C */	addi r5, r30, 0x10c
/* 80C9D754  4B 50 76 4D */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80C9D758  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C9D75C  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C9D760  80 04 5F 70 */	lwz r0, 0x5f70(r4)
/* 80C9D764  3C 60 80 43 */	lis r3, j3dSys@ha /* 0x80434AC8@ha */
/* 80C9D768  3B E3 4A C8 */	addi r31, r3, j3dSys@l /* 0x80434AC8@l */
/* 80C9D76C  90 1F 00 48 */	stw r0, 0x48(r31)
/* 80C9D770  80 04 5F 74 */	lwz r0, 0x5f74(r4)
/* 80C9D774  90 1F 00 4C */	stw r0, 0x4c(r31)
/* 80C9D778  80 7E 05 A8 */	lwz r3, 0x5a8(r30)
/* 80C9D77C  4B 37 05 49 */	bl mDoExt_modelUpdateDL__FP8J3DModel
/* 80C9D780  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C9D784  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C9D788  80 03 5F 80 */	lwz r0, 0x5f80(r3)
/* 80C9D78C  90 1F 00 48 */	stw r0, 0x48(r31)
/* 80C9D790  80 03 5F 84 */	lwz r0, 0x5f84(r3)
/* 80C9D794  90 1F 00 4C */	stw r0, 0x4c(r31)
/* 80C9D798  38 60 00 01 */	li r3, 1
/* 80C9D79C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C9D7A0  83 C1 00 08 */	lwz r30, 8(r1)
/* 80C9D7A4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C9D7A8  7C 08 03 A6 */	mtlr r0
/* 80C9D7AC  38 21 00 10 */	addi r1, r1, 0x10
/* 80C9D7B0  4E 80 00 20 */	blr 
