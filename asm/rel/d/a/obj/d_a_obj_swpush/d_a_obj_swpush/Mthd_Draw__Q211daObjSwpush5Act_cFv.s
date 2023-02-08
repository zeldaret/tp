lbl_80484BB8:
/* 80484BB8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80484BBC  7C 08 02 A6 */	mflr r0
/* 80484BC0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80484BC4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80484BC8  93 C1 00 08 */	stw r30, 8(r1)
/* 80484BCC  7C 7E 1B 78 */	mr r30, r3
/* 80484BD0  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80484BD4  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80484BD8  38 80 00 10 */	li r4, 0x10
/* 80484BDC  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80484BE0  38 DE 01 0C */	addi r6, r30, 0x10c
/* 80484BE4  4B D1 EB E1 */	bl settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 80484BE8  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80484BEC  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80484BF0  80 9E 05 A8 */	lwz r4, 0x5a8(r30)
/* 80484BF4  80 84 00 04 */	lwz r4, 4(r4)
/* 80484BF8  38 BE 01 0C */	addi r5, r30, 0x10c
/* 80484BFC  4B D2 01 A5 */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80484C00  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80484C04  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80484C08  80 04 5F 70 */	lwz r0, 0x5f70(r4)
/* 80484C0C  3C 60 80 43 */	lis r3, j3dSys@ha /* 0x80434AC8@ha */
/* 80484C10  3B E3 4A C8 */	addi r31, r3, j3dSys@l /* 0x80434AC8@l */
/* 80484C14  90 1F 00 48 */	stw r0, 0x48(r31)
/* 80484C18  80 04 5F 74 */	lwz r0, 0x5f74(r4)
/* 80484C1C  90 1F 00 4C */	stw r0, 0x4c(r31)
/* 80484C20  80 7E 05 A8 */	lwz r3, 0x5a8(r30)
/* 80484C24  4B B8 90 A1 */	bl mDoExt_modelUpdateDL__FP8J3DModel
/* 80484C28  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80484C2C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80484C30  80 03 5F 80 */	lwz r0, 0x5f80(r3)
/* 80484C34  90 1F 00 48 */	stw r0, 0x48(r31)
/* 80484C38  80 03 5F 84 */	lwz r0, 0x5f84(r3)
/* 80484C3C  90 1F 00 4C */	stw r0, 0x4c(r31)
/* 80484C40  38 60 00 01 */	li r3, 1
/* 80484C44  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80484C48  83 C1 00 08 */	lwz r30, 8(r1)
/* 80484C4C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80484C50  7C 08 03 A6 */	mtlr r0
/* 80484C54  38 21 00 10 */	addi r1, r1, 0x10
/* 80484C58  4E 80 00 20 */	blr 
