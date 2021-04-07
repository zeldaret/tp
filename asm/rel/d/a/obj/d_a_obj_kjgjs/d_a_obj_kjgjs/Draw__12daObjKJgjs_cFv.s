lbl_80C46320:
/* 80C46320  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C46324  7C 08 02 A6 */	mflr r0
/* 80C46328  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C4632C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C46330  93 C1 00 08 */	stw r30, 8(r1)
/* 80C46334  7C 7E 1B 78 */	mr r30, r3
/* 80C46338  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80C4633C  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80C46340  38 80 00 10 */	li r4, 0x10
/* 80C46344  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80C46348  38 DE 01 0C */	addi r6, r30, 0x10c
/* 80C4634C  4B 55 D4 79 */	bl settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 80C46350  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80C46354  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80C46358  80 9E 06 08 */	lwz r4, 0x608(r30)
/* 80C4635C  80 84 00 04 */	lwz r4, 4(r4)
/* 80C46360  38 BE 01 0C */	addi r5, r30, 0x10c
/* 80C46364  4B 55 EA 3D */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80C46368  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C4636C  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C46370  80 04 5F 70 */	lwz r0, 0x5f70(r4)
/* 80C46374  3C 60 80 43 */	lis r3, j3dSys@ha /* 0x80434AC8@ha */
/* 80C46378  3B E3 4A C8 */	addi r31, r3, j3dSys@l /* 0x80434AC8@l */
/* 80C4637C  90 1F 00 48 */	stw r0, 0x48(r31)
/* 80C46380  80 04 5F 74 */	lwz r0, 0x5f74(r4)
/* 80C46384  90 1F 00 4C */	stw r0, 0x4c(r31)
/* 80C46388  80 7E 06 08 */	lwz r3, 0x608(r30)
/* 80C4638C  4B 3C 79 39 */	bl mDoExt_modelUpdateDL__FP8J3DModel
/* 80C46390  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C46394  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C46398  80 03 5F 80 */	lwz r0, 0x5f80(r3)
/* 80C4639C  90 1F 00 48 */	stw r0, 0x48(r31)
/* 80C463A0  80 03 5F 84 */	lwz r0, 0x5f84(r3)
/* 80C463A4  90 1F 00 4C */	stw r0, 0x4c(r31)
/* 80C463A8  38 60 00 01 */	li r3, 1
/* 80C463AC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C463B0  83 C1 00 08 */	lwz r30, 8(r1)
/* 80C463B4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C463B8  7C 08 03 A6 */	mtlr r0
/* 80C463BC  38 21 00 10 */	addi r1, r1, 0x10
/* 80C463C0  4E 80 00 20 */	blr 
