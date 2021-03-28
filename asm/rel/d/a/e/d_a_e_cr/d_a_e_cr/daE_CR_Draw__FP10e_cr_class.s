lbl_806981B4:
/* 806981B4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806981B8  7C 08 02 A6 */	mflr r0
/* 806981BC  90 01 00 14 */	stw r0, 0x14(r1)
/* 806981C0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 806981C4  93 C1 00 08 */	stw r30, 8(r1)
/* 806981C8  7C 7E 1B 78 */	mr r30, r3
/* 806981CC  80 63 05 B8 */	lwz r3, 0x5b8(r3)
/* 806981D0  83 E3 00 04 */	lwz r31, 4(r3)
/* 806981D4  3C 60 80 43 */	lis r3, g_env_light@ha
/* 806981D8  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 806981DC  38 80 00 00 */	li r4, 0
/* 806981E0  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 806981E4  38 DE 01 0C */	addi r6, r30, 0x10c
/* 806981E8  4B B0 B5 DC */	b settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 806981EC  3C 60 80 43 */	lis r3, g_env_light@ha
/* 806981F0  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 806981F4  80 9F 00 04 */	lwz r4, 4(r31)
/* 806981F8  38 BE 01 0C */	addi r5, r30, 0x10c
/* 806981FC  4B B0 CB A4 */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80698200  80 7E 05 B8 */	lwz r3, 0x5b8(r30)
/* 80698204  4B 97 8F BC */	b entryDL__16mDoExt_McaMorfSOFv
/* 80698208  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 8069820C  C0 3E 07 70 */	lfs f1, 0x770(r30)
/* 80698210  3C 80 80 6A */	lis r4, lit_3810@ha
/* 80698214  C0 44 9C E0 */	lfs f2, lit_3810@l(r4)
/* 80698218  38 9E 07 C8 */	addi r4, r30, 0x7c8
/* 8069821C  38 A0 00 00 */	li r5, 0
/* 80698220  3C C0 80 6A */	lis r6, lit_3790@ha
/* 80698224  C0 66 9C B8 */	lfs f3, lit_3790@l(r6)
/* 80698228  3C C0 80 42 */	lis r6, mSimpleTexObj__21dDlst_shadowControl_c@ha
/* 8069822C  38 C6 48 D0 */	addi r6, r6, mSimpleTexObj__21dDlst_shadowControl_c@l
/* 80698230  4B 99 4E 84 */	b dComIfGd_setSimpleShadow__FP4cXyzffR13cBgS_PolyInfosfP9_GXTexObj
/* 80698234  38 60 00 01 */	li r3, 1
/* 80698238  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8069823C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80698240  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80698244  7C 08 03 A6 */	mtlr r0
/* 80698248  38 21 00 10 */	addi r1, r1, 0x10
/* 8069824C  4E 80 00 20 */	blr 
