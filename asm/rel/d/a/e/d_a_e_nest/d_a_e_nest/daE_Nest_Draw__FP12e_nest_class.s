lbl_80501930:
/* 80501930  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80501934  7C 08 02 A6 */	mflr r0
/* 80501938  90 01 00 24 */	stw r0, 0x24(r1)
/* 8050193C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80501940  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80501944  7C 7E 1B 78 */	mr r30, r3
/* 80501948  3C 60 80 50 */	lis r3, lit_3999@ha
/* 8050194C  3B E3 46 DC */	addi r31, r3, lit_3999@l
/* 80501950  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80501954  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80501958  38 80 00 00 */	li r4, 0
/* 8050195C  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80501960  38 DE 01 0C */	addi r6, r30, 0x10c
/* 80501964  4B CA 1E 60 */	b settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 80501968  88 1E 0B 18 */	lbz r0, 0xb18(r30)
/* 8050196C  7C 00 07 75 */	extsb. r0, r0
/* 80501970  41 82 00 14 */	beq lbl_80501984
/* 80501974  7F C3 F3 78 */	mr r3, r30
/* 80501978  4B FF F6 39 */	bl hahen_draw__FP12e_nest_class
/* 8050197C  38 60 00 01 */	li r3, 1
/* 80501980  48 00 00 A8 */	b lbl_80501A28
lbl_80501984:
/* 80501984  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80501988  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 8050198C  80 9E 05 78 */	lwz r4, 0x578(r30)
/* 80501990  80 84 00 04 */	lwz r4, 4(r4)
/* 80501994  38 BE 01 0C */	addi r5, r30, 0x10c
/* 80501998  4B CA 34 08 */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 8050199C  80 7E 05 78 */	lwz r3, 0x578(r30)
/* 805019A0  4B B0 C3 24 */	b mDoExt_modelUpdateDL__FP8J3DModel
/* 805019A4  A8 1E 05 7E */	lha r0, 0x57e(r30)
/* 805019A8  2C 00 00 01 */	cmpwi r0, 1
/* 805019AC  40 82 00 78 */	bne lbl_80501A24
/* 805019B0  3C 60 80 50 */	lis r3, l_HIO@ha
/* 805019B4  38 63 49 60 */	addi r3, r3, l_HIO@l
/* 805019B8  C0 23 00 08 */	lfs f1, 8(r3)
/* 805019BC  C0 1E 04 EC */	lfs f0, 0x4ec(r30)
/* 805019C0  EC 81 00 32 */	fmuls f4, f1, f0
/* 805019C4  C0 5E 04 D8 */	lfs f2, 0x4d8(r30)
/* 805019C8  C0 1F 00 4C */	lfs f0, 0x4c(r31)
/* 805019CC  C0 7E 04 D4 */	lfs f3, 0x4d4(r30)
/* 805019D0  EC 20 18 2A */	fadds f1, f0, f3
/* 805019D4  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 805019D8  D0 01 00 08 */	stfs f0, 8(r1)
/* 805019DC  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 805019E0  D0 41 00 10 */	stfs f2, 0x10(r1)
/* 805019E4  80 7E 05 A0 */	lwz r3, 0x5a0(r30)
/* 805019E8  38 80 00 01 */	li r4, 1
/* 805019EC  80 BE 05 78 */	lwz r5, 0x578(r30)
/* 805019F0  38 C1 00 08 */	addi r6, r1, 8
/* 805019F4  C0 1F 00 24 */	lfs f0, 0x24(r31)
/* 805019F8  EC 20 01 32 */	fmuls f1, f0, f4
/* 805019FC  C0 5F 00 04 */	lfs f2, 4(r31)
/* 80501A00  C0 9E 06 8C */	lfs f4, 0x68c(r30)
/* 80501A04  38 FE 06 E4 */	addi r7, r30, 0x6e4
/* 80501A08  39 1E 01 0C */	addi r8, r30, 0x10c
/* 80501A0C  39 20 00 00 */	li r9, 0
/* 80501A10  C0 BF 00 00 */	lfs f5, 0(r31)
/* 80501A14  3D 40 80 42 */	lis r10, mSimpleTexObj__21dDlst_shadowControl_c@ha
/* 80501A18  39 4A 48 D0 */	addi r10, r10, mSimpleTexObj__21dDlst_shadowControl_c@l
/* 80501A1C  4B B2 CE F4 */	b dComIfGd_setShadow__FUlScP8J3DModelP4cXyzffffR13cBgS_PolyInfoP12dKy_tevstr_csfP9_GXTexObj
/* 80501A20  90 7E 05 A0 */	stw r3, 0x5a0(r30)
lbl_80501A24:
/* 80501A24  38 60 00 01 */	li r3, 1
lbl_80501A28:
/* 80501A28  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80501A2C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80501A30  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80501A34  7C 08 03 A6 */	mtlr r0
/* 80501A38  38 21 00 20 */	addi r1, r1, 0x20
/* 80501A3C  4E 80 00 20 */	blr 
