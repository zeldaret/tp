lbl_80BCBD70:
/* 80BCBD70  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BCBD74  7C 08 02 A6 */	mflr r0
/* 80BCBD78  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BCBD7C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BCBD80  93 C1 00 08 */	stw r30, 8(r1)
/* 80BCBD84  7C 7E 1B 78 */	mr r30, r3
/* 80BCBD88  88 03 05 6D */	lbz r0, 0x56d(r3)
/* 80BCBD8C  28 00 00 00 */	cmplwi r0, 0
/* 80BCBD90  41 82 00 A4 */	beq lbl_80BCBE34
/* 80BCBD94  4B FF F5 8D */	bl Z_BufferChk__10daObjCHO_cFv
/* 80BCBD98  80 7E 0A 60 */	lwz r3, 0xa60(r30)
/* 80BCBD9C  83 E3 00 04 */	lwz r31, 4(r3)
/* 80BCBDA0  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80BCBDA4  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80BCBDA8  38 80 00 00 */	li r4, 0
/* 80BCBDAC  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80BCBDB0  38 DE 01 0C */	addi r6, r30, 0x10c
/* 80BCBDB4  4B 5D 7A 11 */	bl settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 80BCBDB8  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80BCBDBC  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80BCBDC0  80 9F 00 04 */	lwz r4, 4(r31)
/* 80BCBDC4  38 BE 01 0C */	addi r5, r30, 0x10c
/* 80BCBDC8  4B 5D 8F D9 */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80BCBDCC  80 9F 00 04 */	lwz r4, 4(r31)
/* 80BCBDD0  80 7E 09 C4 */	lwz r3, 0x9c4(r30)
/* 80BCBDD4  C0 23 00 10 */	lfs f1, 0x10(r3)
/* 80BCBDD8  38 84 00 58 */	addi r4, r4, 0x58
/* 80BCBDDC  4B 44 18 FD */	bl entry__13mDoExt_btkAnmFP16J3DMaterialTablef
/* 80BCBDE0  80 9F 00 04 */	lwz r4, 4(r31)
/* 80BCBDE4  80 7E 09 C0 */	lwz r3, 0x9c0(r30)
/* 80BCBDE8  C0 23 00 10 */	lfs f1, 0x10(r3)
/* 80BCBDEC  38 84 00 58 */	addi r4, r4, 0x58
/* 80BCBDF0  4B 44 19 B9 */	bl entry__13mDoExt_brkAnmFP16J3DMaterialTablef
/* 80BCBDF4  80 7E 0A 60 */	lwz r3, 0xa60(r30)
/* 80BCBDF8  4B 44 53 C9 */	bl entryDL__16mDoExt_McaMorfSOFv
/* 80BCBDFC  88 1E 09 C8 */	lbz r0, 0x9c8(r30)
/* 80BCBE00  28 00 00 00 */	cmplwi r0, 0
/* 80BCBE04  40 82 00 30 */	bne lbl_80BCBE34
/* 80BCBE08  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 80BCBE0C  C0 3E 06 68 */	lfs f1, 0x668(r30)
/* 80BCBE10  3C 80 80 BD */	lis r4, lit_4516@ha /* 0x80BCC668@ha */
/* 80BCBE14  C0 44 C6 68 */	lfs f2, lit_4516@l(r4)  /* 0x80BCC668@l */
/* 80BCBE18  38 9E 06 C0 */	addi r4, r30, 0x6c0
/* 80BCBE1C  38 A0 00 00 */	li r5, 0
/* 80BCBE20  3C C0 80 BD */	lis r6, lit_4517@ha /* 0x80BCC66C@ha */
/* 80BCBE24  C0 66 C6 6C */	lfs f3, lit_4517@l(r6)  /* 0x80BCC66C@l */
/* 80BCBE28  3C C0 80 42 */	lis r6, mSimpleTexObj__21dDlst_shadowControl_c@ha /* 0x804248D0@ha */
/* 80BCBE2C  38 C6 48 D0 */	addi r6, r6, mSimpleTexObj__21dDlst_shadowControl_c@l /* 0x804248D0@l */
/* 80BCBE30  4B 46 12 85 */	bl dComIfGd_setSimpleShadow__FP4cXyzffR13cBgS_PolyInfosfP9_GXTexObj
lbl_80BCBE34:
/* 80BCBE34  38 60 00 01 */	li r3, 1
/* 80BCBE38  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BCBE3C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80BCBE40  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BCBE44  7C 08 03 A6 */	mtlr r0
/* 80BCBE48  38 21 00 10 */	addi r1, r1, 0x10
/* 80BCBE4C  4E 80 00 20 */	blr 
