lbl_80C582FC:
/* 80C582FC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C58300  7C 08 02 A6 */	mflr r0
/* 80C58304  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C58308  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C5830C  93 C1 00 08 */	stw r30, 8(r1)
/* 80C58310  7C 7E 1B 78 */	mr r30, r3
/* 80C58314  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80C58318  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80C5831C  38 80 00 10 */	li r4, 0x10
/* 80C58320  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80C58324  38 DE 01 0C */	addi r6, r30, 0x10c
/* 80C58328  4B 54 B4 9D */	bl settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 80C5832C  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80C58330  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80C58334  80 9E 05 70 */	lwz r4, 0x570(r30)
/* 80C58338  80 84 00 04 */	lwz r4, 4(r4)
/* 80C5833C  38 BE 01 0C */	addi r5, r30, 0x10c
/* 80C58340  4B 54 CA 61 */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80C58344  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C58348  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C5834C  80 04 5F 70 */	lwz r0, 0x5f70(r4)
/* 80C58350  3C 60 80 43 */	lis r3, j3dSys@ha /* 0x80434AC8@ha */
/* 80C58354  3B E3 4A C8 */	addi r31, r3, j3dSys@l /* 0x80434AC8@l */
/* 80C58358  90 1F 00 48 */	stw r0, 0x48(r31)
/* 80C5835C  80 04 5F 74 */	lwz r0, 0x5f74(r4)
/* 80C58360  90 1F 00 4C */	stw r0, 0x4c(r31)
/* 80C58364  80 7E 05 70 */	lwz r3, 0x570(r30)
/* 80C58368  4B 3B 59 5D */	bl mDoExt_modelUpdateDL__FP8J3DModel
/* 80C5836C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C58370  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C58374  80 03 5F 80 */	lwz r0, 0x5f80(r3)
/* 80C58378  90 1F 00 48 */	stw r0, 0x48(r31)
/* 80C5837C  80 03 5F 84 */	lwz r0, 0x5f84(r3)
/* 80C58380  90 1F 00 4C */	stw r0, 0x4c(r31)
/* 80C58384  38 60 00 01 */	li r3, 1
/* 80C58388  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C5838C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80C58390  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C58394  7C 08 03 A6 */	mtlr r0
/* 80C58398  38 21 00 10 */	addi r1, r1, 0x10
/* 80C5839C  4E 80 00 20 */	blr 
