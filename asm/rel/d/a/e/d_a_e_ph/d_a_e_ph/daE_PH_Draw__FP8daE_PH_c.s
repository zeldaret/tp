lbl_807412E8:
/* 807412E8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 807412EC  7C 08 02 A6 */	mflr r0
/* 807412F0  90 01 00 34 */	stw r0, 0x34(r1)
/* 807412F4  39 61 00 30 */	addi r11, r1, 0x30
/* 807412F8  4B C2 0E E4 */	b _savegpr_29
/* 807412FC  7C 7D 1B 78 */	mr r29, r3
/* 80741300  3C 60 80 74 */	lis r3, lit_3767@ha
/* 80741304  3B E3 1B F4 */	addi r31, r3, lit_3767@l
/* 80741308  80 7D 07 1C */	lwz r3, 0x71c(r29)
/* 8074130C  83 C3 00 04 */	lwz r30, 4(r3)
/* 80741310  88 1D 06 60 */	lbz r0, 0x660(r29)
/* 80741314  28 00 00 03 */	cmplwi r0, 3
/* 80741318  41 82 00 A8 */	beq lbl_807413C0
/* 8074131C  88 1D 05 B2 */	lbz r0, 0x5b2(r29)
/* 80741320  28 00 00 00 */	cmplwi r0, 0
/* 80741324  41 82 00 C8 */	beq lbl_807413EC
/* 80741328  C0 5D 04 D8 */	lfs f2, 0x4d8(r29)
/* 8074132C  C0 3F 00 4C */	lfs f1, 0x4c(r31)
/* 80741330  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 80741334  EC 21 00 2A */	fadds f1, f1, f0
/* 80741338  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 8074133C  D0 01 00 08 */	stfs f0, 8(r1)
/* 80741340  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80741344  D0 41 00 10 */	stfs f2, 0x10(r1)
/* 80741348  3C 60 80 43 */	lis r3, g_env_light@ha
/* 8074134C  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80741350  38 80 00 00 */	li r4, 0
/* 80741354  38 BD 04 D0 */	addi r5, r29, 0x4d0
/* 80741358  38 DD 01 0C */	addi r6, r29, 0x10c
/* 8074135C  4B A6 24 68 */	b settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 80741360  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80741364  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80741368  80 9E 00 04 */	lwz r4, 4(r30)
/* 8074136C  38 BD 01 0C */	addi r5, r29, 0x10c
/* 80741370  4B A6 3A 30 */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80741374  80 7D 07 1C */	lwz r3, 0x71c(r29)
/* 80741378  4B 8C FE 48 */	b entryDL__16mDoExt_McaMorfSOFv
/* 8074137C  80 7D 07 18 */	lwz r3, 0x718(r29)
/* 80741380  38 80 00 00 */	li r4, 0
/* 80741384  7F C5 F3 78 */	mr r5, r30
/* 80741388  38 C1 00 08 */	addi r6, r1, 8
/* 8074138C  C0 3F 00 C8 */	lfs f1, 0xc8(r31)
/* 80741390  C0 5F 00 4C */	lfs f2, 0x4c(r31)
/* 80741394  C0 7D 04 D4 */	lfs f3, 0x4d4(r29)
/* 80741398  C0 9D 07 F8 */	lfs f4, 0x7f8(r29)
/* 8074139C  38 FD 08 50 */	addi r7, r29, 0x850
/* 807413A0  39 1D 01 0C */	addi r8, r29, 0x10c
/* 807413A4  39 20 00 00 */	li r9, 0
/* 807413A8  C0 BF 00 04 */	lfs f5, 4(r31)
/* 807413AC  3D 40 80 42 */	lis r10, mSimpleTexObj__21dDlst_shadowControl_c@ha
/* 807413B0  39 4A 48 D0 */	addi r10, r10, mSimpleTexObj__21dDlst_shadowControl_c@l
/* 807413B4  4B 8E D5 5C */	b dComIfGd_setShadow__FUlScP8J3DModelP4cXyzffffR13cBgS_PolyInfoP12dKy_tevstr_csfP9_GXTexObj
/* 807413B8  90 7D 07 18 */	stw r3, 0x718(r29)
/* 807413BC  48 00 00 30 */	b lbl_807413EC
lbl_807413C0:
/* 807413C0  3C 60 80 43 */	lis r3, g_env_light@ha
/* 807413C4  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 807413C8  38 80 00 00 */	li r4, 0
/* 807413CC  38 BD 04 D0 */	addi r5, r29, 0x4d0
/* 807413D0  38 DD 01 0C */	addi r6, r29, 0x10c
/* 807413D4  4B A6 23 F0 */	b settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 807413D8  3C 60 80 43 */	lis r3, g_env_light@ha
/* 807413DC  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 807413E0  80 9E 00 04 */	lwz r4, 4(r30)
/* 807413E4  38 BD 01 0C */	addi r5, r29, 0x10c
/* 807413E8  4B A6 39 B8 */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
lbl_807413EC:
/* 807413EC  38 60 00 01 */	li r3, 1
/* 807413F0  39 61 00 30 */	addi r11, r1, 0x30
/* 807413F4  4B C2 0E 34 */	b _restgpr_29
/* 807413F8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 807413FC  7C 08 03 A6 */	mtlr r0
/* 80741400  38 21 00 30 */	addi r1, r1, 0x30
/* 80741404  4E 80 00 20 */	blr 
