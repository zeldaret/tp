lbl_80BDBA0C:
/* 80BDBA0C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BDBA10  7C 08 02 A6 */	mflr r0
/* 80BDBA14  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BDBA18  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BDBA1C  93 C1 00 08 */	stw r30, 8(r1)
/* 80BDBA20  7C 7E 1B 78 */	mr r30, r3
/* 80BDBA24  88 03 05 6D */	lbz r0, 0x56d(r3)
/* 80BDBA28  28 00 00 00 */	cmplwi r0, 0
/* 80BDBA2C  41 82 00 A4 */	beq lbl_80BDBAD0
/* 80BDBA30  4B FF F6 B9 */	bl Z_BufferChk__10daObjDAN_cFv
/* 80BDBA34  80 7E 08 44 */	lwz r3, 0x844(r30)
/* 80BDBA38  83 E3 00 04 */	lwz r31, 4(r3)
/* 80BDBA3C  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80BDBA40  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80BDBA44  38 80 00 10 */	li r4, 0x10
/* 80BDBA48  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80BDBA4C  38 DE 01 0C */	addi r6, r30, 0x10c
/* 80BDBA50  4B 5C 7D 74 */	b settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 80BDBA54  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80BDBA58  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80BDBA5C  80 9F 00 04 */	lwz r4, 4(r31)
/* 80BDBA60  38 BE 01 0C */	addi r5, r30, 0x10c
/* 80BDBA64  4B 5C 93 3C */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80BDBA68  80 9F 00 04 */	lwz r4, 4(r31)
/* 80BDBA6C  80 7E 07 94 */	lwz r3, 0x794(r30)
/* 80BDBA70  C0 23 00 10 */	lfs f1, 0x10(r3)
/* 80BDBA74  38 84 00 58 */	addi r4, r4, 0x58
/* 80BDBA78  4B 43 1C 60 */	b entry__13mDoExt_btkAnmFP16J3DMaterialTablef
/* 80BDBA7C  80 9F 00 04 */	lwz r4, 4(r31)
/* 80BDBA80  80 7E 07 90 */	lwz r3, 0x790(r30)
/* 80BDBA84  C0 23 00 10 */	lfs f1, 0x10(r3)
/* 80BDBA88  38 84 00 58 */	addi r4, r4, 0x58
/* 80BDBA8C  4B 43 1D 1C */	b entry__13mDoExt_brkAnmFP16J3DMaterialTablef
/* 80BDBA90  80 7E 08 44 */	lwz r3, 0x844(r30)
/* 80BDBA94  4B 43 57 2C */	b entryDL__16mDoExt_McaMorfSOFv
/* 80BDBA98  88 1E 07 A8 */	lbz r0, 0x7a8(r30)
/* 80BDBA9C  28 00 00 00 */	cmplwi r0, 0
/* 80BDBAA0  40 82 00 30 */	bne lbl_80BDBAD0
/* 80BDBAA4  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 80BDBAA8  C0 3E 09 20 */	lfs f1, 0x920(r30)
/* 80BDBAAC  3C 80 80 BE */	lis r4, lit_4050@ha
/* 80BDBAB0  C0 44 C4 20 */	lfs f2, lit_4050@l(r4)
/* 80BDBAB4  38 9E 09 78 */	addi r4, r30, 0x978
/* 80BDBAB8  38 A0 00 00 */	li r5, 0
/* 80BDBABC  3C C0 80 BE */	lis r6, lit_4354@ha
/* 80BDBAC0  C0 66 C4 5C */	lfs f3, lit_4354@l(r6)
/* 80BDBAC4  3C C0 80 42 */	lis r6, mSimpleTexObj__21dDlst_shadowControl_c@ha
/* 80BDBAC8  38 C6 48 D0 */	addi r6, r6, mSimpleTexObj__21dDlst_shadowControl_c@l
/* 80BDBACC  4B 45 15 E8 */	b dComIfGd_setSimpleShadow__FP4cXyzffR13cBgS_PolyInfosfP9_GXTexObj
lbl_80BDBAD0:
/* 80BDBAD0  38 60 00 01 */	li r3, 1
/* 80BDBAD4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BDBAD8  83 C1 00 08 */	lwz r30, 8(r1)
/* 80BDBADC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BDBAE0  7C 08 03 A6 */	mtlr r0
/* 80BDBAE4  38 21 00 10 */	addi r1, r1, 0x10
/* 80BDBAE8  4E 80 00 20 */	blr 
