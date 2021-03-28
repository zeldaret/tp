lbl_80BAC084:
/* 80BAC084  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80BAC088  7C 08 02 A6 */	mflr r0
/* 80BAC08C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80BAC090  39 61 00 20 */	addi r11, r1, 0x20
/* 80BAC094  4B 7B 61 48 */	b _savegpr_29
/* 80BAC098  7C 7D 1B 78 */	mr r29, r3
/* 80BAC09C  3C 80 80 BB */	lis r4, lit_3774@ha
/* 80BAC0A0  3B E4 C9 70 */	addi r31, r4, lit_3774@l
/* 80BAC0A4  88 03 05 6D */	lbz r0, 0x56d(r3)
/* 80BAC0A8  28 00 00 00 */	cmplwi r0, 0
/* 80BAC0AC  41 82 00 AC */	beq lbl_80BAC158
/* 80BAC0B0  C0 3F 00 E0 */	lfs f1, 0xe0(r31)
/* 80BAC0B4  4B 5B 21 B8 */	b CalcZBuffer__9dInsect_cFf
/* 80BAC0B8  80 7D 06 20 */	lwz r3, 0x620(r29)
/* 80BAC0BC  83 C3 00 04 */	lwz r30, 4(r3)
/* 80BAC0C0  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80BAC0C4  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80BAC0C8  38 80 00 00 */	li r4, 0
/* 80BAC0CC  38 BD 04 D0 */	addi r5, r29, 0x4d0
/* 80BAC0D0  38 DD 01 0C */	addi r6, r29, 0x10c
/* 80BAC0D4  4B 5F 76 F0 */	b settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 80BAC0D8  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80BAC0DC  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80BAC0E0  80 9E 00 04 */	lwz r4, 4(r30)
/* 80BAC0E4  38 BD 01 0C */	addi r5, r29, 0x10c
/* 80BAC0E8  4B 5F 8C B8 */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80BAC0EC  80 9E 00 04 */	lwz r4, 4(r30)
/* 80BAC0F0  80 7D 06 28 */	lwz r3, 0x628(r29)
/* 80BAC0F4  C0 23 00 10 */	lfs f1, 0x10(r3)
/* 80BAC0F8  38 84 00 58 */	addi r4, r4, 0x58
/* 80BAC0FC  4B 46 15 DC */	b entry__13mDoExt_btkAnmFP16J3DMaterialTablef
/* 80BAC100  80 9E 00 04 */	lwz r4, 4(r30)
/* 80BAC104  80 7D 06 24 */	lwz r3, 0x624(r29)
/* 80BAC108  C0 23 00 10 */	lfs f1, 0x10(r3)
/* 80BAC10C  38 84 00 58 */	addi r4, r4, 0x58
/* 80BAC110  4B 46 16 98 */	b entry__13mDoExt_brkAnmFP16J3DMaterialTablef
/* 80BAC114  88 1D 09 F0 */	lbz r0, 0x9f0(r29)
/* 80BAC118  28 00 00 02 */	cmplwi r0, 2
/* 80BAC11C  41 82 00 3C */	beq lbl_80BAC158
/* 80BAC120  80 7D 06 20 */	lwz r3, 0x620(r29)
/* 80BAC124  4B 46 50 9C */	b entryDL__16mDoExt_McaMorfSOFv
/* 80BAC128  88 1D 09 F0 */	lbz r0, 0x9f0(r29)
/* 80BAC12C  28 00 00 01 */	cmplwi r0, 1
/* 80BAC130  41 82 00 28 */	beq lbl_80BAC158
/* 80BAC134  38 7D 04 D0 */	addi r3, r29, 0x4d0
/* 80BAC138  C0 3D 07 04 */	lfs f1, 0x704(r29)
/* 80BAC13C  C0 5F 00 E4 */	lfs f2, 0xe4(r31)
/* 80BAC140  38 9D 07 5C */	addi r4, r29, 0x75c
/* 80BAC144  38 A0 00 00 */	li r5, 0
/* 80BAC148  C0 7F 00 E8 */	lfs f3, 0xe8(r31)
/* 80BAC14C  3C C0 80 42 */	lis r6, mSimpleTexObj__21dDlst_shadowControl_c@ha
/* 80BAC150  38 C6 48 D0 */	addi r6, r6, mSimpleTexObj__21dDlst_shadowControl_c@l
/* 80BAC154  4B 48 0F 60 */	b dComIfGd_setSimpleShadow__FP4cXyzffR13cBgS_PolyInfosfP9_GXTexObj
lbl_80BAC158:
/* 80BAC158  38 60 00 01 */	li r3, 1
/* 80BAC15C  39 61 00 20 */	addi r11, r1, 0x20
/* 80BAC160  4B 7B 60 C8 */	b _restgpr_29
/* 80BAC164  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80BAC168  7C 08 03 A6 */	mtlr r0
/* 80BAC16C  38 21 00 20 */	addi r1, r1, 0x20
/* 80BAC170  4E 80 00 20 */	blr 
