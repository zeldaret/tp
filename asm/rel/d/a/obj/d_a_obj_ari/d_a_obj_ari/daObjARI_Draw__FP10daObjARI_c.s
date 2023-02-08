lbl_80BA473C:
/* 80BA473C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BA4740  7C 08 02 A6 */	mflr r0
/* 80BA4744  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BA4748  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BA474C  93 C1 00 08 */	stw r30, 8(r1)
/* 80BA4750  7C 7E 1B 78 */	mr r30, r3
/* 80BA4754  88 03 05 6D */	lbz r0, 0x56d(r3)
/* 80BA4758  28 00 00 00 */	cmplwi r0, 0
/* 80BA475C  41 82 00 A4 */	beq lbl_80BA4800
/* 80BA4760  4B FF FD 91 */	bl Z_BufferChk__10daObjARI_cFv
/* 80BA4764  80 7E 0A 68 */	lwz r3, 0xa68(r30)
/* 80BA4768  83 E3 00 04 */	lwz r31, 4(r3)
/* 80BA476C  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80BA4770  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80BA4774  38 80 00 00 */	li r4, 0
/* 80BA4778  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80BA477C  38 DE 01 0C */	addi r6, r30, 0x10c
/* 80BA4780  4B 5F F0 45 */	bl settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 80BA4784  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80BA4788  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80BA478C  80 9F 00 04 */	lwz r4, 4(r31)
/* 80BA4790  38 BE 01 0C */	addi r5, r30, 0x10c
/* 80BA4794  4B 60 06 0D */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80BA4798  80 9F 00 04 */	lwz r4, 4(r31)
/* 80BA479C  80 7E 06 24 */	lwz r3, 0x624(r30)
/* 80BA47A0  C0 23 00 10 */	lfs f1, 0x10(r3)
/* 80BA47A4  38 84 00 58 */	addi r4, r4, 0x58
/* 80BA47A8  4B 46 8F 31 */	bl entry__13mDoExt_btkAnmFP16J3DMaterialTablef
/* 80BA47AC  80 9F 00 04 */	lwz r4, 4(r31)
/* 80BA47B0  80 7E 06 20 */	lwz r3, 0x620(r30)
/* 80BA47B4  C0 23 00 10 */	lfs f1, 0x10(r3)
/* 80BA47B8  38 84 00 58 */	addi r4, r4, 0x58
/* 80BA47BC  4B 46 8F ED */	bl entry__13mDoExt_brkAnmFP16J3DMaterialTablef
/* 80BA47C0  80 7E 0A 68 */	lwz r3, 0xa68(r30)
/* 80BA47C4  4B 46 C9 FD */	bl entryDL__16mDoExt_McaMorfSOFv
/* 80BA47C8  88 1E 06 31 */	lbz r0, 0x631(r30)
/* 80BA47CC  28 00 00 00 */	cmplwi r0, 0
/* 80BA47D0  40 82 00 30 */	bne lbl_80BA4800
/* 80BA47D4  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 80BA47D8  C0 3E 09 28 */	lfs f1, 0x928(r30)
/* 80BA47DC  3C 80 80 BA */	lis r4, lit_4693@ha /* 0x80BA54F0@ha */
/* 80BA47E0  C0 44 54 F0 */	lfs f2, lit_4693@l(r4)  /* 0x80BA54F0@l */
/* 80BA47E4  38 9E 09 80 */	addi r4, r30, 0x980
/* 80BA47E8  38 A0 00 00 */	li r5, 0
/* 80BA47EC  3C C0 80 BA */	lis r6, lit_4694@ha /* 0x80BA54F4@ha */
/* 80BA47F0  C0 66 54 F4 */	lfs f3, lit_4694@l(r6)  /* 0x80BA54F4@l */
/* 80BA47F4  3C C0 80 42 */	lis r6, mSimpleTexObj__21dDlst_shadowControl_c@ha /* 0x804248D0@ha */
/* 80BA47F8  38 C6 48 D0 */	addi r6, r6, mSimpleTexObj__21dDlst_shadowControl_c@l /* 0x804248D0@l */
/* 80BA47FC  4B 48 88 B9 */	bl dComIfGd_setSimpleShadow__FP4cXyzffR13cBgS_PolyInfosfP9_GXTexObj
lbl_80BA4800:
/* 80BA4800  38 60 00 01 */	li r3, 1
/* 80BA4804  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BA4808  83 C1 00 08 */	lwz r30, 8(r1)
/* 80BA480C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BA4810  7C 08 03 A6 */	mtlr r0
/* 80BA4814  38 21 00 10 */	addi r1, r1, 0x10
/* 80BA4818  4E 80 00 20 */	blr 
