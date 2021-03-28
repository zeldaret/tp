lbl_80D519BC:
/* 80D519BC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D519C0  7C 08 02 A6 */	mflr r0
/* 80D519C4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D519C8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D519CC  7C 7F 1B 78 */	mr r31, r3
/* 80D519D0  88 03 05 B1 */	lbz r0, 0x5b1(r3)
/* 80D519D4  28 00 00 00 */	cmplwi r0, 0
/* 80D519D8  41 82 00 68 */	beq lbl_80D51A40
/* 80D519DC  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80D519E0  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80D519E4  38 80 00 00 */	li r4, 0
/* 80D519E8  38 BF 05 88 */	addi r5, r31, 0x588
/* 80D519EC  38 DF 01 0C */	addi r6, r31, 0x10c
/* 80D519F0  4B 45 1D D4 */	b settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 80D519F4  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80D519F8  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80D519FC  80 9F 05 68 */	lwz r4, 0x568(r31)
/* 80D51A00  80 84 00 04 */	lwz r4, 4(r4)
/* 80D51A04  38 BF 01 0C */	addi r5, r31, 0x10c
/* 80D51A08  4B 45 33 98 */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80D51A0C  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 80D51A10  80 83 00 04 */	lwz r4, 4(r3)
/* 80D51A14  80 7F 05 6C */	lwz r3, 0x56c(r31)
/* 80D51A18  C0 23 00 10 */	lfs f1, 0x10(r3)
/* 80D51A1C  4B 2B BF B0 */	b entry__13mDoExt_bckAnmFP12J3DModelDataf
/* 80D51A20  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 80D51A24  4B 2B C2 A0 */	b mDoExt_modelUpdateDL__FP8J3DModel
/* 80D51A28  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 80D51A2C  80 63 00 04 */	lwz r3, 4(r3)
/* 80D51A30  80 63 00 28 */	lwz r3, 0x28(r3)
/* 80D51A34  80 63 00 00 */	lwz r3, 0(r3)
/* 80D51A38  38 00 00 00 */	li r0, 0
/* 80D51A3C  90 03 00 54 */	stw r0, 0x54(r3)
lbl_80D51A40:
/* 80D51A40  38 60 00 01 */	li r3, 1
/* 80D51A44  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D51A48  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D51A4C  7C 08 03 A6 */	mtlr r0
/* 80D51A50  38 21 00 10 */	addi r1, r1, 0x10
/* 80D51A54  4E 80 00 20 */	blr 
