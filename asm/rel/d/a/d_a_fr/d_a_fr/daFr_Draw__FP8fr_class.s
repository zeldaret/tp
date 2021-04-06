lbl_805199F4:
/* 805199F4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805199F8  7C 08 02 A6 */	mflr r0
/* 805199FC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80519A00  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80519A04  93 C1 00 08 */	stw r30, 8(r1)
/* 80519A08  7C 7E 1B 78 */	mr r30, r3
/* 80519A0C  80 63 05 C4 */	lwz r3, 0x5c4(r3)
/* 80519A10  83 E3 00 04 */	lwz r31, 4(r3)
/* 80519A14  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80519A18  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80519A1C  38 80 00 00 */	li r4, 0
/* 80519A20  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80519A24  38 DE 01 0C */	addi r6, r30, 0x10c
/* 80519A28  4B C8 9D 9D */	bl settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 80519A2C  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80519A30  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80519A34  80 9F 00 04 */	lwz r4, 4(r31)
/* 80519A38  38 BE 01 0C */	addi r5, r30, 0x10c
/* 80519A3C  4B C8 B3 65 */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80519A40  80 9F 00 04 */	lwz r4, 4(r31)
/* 80519A44  80 7E 05 C8 */	lwz r3, 0x5c8(r30)
/* 80519A48  C0 23 00 10 */	lfs f1, 0x10(r3)
/* 80519A4C  38 84 00 58 */	addi r4, r4, 0x58
/* 80519A50  4B AF 3C 89 */	bl entry__13mDoExt_btkAnmFP16J3DMaterialTablef
/* 80519A54  80 7E 05 C4 */	lwz r3, 0x5c4(r30)
/* 80519A58  4B AF 6C 29 */	bl entryDL__14mDoExt_McaMorfFv
/* 80519A5C  88 1E 05 EC */	lbz r0, 0x5ec(r30)
/* 80519A60  7C 00 07 75 */	extsb. r0, r0
/* 80519A64  40 82 00 38 */	bne lbl_80519A9C
/* 80519A68  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 80519A6C  C0 3E 06 DC */	lfs f1, 0x6dc(r30)
/* 80519A70  3C 80 80 52 */	lis r4, lit_3649@ha /* 0x8051B9C8@ha */
/* 80519A74  C0 44 B9 C8 */	lfs f2, lit_3649@l(r4)  /* 0x8051B9C8@l */
/* 80519A78  C0 1E 04 EC */	lfs f0, 0x4ec(r30)
/* 80519A7C  EC 42 00 32 */	fmuls f2, f2, f0
/* 80519A80  38 9E 07 34 */	addi r4, r30, 0x734
/* 80519A84  38 A0 00 00 */	li r5, 0
/* 80519A88  3C C0 80 52 */	lis r6, lit_3691@ha /* 0x8051B9EC@ha */
/* 80519A8C  C0 66 B9 EC */	lfs f3, lit_3691@l(r6)  /* 0x8051B9EC@l */
/* 80519A90  3C C0 80 42 */	lis r6, mSimpleTexObj__21dDlst_shadowControl_c@ha /* 0x804248D0@ha */
/* 80519A94  38 C6 48 D0 */	addi r6, r6, mSimpleTexObj__21dDlst_shadowControl_c@l /* 0x804248D0@l */
/* 80519A98  4B B1 36 1D */	bl dComIfGd_setSimpleShadow__FP4cXyzffR13cBgS_PolyInfosfP9_GXTexObj
lbl_80519A9C:
/* 80519A9C  38 60 00 01 */	li r3, 1
/* 80519AA0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80519AA4  83 C1 00 08 */	lwz r30, 8(r1)
/* 80519AA8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80519AAC  7C 08 03 A6 */	mtlr r0
/* 80519AB0  38 21 00 10 */	addi r1, r1, 0x10
/* 80519AB4  4E 80 00 20 */	blr 
