lbl_807B4C40:
/* 807B4C40  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 807B4C44  7C 08 02 A6 */	mflr r0
/* 807B4C48  90 01 00 14 */	stw r0, 0x14(r1)
/* 807B4C4C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 807B4C50  7C 7F 1B 78 */	mr r31, r3
/* 807B4C54  88 03 1A 8E */	lbz r0, 0x1a8e(r3)
/* 807B4C58  7C 00 07 75 */	extsb. r0, r0
/* 807B4C5C  41 82 00 0C */	beq lbl_807B4C68
/* 807B4C60  38 60 00 01 */	li r3, 1
/* 807B4C64  48 00 00 74 */	b lbl_807B4CD8
lbl_807B4C68:
/* 807B4C68  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 807B4C6C  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 807B4C70  38 80 00 00 */	li r4, 0
/* 807B4C74  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 807B4C78  38 DF 01 0C */	addi r6, r31, 0x10c
/* 807B4C7C  4B 9E EB 49 */	bl settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 807B4C80  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 807B4C84  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 807B4C88  80 9F 05 B8 */	lwz r4, 0x5b8(r31)
/* 807B4C8C  80 84 00 04 */	lwz r4, 4(r4)
/* 807B4C90  38 BF 01 0C */	addi r5, r31, 0x10c
/* 807B4C94  4B 9F 01 0D */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 807B4C98  80 7F 05 B8 */	lwz r3, 0x5b8(r31)
/* 807B4C9C  4B 85 90 29 */	bl mDoExt_modelUpdateDL__FP8J3DModel
/* 807B4CA0  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 807B4CA4  C0 3F 16 A0 */	lfs f1, 0x16a0(r31)
/* 807B4CA8  3C 80 80 7B */	lis r4, lit_3759@ha /* 0x807B7EC4@ha */
/* 807B4CAC  C0 44 7E C4 */	lfs f2, lit_3759@l(r4)  /* 0x807B7EC4@l */
/* 807B4CB0  38 9F 16 F8 */	addi r4, r31, 0x16f8
/* 807B4CB4  38 A0 00 00 */	li r5, 0
/* 807B4CB8  3C C0 80 7B */	lis r6, lit_3746@ha /* 0x807B7EB8@ha */
/* 807B4CBC  C0 66 7E B8 */	lfs f3, lit_3746@l(r6)  /* 0x807B7EB8@l */
/* 807B4CC0  3C C0 80 42 */	lis r6, mSimpleTexObj__21dDlst_shadowControl_c@ha /* 0x804248D0@ha */
/* 807B4CC4  38 C6 48 D0 */	addi r6, r6, mSimpleTexObj__21dDlst_shadowControl_c@l /* 0x804248D0@l */
/* 807B4CC8  4B 87 83 ED */	bl dComIfGd_setSimpleShadow__FP4cXyzffR13cBgS_PolyInfosfP9_GXTexObj
/* 807B4CCC  7F E3 FB 78 */	mr r3, r31
/* 807B4CD0  4B FF FC 49 */	bl chain_draw__FP15e_th_ball_class
/* 807B4CD4  38 60 00 01 */	li r3, 1
lbl_807B4CD8:
/* 807B4CD8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 807B4CDC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807B4CE0  7C 08 03 A6 */	mtlr r0
/* 807B4CE4  38 21 00 10 */	addi r1, r1, 0x10
/* 807B4CE8  4E 80 00 20 */	blr 
