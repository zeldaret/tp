lbl_8061B8B0:
/* 8061B8B0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8061B8B4  7C 08 02 A6 */	mflr r0
/* 8061B8B8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8061B8BC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8061B8C0  93 C1 00 08 */	stw r30, 8(r1)
/* 8061B8C4  7C 7E 1B 78 */	mr r30, r3
/* 8061B8C8  A8 03 05 CE */	lha r0, 0x5ce(r3)
/* 8061B8CC  2C 00 00 0B */	cmpwi r0, 0xb
/* 8061B8D0  40 82 00 0C */	bne lbl_8061B8DC
/* 8061B8D4  38 60 00 01 */	li r3, 1
/* 8061B8D8  48 00 00 70 */	b lbl_8061B948
lbl_8061B8DC:
/* 8061B8DC  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 8061B8E0  83 E3 00 04 */	lwz r31, 4(r3)
/* 8061B8E4  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 8061B8E8  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 8061B8EC  38 80 00 00 */	li r4, 0
/* 8061B8F0  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 8061B8F4  38 DE 01 0C */	addi r6, r30, 0x10c
/* 8061B8F8  4B B8 7E CD */	bl settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 8061B8FC  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 8061B900  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 8061B904  80 9F 00 04 */	lwz r4, 4(r31)
/* 8061B908  38 BE 01 0C */	addi r5, r30, 0x10c
/* 8061B90C  4B B8 94 95 */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 8061B910  80 9F 00 04 */	lwz r4, 4(r31)
/* 8061B914  80 7E 05 C0 */	lwz r3, 0x5c0(r30)
/* 8061B918  C0 23 00 10 */	lfs f1, 0x10(r3)
/* 8061B91C  38 84 00 58 */	addi r4, r4, 0x58
/* 8061B920  4B 9F 1D B9 */	bl entry__13mDoExt_btkAnmFP16J3DMaterialTablef
/* 8061B924  80 9F 00 04 */	lwz r4, 4(r31)
/* 8061B928  80 7E 05 C4 */	lwz r3, 0x5c4(r30)
/* 8061B92C  C0 23 00 10 */	lfs f1, 0x10(r3)
/* 8061B930  38 84 00 58 */	addi r4, r4, 0x58
/* 8061B934  4B 9F 1E 75 */	bl entry__13mDoExt_brkAnmFP16J3DMaterialTablef
/* 8061B938  38 7E 05 B8 */	addi r3, r30, 0x5b8
/* 8061B93C  38 80 00 00 */	li r4, 0
/* 8061B940  4B 9F 2E 81 */	bl entryDL__21mDoExt_invisibleModelFP4cXyz
/* 8061B944  38 60 00 01 */	li r3, 1
lbl_8061B948:
/* 8061B948  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8061B94C  83 C1 00 08 */	lwz r30, 8(r1)
/* 8061B950  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8061B954  7C 08 03 A6 */	mtlr r0
/* 8061B958  38 21 00 10 */	addi r1, r1, 0x10
/* 8061B95C  4E 80 00 20 */	blr 
