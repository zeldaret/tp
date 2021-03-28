lbl_80CAE05C:
/* 80CAE05C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80CAE060  7C 08 02 A6 */	mflr r0
/* 80CAE064  90 01 00 34 */	stw r0, 0x34(r1)
/* 80CAE068  39 61 00 30 */	addi r11, r1, 0x30
/* 80CAE06C  4B 6B 41 60 */	b _savegpr_25
/* 80CAE070  7C 7F 1B 78 */	mr r31, r3
/* 80CAE074  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80CAE078  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80CAE07C  38 80 00 10 */	li r4, 0x10
/* 80CAE080  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 80CAE084  38 DF 01 0C */	addi r6, r31, 0x10c
/* 80CAE088  4B 4F 57 3C */	b settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 80CAE08C  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80CAE090  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80CAE094  80 9F 0C B8 */	lwz r4, 0xcb8(r31)
/* 80CAE098  80 84 00 04 */	lwz r4, 4(r4)
/* 80CAE09C  38 BF 01 0C */	addi r5, r31, 0x10c
/* 80CAE0A0  4B 4F 6D 00 */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80CAE0A4  80 7F 0C B8 */	lwz r3, 0xcb8(r31)
/* 80CAE0A8  4B 35 FB 84 */	b mDoExt_modelUpdate__FP8J3DModel
/* 80CAE0AC  88 1F 0D 26 */	lbz r0, 0xd26(r31)
/* 80CAE0B0  28 00 00 00 */	cmplwi r0, 0
/* 80CAE0B4  41 82 00 0C */	beq lbl_80CAE0C0
/* 80CAE0B8  38 60 00 01 */	li r3, 1
/* 80CAE0BC  48 00 00 E4 */	b lbl_80CAE1A0
lbl_80CAE0C0:
/* 80CAE0C0  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80CAE0C4  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80CAE0C8  80 9F 0C B4 */	lwz r4, 0xcb4(r31)
/* 80CAE0CC  80 84 00 04 */	lwz r4, 4(r4)
/* 80CAE0D0  38 BF 01 0C */	addi r5, r31, 0x10c
/* 80CAE0D4  4B 4F 6C CC */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80CAE0D8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80CAE0DC  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l
/* 80CAE0E0  80 04 5F 70 */	lwz r0, 0x5f70(r4)
/* 80CAE0E4  3C 60 80 43 */	lis r3, j3dSys@ha
/* 80CAE0E8  3B 83 4A C8 */	addi r28, r3, j3dSys@l
/* 80CAE0EC  90 1C 00 48 */	stw r0, 0x48(r28)
/* 80CAE0F0  80 04 5F 74 */	lwz r0, 0x5f74(r4)
/* 80CAE0F4  90 1C 00 4C */	stw r0, 0x4c(r28)
/* 80CAE0F8  80 7F 0C B4 */	lwz r3, 0xcb4(r31)
/* 80CAE0FC  4B 35 FB C8 */	b mDoExt_modelUpdateDL__FP8J3DModel
/* 80CAE100  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80CAE104  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80CAE108  80 03 5F 80 */	lwz r0, 0x5f80(r3)
/* 80CAE10C  90 1C 00 48 */	stw r0, 0x48(r28)
/* 80CAE110  80 03 5F 84 */	lwz r0, 0x5f84(r3)
/* 80CAE114  90 1C 00 4C */	stw r0, 0x4c(r28)
/* 80CAE118  3B 20 00 00 */	li r25, 0
/* 80CAE11C  3B C0 00 00 */	li r30, 0
/* 80CAE120  3B 43 5F 64 */	addi r26, r3, 0x5f64
/* 80CAE124  3C 60 80 CB */	lis r3, lit_4042@ha
/* 80CAE128  3B 83 F0 64 */	addi r28, r3, lit_4042@l
/* 80CAE12C  3C 60 80 CB */	lis r3, lit_4076@ha
/* 80CAE130  3B A3 F0 68 */	addi r29, r3, lit_4076@l
lbl_80CAE134:
/* 80CAE134  80 1C 00 00 */	lwz r0, 0(r28)
/* 80CAE138  90 01 00 08 */	stw r0, 8(r1)
/* 80CAE13C  3B 7E 0C AC */	addi r27, r30, 0xcac
/* 80CAE140  7C 7F D8 2E */	lwzx r3, r31, r27
/* 80CAE144  38 80 00 0A */	li r4, 0xa
/* 80CAE148  C0 3D 00 00 */	lfs f1, 0(r29)
/* 80CAE14C  38 A1 00 08 */	addi r5, r1, 8
/* 80CAE150  38 C0 00 00 */	li r6, 0
/* 80CAE154  38 FF 01 0C */	addi r7, r31, 0x10c
/* 80CAE158  4B 36 55 E4 */	b update__19mDoExt_3DlineMat1_cFifR8_GXColorUsP12dKy_tevstr_c
/* 80CAE15C  7F 7F D8 2E */	lwzx r27, r31, r27
/* 80CAE160  7F 63 DB 78 */	mr r3, r27
/* 80CAE164  81 9B 00 00 */	lwz r12, 0(r27)
/* 80CAE168  81 8C 00 08 */	lwz r12, 8(r12)
/* 80CAE16C  7D 89 03 A6 */	mtctr r12
/* 80CAE170  4E 80 04 21 */	bctrl 
/* 80CAE174  1C 63 00 14 */	mulli r3, r3, 0x14
/* 80CAE178  3C 63 00 01 */	addis r3, r3, 1
/* 80CAE17C  38 63 61 54 */	addi r3, r3, 0x6154
/* 80CAE180  7C 7A 1A 14 */	add r3, r26, r3
/* 80CAE184  7F 64 DB 78 */	mr r4, r27
/* 80CAE188  4B 36 65 B0 */	b setMat__26mDoExt_3DlineMatSortPacketFP18mDoExt_3DlineMat_c
/* 80CAE18C  3B 39 00 01 */	addi r25, r25, 1
/* 80CAE190  2C 19 00 02 */	cmpwi r25, 2
/* 80CAE194  3B DE 00 04 */	addi r30, r30, 4
/* 80CAE198  41 80 FF 9C */	blt lbl_80CAE134
/* 80CAE19C  38 60 00 01 */	li r3, 1
lbl_80CAE1A0:
/* 80CAE1A0  39 61 00 30 */	addi r11, r1, 0x30
/* 80CAE1A4  4B 6B 40 74 */	b _restgpr_25
/* 80CAE1A8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80CAE1AC  7C 08 03 A6 */	mtlr r0
/* 80CAE1B0  38 21 00 30 */	addi r1, r1, 0x30
/* 80CAE1B4  4E 80 00 20 */	blr 
