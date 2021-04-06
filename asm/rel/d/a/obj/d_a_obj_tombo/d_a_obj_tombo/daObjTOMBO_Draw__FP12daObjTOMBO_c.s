lbl_80D1AEC8:
/* 80D1AEC8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D1AECC  7C 08 02 A6 */	mflr r0
/* 80D1AED0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D1AED4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D1AED8  93 C1 00 08 */	stw r30, 8(r1)
/* 80D1AEDC  7C 7E 1B 78 */	mr r30, r3
/* 80D1AEE0  88 03 05 6D */	lbz r0, 0x56d(r3)
/* 80D1AEE4  28 00 00 00 */	cmplwi r0, 0
/* 80D1AEE8  41 82 00 A4 */	beq lbl_80D1AF8C
/* 80D1AEEC  4B FF FD 99 */	bl Z_BufferChk__12daObjTOMBO_cFv
/* 80D1AEF0  80 7E 08 30 */	lwz r3, 0x830(r30)
/* 80D1AEF4  83 E3 00 04 */	lwz r31, 4(r3)
/* 80D1AEF8  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80D1AEFC  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80D1AF00  38 80 00 10 */	li r4, 0x10
/* 80D1AF04  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80D1AF08  38 DE 01 0C */	addi r6, r30, 0x10c
/* 80D1AF0C  4B 48 88 B9 */	bl settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 80D1AF10  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80D1AF14  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80D1AF18  80 9F 00 04 */	lwz r4, 4(r31)
/* 80D1AF1C  38 BE 01 0C */	addi r5, r30, 0x10c
/* 80D1AF20  4B 48 9E 81 */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80D1AF24  80 9F 00 04 */	lwz r4, 4(r31)
/* 80D1AF28  80 7E 07 4C */	lwz r3, 0x74c(r30)
/* 80D1AF2C  C0 23 00 10 */	lfs f1, 0x10(r3)
/* 80D1AF30  38 84 00 58 */	addi r4, r4, 0x58
/* 80D1AF34  4B 2F 27 A5 */	bl entry__13mDoExt_btkAnmFP16J3DMaterialTablef
/* 80D1AF38  80 9F 00 04 */	lwz r4, 4(r31)
/* 80D1AF3C  80 7E 07 48 */	lwz r3, 0x748(r30)
/* 80D1AF40  C0 23 00 10 */	lfs f1, 0x10(r3)
/* 80D1AF44  38 84 00 58 */	addi r4, r4, 0x58
/* 80D1AF48  4B 2F 28 61 */	bl entry__13mDoExt_brkAnmFP16J3DMaterialTablef
/* 80D1AF4C  80 7E 08 30 */	lwz r3, 0x830(r30)
/* 80D1AF50  4B 2F 62 71 */	bl entryDL__16mDoExt_McaMorfSOFv
/* 80D1AF54  88 1E 07 5C */	lbz r0, 0x75c(r30)
/* 80D1AF58  28 00 00 00 */	cmplwi r0, 0
/* 80D1AF5C  40 82 00 30 */	bne lbl_80D1AF8C
/* 80D1AF60  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 80D1AF64  C0 3E 08 CC */	lfs f1, 0x8cc(r30)
/* 80D1AF68  3C 80 80 D2 */	lis r4, lit_4590@ha /* 0x80D1B7D8@ha */
/* 80D1AF6C  C0 44 B7 D8 */	lfs f2, lit_4590@l(r4)  /* 0x80D1B7D8@l */
/* 80D1AF70  38 9E 09 24 */	addi r4, r30, 0x924
/* 80D1AF74  38 A0 00 00 */	li r5, 0
/* 80D1AF78  3C C0 80 D2 */	lis r6, lit_4591@ha /* 0x80D1B7DC@ha */
/* 80D1AF7C  C0 66 B7 DC */	lfs f3, lit_4591@l(r6)  /* 0x80D1B7DC@l */
/* 80D1AF80  3C C0 80 42 */	lis r6, mSimpleTexObj__21dDlst_shadowControl_c@ha /* 0x804248D0@ha */
/* 80D1AF84  38 C6 48 D0 */	addi r6, r6, mSimpleTexObj__21dDlst_shadowControl_c@l /* 0x804248D0@l */
/* 80D1AF88  4B 31 21 2D */	bl dComIfGd_setSimpleShadow__FP4cXyzffR13cBgS_PolyInfosfP9_GXTexObj
lbl_80D1AF8C:
/* 80D1AF8C  38 60 00 01 */	li r3, 1
/* 80D1AF90  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D1AF94  83 C1 00 08 */	lwz r30, 8(r1)
/* 80D1AF98  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D1AF9C  7C 08 03 A6 */	mtlr r0
/* 80D1AFA0  38 21 00 10 */	addi r1, r1, 0x10
/* 80D1AFA4  4E 80 00 20 */	blr 
