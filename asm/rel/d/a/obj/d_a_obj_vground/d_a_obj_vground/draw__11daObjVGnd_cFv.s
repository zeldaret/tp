lbl_80D21878:
/* 80D21878  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D2187C  7C 08 02 A6 */	mflr r0
/* 80D21880  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D21884  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D21888  93 C1 00 08 */	stw r30, 8(r1)
/* 80D2188C  7C 7E 1B 78 */	mr r30, r3
/* 80D21890  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80D21894  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80D21898  38 80 00 10 */	li r4, 0x10
/* 80D2189C  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80D218A0  38 DE 01 0C */	addi r6, r30, 0x10c
/* 80D218A4  4B 48 1F 21 */	bl settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 80D218A8  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80D218AC  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80D218B0  80 9E 05 70 */	lwz r4, 0x570(r30)
/* 80D218B4  80 84 00 04 */	lwz r4, 4(r4)
/* 80D218B8  38 BE 01 0C */	addi r5, r30, 0x10c
/* 80D218BC  4B 48 34 E5 */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80D218C0  80 7E 05 70 */	lwz r3, 0x570(r30)
/* 80D218C4  80 83 00 04 */	lwz r4, 4(r3)
/* 80D218C8  80 7E 05 78 */	lwz r3, 0x578(r30)
/* 80D218CC  C0 23 00 10 */	lfs f1, 0x10(r3)
/* 80D218D0  38 84 00 58 */	addi r4, r4, 0x58
/* 80D218D4  4B 2E BE D5 */	bl entry__13mDoExt_brkAnmFP16J3DMaterialTablef
/* 80D218D8  80 7E 05 70 */	lwz r3, 0x570(r30)
/* 80D218DC  80 83 00 04 */	lwz r4, 4(r3)
/* 80D218E0  80 7E 05 74 */	lwz r3, 0x574(r30)
/* 80D218E4  C0 23 00 10 */	lfs f1, 0x10(r3)
/* 80D218E8  38 84 00 58 */	addi r4, r4, 0x58
/* 80D218EC  4B 2E BD ED */	bl entry__13mDoExt_btkAnmFP16J3DMaterialTablef
/* 80D218F0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D218F4  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D218F8  80 04 5F 78 */	lwz r0, 0x5f78(r4)
/* 80D218FC  3C 60 80 43 */	lis r3, j3dSys@ha /* 0x80434AC8@ha */
/* 80D21900  3B E3 4A C8 */	addi r31, r3, j3dSys@l /* 0x80434AC8@l */
/* 80D21904  90 1F 00 48 */	stw r0, 0x48(r31)
/* 80D21908  80 04 5F 7C */	lwz r0, 0x5f7c(r4)
/* 80D2190C  90 1F 00 4C */	stw r0, 0x4c(r31)
/* 80D21910  80 7E 05 70 */	lwz r3, 0x570(r30)
/* 80D21914  4B 2E C3 B1 */	bl mDoExt_modelUpdateDL__FP8J3DModel
/* 80D21918  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D2191C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D21920  80 03 5F 80 */	lwz r0, 0x5f80(r3)
/* 80D21924  90 1F 00 48 */	stw r0, 0x48(r31)
/* 80D21928  80 03 5F 84 */	lwz r0, 0x5f84(r3)
/* 80D2192C  90 1F 00 4C */	stw r0, 0x4c(r31)
/* 80D21930  38 60 00 01 */	li r3, 1
/* 80D21934  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D21938  83 C1 00 08 */	lwz r30, 8(r1)
/* 80D2193C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D21940  7C 08 03 A6 */	mtlr r0
/* 80D21944  38 21 00 10 */	addi r1, r1, 0x10
/* 80D21948  4E 80 00 20 */	blr 
