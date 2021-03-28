lbl_80C6A0D0:
/* 80C6A0D0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C6A0D4  7C 08 02 A6 */	mflr r0
/* 80C6A0D8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C6A0DC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C6A0E0  93 C1 00 08 */	stw r30, 8(r1)
/* 80C6A0E4  7C 7E 1B 78 */	mr r30, r3
/* 80C6A0E8  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80C6A0EC  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80C6A0F0  38 80 00 10 */	li r4, 0x10
/* 80C6A0F4  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80C6A0F8  38 DE 01 0C */	addi r6, r30, 0x10c
/* 80C6A0FC  4B 53 96 C8 */	b settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 80C6A100  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80C6A104  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80C6A108  80 9E 05 B8 */	lwz r4, 0x5b8(r30)
/* 80C6A10C  80 84 00 04 */	lwz r4, 4(r4)
/* 80C6A110  38 BE 01 0C */	addi r5, r30, 0x10c
/* 80C6A114  4B 53 AC 8C */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80C6A118  80 7E 05 B8 */	lwz r3, 0x5b8(r30)
/* 80C6A11C  80 83 00 04 */	lwz r4, 4(r3)
/* 80C6A120  80 7E 05 BC */	lwz r3, 0x5bc(r30)
/* 80C6A124  C0 23 00 10 */	lfs f1, 0x10(r3)
/* 80C6A128  38 84 00 58 */	addi r4, r4, 0x58
/* 80C6A12C  4B 3A 35 AC */	b entry__13mDoExt_btkAnmFP16J3DMaterialTablef
/* 80C6A130  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C6A134  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l
/* 80C6A138  80 04 5F 70 */	lwz r0, 0x5f70(r4)
/* 80C6A13C  3C 60 80 43 */	lis r3, j3dSys@ha
/* 80C6A140  3B E3 4A C8 */	addi r31, r3, j3dSys@l
/* 80C6A144  90 1F 00 48 */	stw r0, 0x48(r31)
/* 80C6A148  80 04 5F 74 */	lwz r0, 0x5f74(r4)
/* 80C6A14C  90 1F 00 4C */	stw r0, 0x4c(r31)
/* 80C6A150  80 7E 05 B8 */	lwz r3, 0x5b8(r30)
/* 80C6A154  4B 3A 3B 70 */	b mDoExt_modelUpdateDL__FP8J3DModel
/* 80C6A158  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C6A15C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80C6A160  80 03 5F 80 */	lwz r0, 0x5f80(r3)
/* 80C6A164  90 1F 00 48 */	stw r0, 0x48(r31)
/* 80C6A168  80 03 5F 84 */	lwz r0, 0x5f84(r3)
/* 80C6A16C  90 1F 00 4C */	stw r0, 0x4c(r31)
/* 80C6A170  38 60 00 01 */	li r3, 1
/* 80C6A174  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C6A178  83 C1 00 08 */	lwz r30, 8(r1)
/* 80C6A17C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C6A180  7C 08 03 A6 */	mtlr r0
/* 80C6A184  38 21 00 10 */	addi r1, r1, 0x10
/* 80C6A188  4E 80 00 20 */	blr 
