lbl_80D18BEC:
/* 80D18BEC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D18BF0  7C 08 02 A6 */	mflr r0
/* 80D18BF4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D18BF8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D18BFC  93 C1 00 08 */	stw r30, 8(r1)
/* 80D18C00  7C 7E 1B 78 */	mr r30, r3
/* 80D18C04  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80D18C08  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80D18C0C  38 80 00 10 */	li r4, 0x10
/* 80D18C10  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80D18C14  38 DE 01 0C */	addi r6, r30, 0x10c
/* 80D18C18  4B 48 AB AD */	bl settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 80D18C1C  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80D18C20  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80D18C24  80 9E 0A D4 */	lwz r4, 0xad4(r30)
/* 80D18C28  80 84 00 04 */	lwz r4, 4(r4)
/* 80D18C2C  38 BE 01 0C */	addi r5, r30, 0x10c
/* 80D18C30  4B 48 C1 71 */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80D18C34  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D18C38  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D18C3C  80 04 5F 70 */	lwz r0, 0x5f70(r4)
/* 80D18C40  3C 60 80 43 */	lis r3, j3dSys@ha /* 0x80434AC8@ha */
/* 80D18C44  3B E3 4A C8 */	addi r31, r3, j3dSys@l /* 0x80434AC8@l */
/* 80D18C48  90 1F 00 48 */	stw r0, 0x48(r31)
/* 80D18C4C  80 04 5F 74 */	lwz r0, 0x5f74(r4)
/* 80D18C50  90 1F 00 4C */	stw r0, 0x4c(r31)
/* 80D18C54  80 7E 0A D4 */	lwz r3, 0xad4(r30)
/* 80D18C58  4B 2F 50 6D */	bl mDoExt_modelUpdateDL__FP8J3DModel
/* 80D18C5C  88 1E 0A DF */	lbz r0, 0xadf(r30)
/* 80D18C60  28 00 00 00 */	cmplwi r0, 0
/* 80D18C64  41 82 00 0C */	beq lbl_80D18C70
/* 80D18C68  80 7E 0A D8 */	lwz r3, 0xad8(r30)
/* 80D18C6C  4B 2F 50 59 */	bl mDoExt_modelUpdateDL__FP8J3DModel
lbl_80D18C70:
/* 80D18C70  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D18C74  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D18C78  80 03 5F 80 */	lwz r0, 0x5f80(r3)
/* 80D18C7C  90 1F 00 48 */	stw r0, 0x48(r31)
/* 80D18C80  80 03 5F 84 */	lwz r0, 0x5f84(r3)
/* 80D18C84  90 1F 00 4C */	stw r0, 0x4c(r31)
/* 80D18C88  38 60 00 01 */	li r3, 1
/* 80D18C8C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D18C90  83 C1 00 08 */	lwz r30, 8(r1)
/* 80D18C94  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D18C98  7C 08 03 A6 */	mtlr r0
/* 80D18C9C  38 21 00 10 */	addi r1, r1, 0x10
/* 80D18CA0  4E 80 00 20 */	blr 
