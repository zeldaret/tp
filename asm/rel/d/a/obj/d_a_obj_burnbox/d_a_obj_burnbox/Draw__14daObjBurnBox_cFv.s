lbl_8046EABC:
/* 8046EABC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8046EAC0  7C 08 02 A6 */	mflr r0
/* 8046EAC4  90 01 00 24 */	stw r0, 0x24(r1)
/* 8046EAC8  39 61 00 20 */	addi r11, r1, 0x20
/* 8046EACC  4B EF 37 0C */	b _savegpr_28
/* 8046EAD0  7C 7E 1B 78 */	mr r30, r3
/* 8046EAD4  3C 60 80 43 */	lis r3, g_env_light@ha
/* 8046EAD8  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 8046EADC  38 80 00 10 */	li r4, 0x10
/* 8046EAE0  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 8046EAE4  38 DE 01 0C */	addi r6, r30, 0x10c
/* 8046EAE8  4B D3 4C DC */	b settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 8046EAEC  3C 60 80 43 */	lis r3, g_env_light@ha
/* 8046EAF0  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 8046EAF4  80 9E 05 A8 */	lwz r4, 0x5a8(r30)
/* 8046EAF8  80 84 00 04 */	lwz r4, 4(r4)
/* 8046EAFC  38 BE 01 0C */	addi r5, r30, 0x10c
/* 8046EB00  4B D3 62 A0 */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 8046EB04  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8046EB08  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l
/* 8046EB0C  80 04 5F 70 */	lwz r0, 0x5f70(r4)
/* 8046EB10  3C 60 80 43 */	lis r3, j3dSys@ha
/* 8046EB14  3B E3 4A C8 */	addi r31, r3, j3dSys@l
/* 8046EB18  90 1F 00 48 */	stw r0, 0x48(r31)
/* 8046EB1C  80 04 5F 74 */	lwz r0, 0x5f74(r4)
/* 8046EB20  90 1F 00 4C */	stw r0, 0x4c(r31)
/* 8046EB24  80 7E 05 A8 */	lwz r3, 0x5a8(r30)
/* 8046EB28  83 A3 00 04 */	lwz r29, 4(r3)
/* 8046EB2C  3B 80 00 00 */	li r28, 0
/* 8046EB30  48 00 00 44 */	b lbl_8046EB74
lbl_8046EB34:
/* 8046EB34  80 7D 00 60 */	lwz r3, 0x60(r29)
/* 8046EB38  57 80 13 BA */	rlwinm r0, r28, 2, 0xe, 0x1d
/* 8046EB3C  7C 63 00 2E */	lwzx r3, r3, r0
/* 8046EB40  80 63 00 2C */	lwz r3, 0x2c(r3)
/* 8046EB44  38 80 00 00 */	li r4, 0
/* 8046EB48  81 83 00 00 */	lwz r12, 0(r3)
/* 8046EB4C  81 8C 00 68 */	lwz r12, 0x68(r12)
/* 8046EB50  7D 89 03 A6 */	mtctr r12
/* 8046EB54  4E 80 04 21 */	bctrl 
/* 8046EB58  A8 1E 07 28 */	lha r0, 0x728(r30)
/* 8046EB5C  B0 03 00 00 */	sth r0, 0(r3)
/* 8046EB60  A8 1E 07 28 */	lha r0, 0x728(r30)
/* 8046EB64  B0 03 00 02 */	sth r0, 2(r3)
/* 8046EB68  A8 1E 07 28 */	lha r0, 0x728(r30)
/* 8046EB6C  B0 03 00 04 */	sth r0, 4(r3)
/* 8046EB70  3B 9C 00 01 */	addi r28, r28, 1
lbl_8046EB74:
/* 8046EB74  57 83 04 3E */	clrlwi r3, r28, 0x10
/* 8046EB78  A0 1D 00 5C */	lhz r0, 0x5c(r29)
/* 8046EB7C  7C 03 00 40 */	cmplw r3, r0
/* 8046EB80  41 80 FF B4 */	blt lbl_8046EB34
/* 8046EB84  80 7E 05 A8 */	lwz r3, 0x5a8(r30)
/* 8046EB88  4B B9 F1 3C */	b mDoExt_modelUpdateDL__FP8J3DModel
/* 8046EB8C  3B 80 00 00 */	li r28, 0
/* 8046EB90  3B C0 00 00 */	li r30, 0
/* 8046EB94  48 00 00 38 */	b lbl_8046EBCC
lbl_8046EB98:
/* 8046EB98  80 7D 00 60 */	lwz r3, 0x60(r29)
/* 8046EB9C  57 80 13 BA */	rlwinm r0, r28, 2, 0xe, 0x1d
/* 8046EBA0  7C 63 00 2E */	lwzx r3, r3, r0
/* 8046EBA4  80 63 00 2C */	lwz r3, 0x2c(r3)
/* 8046EBA8  38 80 00 00 */	li r4, 0
/* 8046EBAC  81 83 00 00 */	lwz r12, 0(r3)
/* 8046EBB0  81 8C 00 68 */	lwz r12, 0x68(r12)
/* 8046EBB4  7D 89 03 A6 */	mtctr r12
/* 8046EBB8  4E 80 04 21 */	bctrl 
/* 8046EBBC  B3 C3 00 00 */	sth r30, 0(r3)
/* 8046EBC0  B3 C3 00 02 */	sth r30, 2(r3)
/* 8046EBC4  B3 C3 00 04 */	sth r30, 4(r3)
/* 8046EBC8  3B 9C 00 01 */	addi r28, r28, 1
lbl_8046EBCC:
/* 8046EBCC  57 83 04 3E */	clrlwi r3, r28, 0x10
/* 8046EBD0  A0 1D 00 5C */	lhz r0, 0x5c(r29)
/* 8046EBD4  7C 03 00 40 */	cmplw r3, r0
/* 8046EBD8  41 80 FF C0 */	blt lbl_8046EB98
/* 8046EBDC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8046EBE0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8046EBE4  80 03 5F 80 */	lwz r0, 0x5f80(r3)
/* 8046EBE8  90 1F 00 48 */	stw r0, 0x48(r31)
/* 8046EBEC  80 03 5F 84 */	lwz r0, 0x5f84(r3)
/* 8046EBF0  90 1F 00 4C */	stw r0, 0x4c(r31)
/* 8046EBF4  38 60 00 01 */	li r3, 1
/* 8046EBF8  39 61 00 20 */	addi r11, r1, 0x20
/* 8046EBFC  4B EF 36 28 */	b _restgpr_28
/* 8046EC00  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8046EC04  7C 08 03 A6 */	mtlr r0
/* 8046EC08  38 21 00 20 */	addi r1, r1, 0x20
/* 8046EC0C  4E 80 00 20 */	blr 
