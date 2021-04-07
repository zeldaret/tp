lbl_80C4C85C:
/* 80C4C85C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C4C860  7C 08 02 A6 */	mflr r0
/* 80C4C864  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C4C868  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C4C86C  93 C1 00 08 */	stw r30, 8(r1)
/* 80C4C870  7C 7E 1B 78 */	mr r30, r3
/* 80C4C874  88 03 05 6D */	lbz r0, 0x56d(r3)
/* 80C4C878  28 00 00 00 */	cmplwi r0, 0
/* 80C4C87C  41 82 00 A4 */	beq lbl_80C4C920
/* 80C4C880  4B FF F4 A1 */	bl Z_BufferChk__10daObjKUW_cFv
/* 80C4C884  80 7E 0A 58 */	lwz r3, 0xa58(r30)
/* 80C4C888  83 E3 00 04 */	lwz r31, 4(r3)
/* 80C4C88C  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80C4C890  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80C4C894  38 80 00 10 */	li r4, 0x10
/* 80C4C898  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80C4C89C  38 DE 01 0C */	addi r6, r30, 0x10c
/* 80C4C8A0  4B 55 6F 25 */	bl settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 80C4C8A4  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80C4C8A8  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80C4C8AC  80 9F 00 04 */	lwz r4, 4(r31)
/* 80C4C8B0  38 BE 01 0C */	addi r5, r30, 0x10c
/* 80C4C8B4  4B 55 84 ED */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80C4C8B8  80 9F 00 04 */	lwz r4, 4(r31)
/* 80C4C8BC  80 7E 09 B4 */	lwz r3, 0x9b4(r30)
/* 80C4C8C0  C0 23 00 10 */	lfs f1, 0x10(r3)
/* 80C4C8C4  38 84 00 58 */	addi r4, r4, 0x58
/* 80C4C8C8  4B 3C 0E 11 */	bl entry__13mDoExt_btkAnmFP16J3DMaterialTablef
/* 80C4C8CC  80 9F 00 04 */	lwz r4, 4(r31)
/* 80C4C8D0  80 7E 09 B0 */	lwz r3, 0x9b0(r30)
/* 80C4C8D4  C0 23 00 10 */	lfs f1, 0x10(r3)
/* 80C4C8D8  38 84 00 58 */	addi r4, r4, 0x58
/* 80C4C8DC  4B 3C 0E CD */	bl entry__13mDoExt_brkAnmFP16J3DMaterialTablef
/* 80C4C8E0  80 7E 0A 58 */	lwz r3, 0xa58(r30)
/* 80C4C8E4  4B 3C 48 DD */	bl entryDL__16mDoExt_McaMorfSOFv
/* 80C4C8E8  88 1E 09 C0 */	lbz r0, 0x9c0(r30)
/* 80C4C8EC  28 00 00 00 */	cmplwi r0, 0
/* 80C4C8F0  40 82 00 30 */	bne lbl_80C4C920
/* 80C4C8F4  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 80C4C8F8  C0 3E 07 E8 */	lfs f1, 0x7e8(r30)
/* 80C4C8FC  3C 80 80 C5 */	lis r4, lit_4758@ha /* 0x80C4D56C@ha */
/* 80C4C900  C0 44 D5 6C */	lfs f2, lit_4758@l(r4)  /* 0x80C4D56C@l */
/* 80C4C904  38 9E 08 40 */	addi r4, r30, 0x840
/* 80C4C908  38 A0 00 00 */	li r5, 0
/* 80C4C90C  3C C0 80 C5 */	lis r6, lit_4759@ha /* 0x80C4D570@ha */
/* 80C4C910  C0 66 D5 70 */	lfs f3, lit_4759@l(r6)  /* 0x80C4D570@l */
/* 80C4C914  3C C0 80 42 */	lis r6, mSimpleTexObj__21dDlst_shadowControl_c@ha /* 0x804248D0@ha */
/* 80C4C918  38 C6 48 D0 */	addi r6, r6, mSimpleTexObj__21dDlst_shadowControl_c@l /* 0x804248D0@l */
/* 80C4C91C  4B 3E 07 99 */	bl dComIfGd_setSimpleShadow__FP4cXyzffR13cBgS_PolyInfosfP9_GXTexObj
lbl_80C4C920:
/* 80C4C920  38 60 00 01 */	li r3, 1
/* 80C4C924  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C4C928  83 C1 00 08 */	lwz r30, 8(r1)
/* 80C4C92C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C4C930  7C 08 03 A6 */	mtlr r0
/* 80C4C934  38 21 00 10 */	addi r1, r1, 0x10
/* 80C4C938  4E 80 00 20 */	blr 
