lbl_8058BEEC:
/* 8058BEEC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8058BEF0  7C 08 02 A6 */	mflr r0
/* 8058BEF4  90 01 00 24 */	stw r0, 0x24(r1)
/* 8058BEF8  39 61 00 20 */	addi r11, r1, 0x20
/* 8058BEFC  4B DD 62 D8 */	b _savegpr_27
/* 8058BF00  7C 7F 1B 78 */	mr r31, r3
/* 8058BF04  3C 60 80 43 */	lis r3, g_env_light@ha
/* 8058BF08  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 8058BF0C  38 80 00 10 */	li r4, 0x10
/* 8058BF10  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 8058BF14  38 DF 01 0C */	addi r6, r31, 0x10c
/* 8058BF18  4B C1 78 AC */	b settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 8058BF1C  3C 60 80 43 */	lis r3, g_env_light@ha
/* 8058BF20  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 8058BF24  80 9F 06 08 */	lwz r4, 0x608(r31)
/* 8058BF28  80 84 00 04 */	lwz r4, 4(r4)
/* 8058BF2C  38 BF 01 0C */	addi r5, r31, 0x10c
/* 8058BF30  4B C1 8E 70 */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 8058BF34  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 8058BF38  54 00 CF FF */	rlwinm. r0, r0, 0x19, 0x1f, 0x1f
/* 8058BF3C  40 82 00 1C */	bne lbl_8058BF58
/* 8058BF40  3C 60 80 43 */	lis r3, g_env_light@ha
/* 8058BF44  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 8058BF48  80 9F 06 0C */	lwz r4, 0x60c(r31)
/* 8058BF4C  80 84 00 04 */	lwz r4, 4(r4)
/* 8058BF50  38 BF 01 0C */	addi r5, r31, 0x10c
/* 8058BF54  4B C1 8E 4C */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
lbl_8058BF58:
/* 8058BF58  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8058BF5C  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l
/* 8058BF60  80 04 5F 70 */	lwz r0, 0x5f70(r4)
/* 8058BF64  3C 60 80 43 */	lis r3, j3dSys@ha
/* 8058BF68  3B A3 4A C8 */	addi r29, r3, j3dSys@l
/* 8058BF6C  90 1D 00 48 */	stw r0, 0x48(r29)
/* 8058BF70  80 04 5F 74 */	lwz r0, 0x5f74(r4)
/* 8058BF74  90 1D 00 4C */	stw r0, 0x4c(r29)
/* 8058BF78  80 7F 06 08 */	lwz r3, 0x608(r31)
/* 8058BF7C  4B A8 1D 48 */	b mDoExt_modelUpdateDL__FP8J3DModel
/* 8058BF80  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 8058BF84  54 00 CF FF */	rlwinm. r0, r0, 0x19, 0x1f, 0x1f
/* 8058BF88  40 82 00 0C */	bne lbl_8058BF94
/* 8058BF8C  80 7F 06 0C */	lwz r3, 0x60c(r31)
/* 8058BF90  4B A8 1D 34 */	b mDoExt_modelUpdateDL__FP8J3DModel
lbl_8058BF94:
/* 8058BF94  80 7F 06 10 */	lwz r3, 0x610(r31)
/* 8058BF98  38 80 00 00 */	li r4, 0
/* 8058BF9C  88 BF 04 E2 */	lbz r5, 0x4e2(r31)
/* 8058BFA0  7C A5 07 74 */	extsb r5, r5
/* 8058BFA4  4B B1 09 34 */	b entry__10dMdl_mng_cFP12J3DModelDataUsi
/* 8058BFA8  7C 7C 1B 79 */	or. r28, r3, r3
/* 8058BFAC  41 82 00 34 */	beq lbl_8058BFE0
/* 8058BFB0  3B 60 00 00 */	li r27, 0
/* 8058BFB4  3B C0 00 00 */	li r30, 0
/* 8058BFB8  48 00 00 1C */	b lbl_8058BFD4
lbl_8058BFBC:
/* 8058BFBC  7F 83 E3 78 */	mr r3, r28
/* 8058BFC0  80 1F 06 20 */	lwz r0, 0x620(r31)
/* 8058BFC4  7C 80 F2 14 */	add r4, r0, r30
/* 8058BFC8  4B B1 06 A0 */	b entryObj__6dMdl_cFP10dMdl_obj_c
/* 8058BFCC  3B 7B 00 01 */	addi r27, r27, 1
/* 8058BFD0  3B DE 00 34 */	addi r30, r30, 0x34
lbl_8058BFD4:
/* 8058BFD4  80 1F 06 1C */	lwz r0, 0x61c(r31)
/* 8058BFD8  7C 1B 00 00 */	cmpw r27, r0
/* 8058BFDC  41 80 FF E0 */	blt lbl_8058BFBC
lbl_8058BFE0:
/* 8058BFE0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8058BFE4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8058BFE8  80 03 5F 80 */	lwz r0, 0x5f80(r3)
/* 8058BFEC  90 1D 00 48 */	stw r0, 0x48(r29)
/* 8058BFF0  80 03 5F 84 */	lwz r0, 0x5f84(r3)
/* 8058BFF4  90 1D 00 4C */	stw r0, 0x4c(r29)
/* 8058BFF8  38 60 00 01 */	li r3, 1
/* 8058BFFC  39 61 00 20 */	addi r11, r1, 0x20
/* 8058C000  4B DD 62 20 */	b _restgpr_27
/* 8058C004  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8058C008  7C 08 03 A6 */	mtlr r0
/* 8058C00C  38 21 00 20 */	addi r1, r1, 0x20
/* 8058C010  4E 80 00 20 */	blr 
