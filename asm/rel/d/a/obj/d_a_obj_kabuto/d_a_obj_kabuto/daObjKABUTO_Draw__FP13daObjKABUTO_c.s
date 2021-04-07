lbl_80C2D474:
/* 80C2D474  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C2D478  7C 08 02 A6 */	mflr r0
/* 80C2D47C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C2D480  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C2D484  93 C1 00 08 */	stw r30, 8(r1)
/* 80C2D488  7C 7E 1B 78 */	mr r30, r3
/* 80C2D48C  88 03 05 6D */	lbz r0, 0x56d(r3)
/* 80C2D490  28 00 00 00 */	cmplwi r0, 0
/* 80C2D494  41 82 00 A8 */	beq lbl_80C2D53C
/* 80C2D498  4B FF F3 31 */	bl Z_BufferChk__13daObjKABUTO_cFv
/* 80C2D49C  80 7E 0A 04 */	lwz r3, 0xa04(r30)
/* 80C2D4A0  83 E3 00 04 */	lwz r31, 4(r3)
/* 80C2D4A4  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80C2D4A8  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80C2D4AC  38 80 00 00 */	li r4, 0
/* 80C2D4B0  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80C2D4B4  38 DE 01 0C */	addi r6, r30, 0x10c
/* 80C2D4B8  4B 57 63 0D */	bl settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 80C2D4BC  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80C2D4C0  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80C2D4C4  80 9F 00 04 */	lwz r4, 4(r31)
/* 80C2D4C8  38 BE 01 0C */	addi r5, r30, 0x10c
/* 80C2D4CC  4B 57 78 D5 */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80C2D4D0  80 9F 00 04 */	lwz r4, 4(r31)
/* 80C2D4D4  80 7E 07 90 */	lwz r3, 0x790(r30)
/* 80C2D4D8  C0 23 00 10 */	lfs f1, 0x10(r3)
/* 80C2D4DC  38 84 00 58 */	addi r4, r4, 0x58
/* 80C2D4E0  4B 3E 01 F9 */	bl entry__13mDoExt_btkAnmFP16J3DMaterialTablef
/* 80C2D4E4  80 9F 00 04 */	lwz r4, 4(r31)
/* 80C2D4E8  80 7E 07 8C */	lwz r3, 0x78c(r30)
/* 80C2D4EC  C0 23 00 10 */	lfs f1, 0x10(r3)
/* 80C2D4F0  38 84 00 58 */	addi r4, r4, 0x58
/* 80C2D4F4  4B 3E 02 B5 */	bl entry__13mDoExt_brkAnmFP16J3DMaterialTablef
/* 80C2D4F8  80 7E 0A 04 */	lwz r3, 0xa04(r30)
/* 80C2D4FC  4B 3E 3C C5 */	bl entryDL__16mDoExt_McaMorfSOFv
/* 80C2D500  88 1E 07 36 */	lbz r0, 0x736(r30)
/* 80C2D504  28 00 00 00 */	cmplwi r0, 0
/* 80C2D508  40 82 00 34 */	bne lbl_80C2D53C
/* 80C2D50C  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 80C2D510  C0 3E 08 30 */	lfs f1, 0x830(r30)
/* 80C2D514  3C 80 80 C3 */	lis r4, lit_4779@ha /* 0x80C2E1FC@ha */
/* 80C2D518  C0 44 E1 FC */	lfs f2, lit_4779@l(r4)  /* 0x80C2E1FC@l */
/* 80C2D51C  38 9E 08 88 */	addi r4, r30, 0x888
/* 80C2D520  38 A0 00 00 */	li r5, 0
/* 80C2D524  3C C0 80 C3 */	lis r6, l_HIO@ha /* 0x80C2E300@ha */
/* 80C2D528  38 C6 E3 00 */	addi r6, r6, l_HIO@l /* 0x80C2E300@l */
/* 80C2D52C  C0 66 00 10 */	lfs f3, 0x10(r6)
/* 80C2D530  3C C0 80 42 */	lis r6, mSimpleTexObj__21dDlst_shadowControl_c@ha /* 0x804248D0@ha */
/* 80C2D534  38 C6 48 D0 */	addi r6, r6, mSimpleTexObj__21dDlst_shadowControl_c@l /* 0x804248D0@l */
/* 80C2D538  4B 3F FB 7D */	bl dComIfGd_setSimpleShadow__FP4cXyzffR13cBgS_PolyInfosfP9_GXTexObj
lbl_80C2D53C:
/* 80C2D53C  38 60 00 01 */	li r3, 1
/* 80C2D540  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C2D544  83 C1 00 08 */	lwz r30, 8(r1)
/* 80C2D548  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C2D54C  7C 08 03 A6 */	mtlr r0
/* 80C2D550  38 21 00 10 */	addi r1, r1, 0x10
/* 80C2D554  4E 80 00 20 */	blr 
