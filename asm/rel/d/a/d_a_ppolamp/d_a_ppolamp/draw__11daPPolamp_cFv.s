lbl_80D4CB84:
/* 80D4CB84  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80D4CB88  7C 08 02 A6 */	mflr r0
/* 80D4CB8C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80D4CB90  39 61 00 20 */	addi r11, r1, 0x20
/* 80D4CB94  4B 61 56 40 */	b _savegpr_27
/* 80D4CB98  7C 7E 1B 78 */	mr r30, r3
/* 80D4CB9C  3C 60 80 D5 */	lis r3, lit_1109@ha
/* 80D4CBA0  3B E3 D3 40 */	addi r31, r3, lit_1109@l
/* 80D4CBA4  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80D4CBA8  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80D4CBAC  38 80 00 00 */	li r4, 0
/* 80D4CBB0  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80D4CBB4  38 DE 01 0C */	addi r6, r30, 0x10c
/* 80D4CBB8  4B 45 6C 0C */	b settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 80D4CBBC  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80D4CBC0  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80D4CBC4  80 9E 05 74 */	lwz r4, 0x574(r30)
/* 80D4CBC8  80 84 00 04 */	lwz r4, 4(r4)
/* 80D4CBCC  38 BE 01 0C */	addi r5, r30, 0x10c
/* 80D4CBD0  4B 45 81 D0 */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80D4CBD4  80 7E 05 74 */	lwz r3, 0x574(r30)
/* 80D4CBD8  4B 2C 10 EC */	b mDoExt_modelUpdateDL__FP8J3DModel
/* 80D4CBDC  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80D4CBE0  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80D4CBE4  80 9E 05 78 */	lwz r4, 0x578(r30)
/* 80D4CBE8  80 84 00 04 */	lwz r4, 4(r4)
/* 80D4CBEC  38 BE 01 0C */	addi r5, r30, 0x10c
/* 80D4CBF0  4B 45 81 B0 */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80D4CBF4  88 1F 00 3D */	lbz r0, 0x3d(r31)
/* 80D4CBF8  7C 00 07 75 */	extsb. r0, r0
/* 80D4CBFC  40 82 00 24 */	bne lbl_80D4CC20
/* 80D4CC00  3C 60 80 D5 */	lis r3, lit_3797@ha
/* 80D4CC04  38 83 D2 88 */	addi r4, r3, lit_3797@l
/* 80D4CC08  80 64 00 00 */	lwz r3, 0(r4)
/* 80D4CC0C  80 04 00 04 */	lwz r0, 4(r4)
/* 80D4CC10  90 7F 00 40 */	stw r3, 0x40(r31)
/* 80D4CC14  90 1F 00 44 */	stw r0, 0x44(r31)
/* 80D4CC18  38 00 00 01 */	li r0, 1
/* 80D4CC1C  98 1F 00 3D */	stb r0, 0x3d(r31)
lbl_80D4CC20:
/* 80D4CC20  88 1F 00 48 */	lbz r0, 0x48(r31)
/* 80D4CC24  7C 00 07 75 */	extsb. r0, r0
/* 80D4CC28  40 82 00 24 */	bne lbl_80D4CC4C
/* 80D4CC2C  3C 60 80 D5 */	lis r3, lit_3802@ha
/* 80D4CC30  38 83 D2 90 */	addi r4, r3, lit_3802@l
/* 80D4CC34  80 64 00 00 */	lwz r3, 0(r4)
/* 80D4CC38  80 04 00 04 */	lwz r0, 4(r4)
/* 80D4CC3C  90 7F 00 4C */	stw r3, 0x4c(r31)
/* 80D4CC40  90 1F 00 50 */	stw r0, 0x50(r31)
/* 80D4CC44  38 00 00 01 */	li r0, 1
/* 80D4CC48  98 1F 00 48 */	stb r0, 0x48(r31)
lbl_80D4CC4C:
/* 80D4CC4C  80 7E 05 78 */	lwz r3, 0x578(r30)
/* 80D4CC50  83 A3 00 04 */	lwz r29, 4(r3)
/* 80D4CC54  3B 60 00 00 */	li r27, 0
/* 80D4CC58  48 00 00 54 */	b lbl_80D4CCAC
lbl_80D4CC5C:
/* 80D4CC5C  80 7D 00 60 */	lwz r3, 0x60(r29)
/* 80D4CC60  57 60 13 BA */	rlwinm r0, r27, 2, 0xe, 0x1d
/* 80D4CC64  7F 83 00 2E */	lwzx r28, r3, r0
/* 80D4CC68  28 1C 00 00 */	cmplwi r28, 0
/* 80D4CC6C  41 82 00 3C */	beq lbl_80D4CCA8
/* 80D4CC70  80 7C 00 2C */	lwz r3, 0x2c(r28)
/* 80D4CC74  38 80 00 01 */	li r4, 1
/* 80D4CC78  38 BF 00 40 */	addi r5, r31, 0x40
/* 80D4CC7C  81 83 00 00 */	lwz r12, 0(r3)
/* 80D4CC80  81 8C 00 60 */	lwz r12, 0x60(r12)
/* 80D4CC84  7D 89 03 A6 */	mtctr r12
/* 80D4CC88  4E 80 04 21 */	bctrl 
/* 80D4CC8C  80 7C 00 2C */	lwz r3, 0x2c(r28)
/* 80D4CC90  38 80 00 02 */	li r4, 2
/* 80D4CC94  38 BF 00 4C */	addi r5, r31, 0x4c
/* 80D4CC98  81 83 00 00 */	lwz r12, 0(r3)
/* 80D4CC9C  81 8C 00 60 */	lwz r12, 0x60(r12)
/* 80D4CCA0  7D 89 03 A6 */	mtctr r12
/* 80D4CCA4  4E 80 04 21 */	bctrl 
lbl_80D4CCA8:
/* 80D4CCA8  3B 7B 00 01 */	addi r27, r27, 1
lbl_80D4CCAC:
/* 80D4CCAC  57 63 04 3E */	clrlwi r3, r27, 0x10
/* 80D4CCB0  A0 1D 00 5C */	lhz r0, 0x5c(r29)
/* 80D4CCB4  7C 03 00 40 */	cmplw r3, r0
/* 80D4CCB8  41 80 FF A4 */	blt lbl_80D4CC5C
/* 80D4CCBC  38 7E 05 7C */	addi r3, r30, 0x57c
/* 80D4CCC0  7F A4 EB 78 */	mr r4, r29
/* 80D4CCC4  C0 3E 05 8C */	lfs f1, 0x58c(r30)
/* 80D4CCC8  4B 2C 0D 04 */	b entry__13mDoExt_bckAnmFP12J3DModelDataf
/* 80D4CCCC  80 7E 05 78 */	lwz r3, 0x578(r30)
/* 80D4CCD0  4B 2C 0F F4 */	b mDoExt_modelUpdateDL__FP8J3DModel
/* 80D4CCD4  38 60 00 01 */	li r3, 1
/* 80D4CCD8  39 61 00 20 */	addi r11, r1, 0x20
/* 80D4CCDC  4B 61 55 44 */	b _restgpr_27
/* 80D4CCE0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80D4CCE4  7C 08 03 A6 */	mtlr r0
/* 80D4CCE8  38 21 00 20 */	addi r1, r1, 0x20
/* 80D4CCEC  4E 80 00 20 */	blr 
