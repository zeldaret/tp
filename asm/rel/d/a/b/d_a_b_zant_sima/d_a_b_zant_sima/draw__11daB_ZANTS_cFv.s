lbl_806529D8:
/* 806529D8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806529DC  7C 08 02 A6 */	mflr r0
/* 806529E0  90 01 00 14 */	stw r0, 0x14(r1)
/* 806529E4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 806529E8  93 C1 00 08 */	stw r30, 8(r1)
/* 806529EC  7C 7E 1B 78 */	mr r30, r3
/* 806529F0  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 806529F4  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 806529F8  38 80 00 10 */	li r4, 0x10
/* 806529FC  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80652A00  38 DE 01 0C */	addi r6, r30, 0x10c
/* 80652A04  4B B5 0D C1 */	bl settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 80652A08  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80652A0C  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80652A10  80 9E 05 70 */	lwz r4, 0x570(r30)
/* 80652A14  80 84 00 04 */	lwz r4, 4(r4)
/* 80652A18  38 BE 01 0C */	addi r5, r30, 0x10c
/* 80652A1C  4B B5 23 85 */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80652A20  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80652A24  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80652A28  80 04 5F 70 */	lwz r0, 0x5f70(r4)
/* 80652A2C  3C 60 80 43 */	lis r3, j3dSys@ha /* 0x80434AC8@ha */
/* 80652A30  3B E3 4A C8 */	addi r31, r3, j3dSys@l /* 0x80434AC8@l */
/* 80652A34  90 1F 00 48 */	stw r0, 0x48(r31)
/* 80652A38  80 04 5F 74 */	lwz r0, 0x5f74(r4)
/* 80652A3C  90 1F 00 4C */	stw r0, 0x4c(r31)
/* 80652A40  80 7E 05 70 */	lwz r3, 0x570(r30)
/* 80652A44  80 83 00 04 */	lwz r4, 4(r3)
/* 80652A48  80 7E 05 78 */	lwz r3, 0x578(r30)
/* 80652A4C  C0 23 00 10 */	lfs f1, 0x10(r3)
/* 80652A50  38 84 00 58 */	addi r4, r4, 0x58
/* 80652A54  4B 9B AC 85 */	bl entry__13mDoExt_btkAnmFP16J3DMaterialTablef
/* 80652A58  80 7E 05 70 */	lwz r3, 0x570(r30)
/* 80652A5C  80 83 00 04 */	lwz r4, 4(r3)
/* 80652A60  80 7E 05 74 */	lwz r3, 0x574(r30)
/* 80652A64  C0 23 00 10 */	lfs f1, 0x10(r3)
/* 80652A68  38 84 00 58 */	addi r4, r4, 0x58
/* 80652A6C  4B 9B AD 3D */	bl entry__13mDoExt_brkAnmFP16J3DMaterialTablef
/* 80652A70  80 7E 05 70 */	lwz r3, 0x570(r30)
/* 80652A74  4B 9B B2 51 */	bl mDoExt_modelUpdateDL__FP8J3DModel
/* 80652A78  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80652A7C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80652A80  80 03 5F 80 */	lwz r0, 0x5f80(r3)
/* 80652A84  90 1F 00 48 */	stw r0, 0x48(r31)
/* 80652A88  80 03 5F 84 */	lwz r0, 0x5f84(r3)
/* 80652A8C  90 1F 00 4C */	stw r0, 0x4c(r31)
/* 80652A90  38 60 00 01 */	li r3, 1
/* 80652A94  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80652A98  83 C1 00 08 */	lwz r30, 8(r1)
/* 80652A9C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80652AA0  7C 08 03 A6 */	mtlr r0
/* 80652AA4  38 21 00 10 */	addi r1, r1, 0x10
/* 80652AA8  4E 80 00 20 */	blr 
