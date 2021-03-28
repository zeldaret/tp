lbl_80C26018:
/* 80C26018  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C2601C  7C 08 02 A6 */	mflr r0
/* 80C26020  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C26024  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C26028  93 C1 00 08 */	stw r30, 8(r1)
/* 80C2602C  7C 7F 1B 78 */	mr r31, r3
/* 80C26030  A8 03 05 7E */	lha r0, 0x57e(r3)
/* 80C26034  2C 00 00 01 */	cmpwi r0, 1
/* 80C26038  41 82 00 78 */	beq lbl_80C260B0
/* 80C2603C  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80C26040  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80C26044  38 80 00 20 */	li r4, 0x20
/* 80C26048  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 80C2604C  38 DF 01 0C */	addi r6, r31, 0x10c
/* 80C26050  4B 57 D7 74 */	b settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 80C26054  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80C26058  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80C2605C  80 9F 05 70 */	lwz r4, 0x570(r31)
/* 80C26060  80 84 00 04 */	lwz r4, 4(r4)
/* 80C26064  38 BF 01 0C */	addi r5, r31, 0x10c
/* 80C26068  4B 57 ED 38 */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80C2606C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C26070  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l
/* 80C26074  80 04 5F 70 */	lwz r0, 0x5f70(r4)
/* 80C26078  3C 60 80 43 */	lis r3, j3dSys@ha
/* 80C2607C  3B C3 4A C8 */	addi r30, r3, j3dSys@l
/* 80C26080  90 1E 00 48 */	stw r0, 0x48(r30)
/* 80C26084  80 04 5F 74 */	lwz r0, 0x5f74(r4)
/* 80C26088  90 1E 00 4C */	stw r0, 0x4c(r30)
/* 80C2608C  80 7F 05 70 */	lwz r3, 0x570(r31)
/* 80C26090  4B 3E 7C 34 */	b mDoExt_modelUpdateDL__FP8J3DModel
/* 80C26094  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C26098  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80C2609C  80 03 5F 80 */	lwz r0, 0x5f80(r3)
/* 80C260A0  90 1E 00 48 */	stw r0, 0x48(r30)
/* 80C260A4  80 03 5F 84 */	lwz r0, 0x5f84(r3)
/* 80C260A8  90 1E 00 4C */	stw r0, 0x4c(r30)
/* 80C260AC  48 00 00 54 */	b lbl_80C26100
lbl_80C260B0:
/* 80C260B0  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80C260B4  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80C260B8  38 80 00 10 */	li r4, 0x10
/* 80C260BC  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 80C260C0  38 DF 01 0C */	addi r6, r31, 0x10c
/* 80C260C4  4B 57 D7 00 */	b settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 80C260C8  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80C260CC  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80C260D0  80 9F 05 74 */	lwz r4, 0x574(r31)
/* 80C260D4  80 84 00 04 */	lwz r4, 4(r4)
/* 80C260D8  38 BF 01 0C */	addi r5, r31, 0x10c
/* 80C260DC  4B 57 EC C4 */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80C260E0  80 7F 05 74 */	lwz r3, 0x574(r31)
/* 80C260E4  80 83 00 04 */	lwz r4, 4(r3)
/* 80C260E8  80 7F 05 78 */	lwz r3, 0x578(r31)
/* 80C260EC  C0 23 00 10 */	lfs f1, 0x10(r3)
/* 80C260F0  38 84 00 58 */	addi r4, r4, 0x58
/* 80C260F4  4B 3E 75 E4 */	b entry__13mDoExt_btkAnmFP16J3DMaterialTablef
/* 80C260F8  80 7F 05 74 */	lwz r3, 0x574(r31)
/* 80C260FC  4B 3E 7B C8 */	b mDoExt_modelUpdateDL__FP8J3DModel
lbl_80C26100:
/* 80C26100  38 60 00 01 */	li r3, 1
/* 80C26104  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C26108  83 C1 00 08 */	lwz r30, 8(r1)
/* 80C2610C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C26110  7C 08 03 A6 */	mtlr r0
/* 80C26114  38 21 00 10 */	addi r1, r1, 0x10
/* 80C26118  4E 80 00 20 */	blr 
