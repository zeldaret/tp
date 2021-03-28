lbl_802620C8:
/* 802620C8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802620CC  7C 08 02 A6 */	mflr r0
/* 802620D0  90 01 00 14 */	stw r0, 0x14(r1)
/* 802620D4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802620D8  93 C1 00 08 */	stw r30, 8(r1)
/* 802620DC  7C 7E 1B 78 */	mr r30, r3
/* 802620E0  3C 60 80 43 */	lis r3, g_env_light@ha
/* 802620E4  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 802620E8  38 80 00 10 */	li r4, 0x10
/* 802620EC  38 BE 00 DC */	addi r5, r30, 0xdc
/* 802620F0  38 DE 01 4C */	addi r6, r30, 0x14c
/* 802620F4  4B F4 16 D1 */	bl settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 802620F8  3C 60 80 43 */	lis r3, g_env_light@ha
/* 802620FC  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80262100  80 9E 00 F8 */	lwz r4, 0xf8(r30)
/* 80262104  80 84 00 04 */	lwz r4, 4(r4)
/* 80262108  38 BE 01 4C */	addi r5, r30, 0x14c
/* 8026210C  4B F4 2C 95 */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80262110  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80262114  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80262118  80 03 5F 6C */	lwz r0, 0x5f6c(r3)
/* 8026211C  3C 60 80 43 */	lis r3, j3dSys@ha
/* 80262120  3B E3 4A C8 */	addi r31, r3, j3dSys@l
/* 80262124  90 1F 00 48 */	stw r0, 0x48(r31)
/* 80262128  90 1F 00 4C */	stw r0, 0x4c(r31)
/* 8026212C  80 7E 00 F8 */	lwz r3, 0xf8(r30)
/* 80262130  80 83 00 04 */	lwz r4, 4(r3)
/* 80262134  38 7E 00 FC */	addi r3, r30, 0xfc
/* 80262138  C0 3E 01 0C */	lfs f1, 0x10c(r30)
/* 8026213C  4B DA B8 91 */	bl entry__13mDoExt_bckAnmFP12J3DModelDataf
/* 80262140  C0 3E 01 0C */	lfs f1, 0x10c(r30)
/* 80262144  80 7E 00 F8 */	lwz r3, 0xf8(r30)
/* 80262148  80 83 00 04 */	lwz r4, 4(r3)
/* 8026214C  38 7E 01 18 */	addi r3, r30, 0x118
/* 80262150  38 84 00 58 */	addi r4, r4, 0x58
/* 80262154  4B DA B5 85 */	bl entry__13mDoExt_btkAnmFP16J3DMaterialTablef
/* 80262158  C0 3E 01 0C */	lfs f1, 0x10c(r30)
/* 8026215C  80 7E 00 F8 */	lwz r3, 0xf8(r30)
/* 80262160  80 83 00 04 */	lwz r4, 4(r3)
/* 80262164  38 7E 01 30 */	addi r3, r30, 0x130
/* 80262168  38 84 00 58 */	addi r4, r4, 0x58
/* 8026216C  4B DA B6 3D */	bl entry__13mDoExt_brkAnmFP16J3DMaterialTablef
/* 80262170  80 7E 00 F8 */	lwz r3, 0xf8(r30)
/* 80262174  4B DA BB 51 */	bl mDoExt_modelUpdateDL__FP8J3DModel
/* 80262178  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8026217C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80262180  80 03 5F 80 */	lwz r0, 0x5f80(r3)
/* 80262184  90 1F 00 48 */	stw r0, 0x48(r31)
/* 80262188  80 03 5F 84 */	lwz r0, 0x5f84(r3)
/* 8026218C  90 1F 00 4C */	stw r0, 0x4c(r31)
/* 80262190  38 60 00 01 */	li r3, 1
/* 80262194  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80262198  83 C1 00 08 */	lwz r30, 8(r1)
/* 8026219C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802621A0  7C 08 03 A6 */	mtlr r0
/* 802621A4  38 21 00 10 */	addi r1, r1, 0x10
/* 802621A8  4E 80 00 20 */	blr 
