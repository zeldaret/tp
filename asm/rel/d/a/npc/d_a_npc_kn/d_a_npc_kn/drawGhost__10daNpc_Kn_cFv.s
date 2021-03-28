lbl_80A2CF9C:
/* 80A2CF9C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A2CFA0  7C 08 02 A6 */	mflr r0
/* 80A2CFA4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A2CFA8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A2CFAC  93 C1 00 08 */	stw r30, 8(r1)
/* 80A2CFB0  7C 7E 1B 78 */	mr r30, r3
/* 80A2CFB4  80 63 05 BC */	lwz r3, 0x5bc(r3)
/* 80A2CFB8  83 E3 00 04 */	lwz r31, 4(r3)
/* 80A2CFBC  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80A2CFC0  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80A2CFC4  38 80 00 07 */	li r4, 7
/* 80A2CFC8  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80A2CFCC  38 DE 01 0C */	addi r6, r30, 0x10c
/* 80A2CFD0  4B 77 67 F4 */	b settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 80A2CFD4  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80A2CFD8  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80A2CFDC  80 9F 00 04 */	lwz r4, 4(r31)
/* 80A2CFE0  38 BE 01 0C */	addi r5, r30, 0x10c
/* 80A2CFE4  4B 77 7D BC */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80A2CFE8  4B 77 F5 94 */	b dKy_darkworld_check__Fv
/* 80A2CFEC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80A2CFF0  41 82 00 4C */	beq lbl_80A2D03C
/* 80A2CFF4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80A2CFF8  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l
/* 80A2CFFC  80 04 5F 88 */	lwz r0, 0x5f88(r4)
/* 80A2D000  3C 60 80 43 */	lis r3, j3dSys@ha
/* 80A2D004  3B E3 4A C8 */	addi r31, r3, j3dSys@l
/* 80A2D008  90 1F 00 48 */	stw r0, 0x48(r31)
/* 80A2D00C  80 04 5F 8C */	lwz r0, 0x5f8c(r4)
/* 80A2D010  90 1F 00 4C */	stw r0, 0x4c(r31)
/* 80A2D014  38 7E 0E 48 */	addi r3, r30, 0xe48
/* 80A2D018  38 80 00 00 */	li r4, 0
/* 80A2D01C  4B 5E 17 A4 */	b entryDL__21mDoExt_invisibleModelFP4cXyz
/* 80A2D020  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80A2D024  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80A2D028  80 03 5F 80 */	lwz r0, 0x5f80(r3)
/* 80A2D02C  90 1F 00 48 */	stw r0, 0x48(r31)
/* 80A2D030  80 03 5F 84 */	lwz r0, 0x5f84(r3)
/* 80A2D034  90 1F 00 4C */	stw r0, 0x4c(r31)
/* 80A2D038  48 00 00 10 */	b lbl_80A2D048
lbl_80A2D03C:
/* 80A2D03C  38 7E 0E 48 */	addi r3, r30, 0xe48
/* 80A2D040  38 80 00 00 */	li r4, 0
/* 80A2D044  4B 5E 17 7C */	b entryDL__21mDoExt_invisibleModelFP4cXyz
lbl_80A2D048:
/* 80A2D048  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A2D04C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80A2D050  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A2D054  7C 08 03 A6 */	mtlr r0
/* 80A2D058  38 21 00 10 */	addi r1, r1, 0x10
/* 80A2D05C  4E 80 00 20 */	blr 
