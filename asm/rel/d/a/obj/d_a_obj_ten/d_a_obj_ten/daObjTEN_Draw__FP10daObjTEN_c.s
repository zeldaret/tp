lbl_80D0AC9C:
/* 80D0AC9C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D0ACA0  7C 08 02 A6 */	mflr r0
/* 80D0ACA4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D0ACA8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D0ACAC  93 C1 00 08 */	stw r30, 8(r1)
/* 80D0ACB0  7C 7E 1B 78 */	mr r30, r3
/* 80D0ACB4  88 03 05 6D */	lbz r0, 0x56d(r3)
/* 80D0ACB8  28 00 00 00 */	cmplwi r0, 0
/* 80D0ACBC  41 82 00 A4 */	beq lbl_80D0AD60
/* 80D0ACC0  4B FF FD 91 */	bl Z_BufferChk__10daObjTEN_cFv
/* 80D0ACC4  80 7E 0A 58 */	lwz r3, 0xa58(r30)
/* 80D0ACC8  83 E3 00 04 */	lwz r31, 4(r3)
/* 80D0ACCC  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80D0ACD0  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80D0ACD4  38 80 00 10 */	li r4, 0x10
/* 80D0ACD8  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80D0ACDC  38 DE 01 0C */	addi r6, r30, 0x10c
/* 80D0ACE0  4B 49 8A E5 */	bl settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 80D0ACE4  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80D0ACE8  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80D0ACEC  80 9F 00 04 */	lwz r4, 4(r31)
/* 80D0ACF0  38 BE 01 0C */	addi r5, r30, 0x10c
/* 80D0ACF4  4B 49 A0 AD */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80D0ACF8  80 9F 00 04 */	lwz r4, 4(r31)
/* 80D0ACFC  80 7E 06 14 */	lwz r3, 0x614(r30)
/* 80D0AD00  C0 23 00 10 */	lfs f1, 0x10(r3)
/* 80D0AD04  38 84 00 58 */	addi r4, r4, 0x58
/* 80D0AD08  4B 30 29 D1 */	bl entry__13mDoExt_btkAnmFP16J3DMaterialTablef
/* 80D0AD0C  80 9F 00 04 */	lwz r4, 4(r31)
/* 80D0AD10  80 7E 06 10 */	lwz r3, 0x610(r30)
/* 80D0AD14  C0 23 00 10 */	lfs f1, 0x10(r3)
/* 80D0AD18  38 84 00 58 */	addi r4, r4, 0x58
/* 80D0AD1C  4B 30 2A 8D */	bl entry__13mDoExt_brkAnmFP16J3DMaterialTablef
/* 80D0AD20  80 7E 0A 58 */	lwz r3, 0xa58(r30)
/* 80D0AD24  4B 30 64 9D */	bl entryDL__16mDoExt_McaMorfSOFv
/* 80D0AD28  88 1E 06 24 */	lbz r0, 0x624(r30)
/* 80D0AD2C  28 00 00 00 */	cmplwi r0, 0
/* 80D0AD30  40 82 00 30 */	bne lbl_80D0AD60
/* 80D0AD34  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 80D0AD38  C0 3E 08 44 */	lfs f1, 0x844(r30)
/* 80D0AD3C  3C 80 80 D1 */	lis r4, lit_4738@ha /* 0x80D0B9C8@ha */
/* 80D0AD40  C0 44 B9 C8 */	lfs f2, lit_4738@l(r4)  /* 0x80D0B9C8@l */
/* 80D0AD44  38 9E 08 9C */	addi r4, r30, 0x89c
/* 80D0AD48  38 A0 00 00 */	li r5, 0
/* 80D0AD4C  3C C0 80 D1 */	lis r6, lit_4739@ha /* 0x80D0B9CC@ha */
/* 80D0AD50  C0 66 B9 CC */	lfs f3, lit_4739@l(r6)  /* 0x80D0B9CC@l */
/* 80D0AD54  3C C0 80 42 */	lis r6, mSimpleTexObj__21dDlst_shadowControl_c@ha /* 0x804248D0@ha */
/* 80D0AD58  38 C6 48 D0 */	addi r6, r6, mSimpleTexObj__21dDlst_shadowControl_c@l /* 0x804248D0@l */
/* 80D0AD5C  4B 32 23 59 */	bl dComIfGd_setSimpleShadow__FP4cXyzffR13cBgS_PolyInfosfP9_GXTexObj
lbl_80D0AD60:
/* 80D0AD60  38 60 00 01 */	li r3, 1
/* 80D0AD64  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D0AD68  83 C1 00 08 */	lwz r30, 8(r1)
/* 80D0AD6C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D0AD70  7C 08 03 A6 */	mtlr r0
/* 80D0AD74  38 21 00 10 */	addi r1, r1, 0x10
/* 80D0AD78  4E 80 00 20 */	blr 
