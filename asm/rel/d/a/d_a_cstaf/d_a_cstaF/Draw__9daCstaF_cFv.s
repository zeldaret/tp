lbl_804DF6E4:
/* 804DF6E4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804DF6E8  7C 08 02 A6 */	mflr r0
/* 804DF6EC  90 01 00 24 */	stw r0, 0x24(r1)
/* 804DF6F0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 804DF6F4  93 C1 00 18 */	stw r30, 0x18(r1)
/* 804DF6F8  7C 7F 1B 78 */	mr r31, r3
/* 804DF6FC  3C 60 80 4E */	lis r3, lit_3765@ha
/* 804DF700  3B C3 F8 B8 */	addi r30, r3, lit_3765@l
/* 804DF704  3C 60 80 43 */	lis r3, g_env_light@ha
/* 804DF708  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 804DF70C  38 80 00 08 */	li r4, 8
/* 804DF710  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 804DF714  38 DF 01 0C */	addi r6, r31, 0x10c
/* 804DF718  4B CC 40 AC */	b settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 804DF71C  3C 60 80 43 */	lis r3, g_env_light@ha
/* 804DF720  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 804DF724  80 9F 05 AC */	lwz r4, 0x5ac(r31)
/* 804DF728  80 84 00 04 */	lwz r4, 4(r4)
/* 804DF72C  38 BF 01 0C */	addi r5, r31, 0x10c
/* 804DF730  4B CC 56 70 */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 804DF734  80 7F 05 AC */	lwz r3, 0x5ac(r31)
/* 804DF738  80 83 00 04 */	lwz r4, 4(r3)
/* 804DF73C  C0 3F 05 E8 */	lfs f1, 0x5e8(r31)
/* 804DF740  38 7F 05 D8 */	addi r3, r31, 0x5d8
/* 804DF744  38 84 00 58 */	addi r4, r4, 0x58
/* 804DF748  4B B2 E0 60 */	b entry__13mDoExt_brkAnmFP16J3DMaterialTablef
/* 804DF74C  80 7F 05 AC */	lwz r3, 0x5ac(r31)
/* 804DF750  80 83 00 04 */	lwz r4, 4(r3)
/* 804DF754  C0 3F 05 D0 */	lfs f1, 0x5d0(r31)
/* 804DF758  38 7F 05 C0 */	addi r3, r31, 0x5c0
/* 804DF75C  38 84 00 58 */	addi r4, r4, 0x58
/* 804DF760  4B B2 DF 78 */	b entry__13mDoExt_btkAnmFP16J3DMaterialTablef
/* 804DF764  80 7F 05 AC */	lwz r3, 0x5ac(r31)
/* 804DF768  4B B2 E5 FC */	b mDoExt_modelEntryDL__FP8J3DModel
/* 804DF76C  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 804DF770  28 03 00 00 */	cmplwi r3, 0
/* 804DF774  41 82 00 08 */	beq lbl_804DF77C
/* 804DF778  4B B2 E5 4C */	b mDoExt_modelUpdateDL__FP8J3DModel
lbl_804DF77C:
/* 804DF77C  C0 5F 04 D8 */	lfs f2, 0x4d8(r31)
/* 804DF780  80 BF 05 AC */	lwz r5, 0x5ac(r31)
/* 804DF784  80 65 00 84 */	lwz r3, 0x84(r5)
/* 804DF788  80 63 00 0C */	lwz r3, 0xc(r3)
/* 804DF78C  C0 3E 00 74 */	lfs f1, 0x74(r30)
/* 804DF790  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 804DF794  EC 21 00 2A */	fadds f1, f1, f0
/* 804DF798  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 804DF79C  D0 01 00 08 */	stfs f0, 8(r1)
/* 804DF7A0  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 804DF7A4  D0 41 00 10 */	stfs f2, 0x10(r1)
/* 804DF7A8  80 7F 0B 18 */	lwz r3, 0xb18(r31)
/* 804DF7AC  38 80 00 01 */	li r4, 1
/* 804DF7B0  38 C1 00 08 */	addi r6, r1, 8
/* 804DF7B4  C0 3E 00 E0 */	lfs f1, 0xe0(r30)
/* 804DF7B8  C0 5E 00 44 */	lfs f2, 0x44(r30)
/* 804DF7BC  C0 7F 04 D4 */	lfs f3, 0x4d4(r31)
/* 804DF7C0  C0 9F 07 88 */	lfs f4, 0x788(r31)
/* 804DF7C4  38 FF 07 E0 */	addi r7, r31, 0x7e0
/* 804DF7C8  39 1F 01 0C */	addi r8, r31, 0x10c
/* 804DF7CC  39 20 00 00 */	li r9, 0
/* 804DF7D0  C0 BE 00 48 */	lfs f5, 0x48(r30)
/* 804DF7D4  3D 40 80 42 */	lis r10, mSimpleTexObj__21dDlst_shadowControl_c@ha
/* 804DF7D8  39 4A 48 D0 */	addi r10, r10, mSimpleTexObj__21dDlst_shadowControl_c@l
/* 804DF7DC  4B B4 F1 34 */	b dComIfGd_setShadow__FUlScP8J3DModelP4cXyzffffR13cBgS_PolyInfoP12dKy_tevstr_csfP9_GXTexObj
/* 804DF7E0  90 7F 0B 18 */	stw r3, 0xb18(r31)
/* 804DF7E4  38 60 00 01 */	li r3, 1
/* 804DF7E8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 804DF7EC  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 804DF7F0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804DF7F4  7C 08 03 A6 */	mtlr r0
/* 804DF7F8  38 21 00 20 */	addi r1, r1, 0x20
/* 804DF7FC  4E 80 00 20 */	blr 
