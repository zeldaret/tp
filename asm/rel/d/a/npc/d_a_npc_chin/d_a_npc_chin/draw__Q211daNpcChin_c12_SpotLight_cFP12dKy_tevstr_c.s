lbl_8098C060:
/* 8098C060  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8098C064  7C 08 02 A6 */	mflr r0
/* 8098C068  90 01 00 14 */	stw r0, 0x14(r1)
/* 8098C06C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8098C070  93 C1 00 08 */	stw r30, 8(r1)
/* 8098C074  7C 7E 1B 78 */	mr r30, r3
/* 8098C078  7C 9F 23 78 */	mr r31, r4
/* 8098C07C  88 03 00 3C */	lbz r0, 0x3c(r3)
/* 8098C080  2C 00 00 01 */	cmpwi r0, 1
/* 8098C084  40 82 00 68 */	bne lbl_8098C0EC
/* 8098C088  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 8098C08C  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 8098C090  38 80 00 00 */	li r4, 0
/* 8098C094  38 BE 00 1C */	addi r5, r30, 0x1c
/* 8098C098  7F E6 FB 78 */	mr r6, r31
/* 8098C09C  4B 81 77 29 */	bl settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 8098C0A0  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 8098C0A4  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 8098C0A8  80 9E 00 00 */	lwz r4, 0(r30)
/* 8098C0AC  80 84 00 04 */	lwz r4, 4(r4)
/* 8098C0B0  7F E5 FB 78 */	mr r5, r31
/* 8098C0B4  4B 81 8C ED */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 8098C0B8  80 7E 00 00 */	lwz r3, 0(r30)
/* 8098C0BC  80 83 00 04 */	lwz r4, 4(r3)
/* 8098C0C0  C0 3E 00 14 */	lfs f1, 0x14(r30)
/* 8098C0C4  38 7E 00 04 */	addi r3, r30, 4
/* 8098C0C8  38 84 00 58 */	addi r4, r4, 0x58
/* 8098C0CC  4B 68 16 0D */	bl entry__13mDoExt_btkAnmFP16J3DMaterialTablef
/* 8098C0D0  80 7E 00 00 */	lwz r3, 0(r30)
/* 8098C0D4  4B 68 1B F1 */	bl mDoExt_modelUpdateDL__FP8J3DModel
/* 8098C0D8  80 7E 00 00 */	lwz r3, 0(r30)
/* 8098C0DC  80 63 00 04 */	lwz r3, 4(r3)
/* 8098C0E0  38 63 00 58 */	addi r3, r3, 0x58
/* 8098C0E4  80 9E 00 18 */	lwz r4, 0x18(r30)
/* 8098C0E8  4B 9A 36 CD */	bl removeTexMtxAnimator__16J3DMaterialTableFP19J3DAnmTextureSRTKey
lbl_8098C0EC:
/* 8098C0EC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8098C0F0  83 C1 00 08 */	lwz r30, 8(r1)
/* 8098C0F4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8098C0F8  7C 08 03 A6 */	mtlr r0
/* 8098C0FC  38 21 00 10 */	addi r1, r1, 0x10
/* 8098C100  4E 80 00 20 */	blr 
