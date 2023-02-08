lbl_80A88FC4:
/* 80A88FC4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80A88FC8  7C 08 02 A6 */	mflr r0
/* 80A88FCC  90 01 00 34 */	stw r0, 0x34(r1)
/* 80A88FD0  39 61 00 30 */	addi r11, r1, 0x30
/* 80A88FD4  4B 8D 92 09 */	bl _savegpr_29
/* 80A88FD8  7C 7F 1B 78 */	mr r31, r3
/* 80A88FDC  3C 80 80 A9 */	lis r4, lit_3990@ha /* 0x80A9241C@ha */
/* 80A88FE0  3B C4 24 1C */	addi r30, r4, lit_3990@l /* 0x80A9241C@l */
/* 80A88FE4  4B 6D 65 79 */	bl linkGrabSubjectNoDraw__9daPy_py_cFP10fopAc_ac_c
/* 80A88FE8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80A88FEC  41 82 00 0C */	beq lbl_80A88FF8
/* 80A88FF0  38 60 00 01 */	li r3, 1
/* 80A88FF4  48 00 01 54 */	b lbl_80A89148
lbl_80A88FF8:
/* 80A88FF8  80 7F 05 E8 */	lwz r3, 0x5e8(r31)
/* 80A88FFC  83 A3 00 04 */	lwz r29, 4(r3)
/* 80A89000  80 9F 05 E4 */	lwz r4, 0x5e4(r31)
/* 80A89004  3C 60 80 A9 */	lis r3, d_a_npc_ne__stringBase0@ha /* 0x80A925D0@ha */
/* 80A89008  38 03 25 D0 */	addi r0, r3, d_a_npc_ne__stringBase0@l /* 0x80A925D0@l */
/* 80A8900C  7C 04 00 40 */	cmplw r4, r0
/* 80A89010  40 82 00 34 */	bne lbl_80A89044
/* 80A89014  4B 5A 6A 41 */	bl dComIfGs_wolfeye_effect_check__Fv
/* 80A89018  2C 03 00 00 */	cmpwi r3, 0
/* 80A8901C  40 82 00 0C */	bne lbl_80A89028
/* 80A89020  38 60 00 01 */	li r3, 1
/* 80A89024  48 00 01 24 */	b lbl_80A89148
lbl_80A89028:
/* 80A89028  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80A8902C  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80A89030  38 80 00 04 */	li r4, 4
/* 80A89034  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 80A89038  38 DF 01 0C */	addi r6, r31, 0x10c
/* 80A8903C  4B 71 A7 89 */	bl settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 80A89040  48 00 00 1C */	b lbl_80A8905C
lbl_80A89044:
/* 80A89044  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80A89048  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80A8904C  38 80 00 00 */	li r4, 0
/* 80A89050  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 80A89054  38 DF 01 0C */	addi r6, r31, 0x10c
/* 80A89058  4B 71 A7 6D */	bl settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
lbl_80A8905C:
/* 80A8905C  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80A89060  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80A89064  80 9D 00 04 */	lwz r4, 4(r29)
/* 80A89068  38 BF 01 0C */	addi r5, r31, 0x10c
/* 80A8906C  4B 71 BD 35 */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80A89070  80 9D 00 04 */	lwz r4, 4(r29)
/* 80A89074  80 7F 05 EC */	lwz r3, 0x5ec(r31)
/* 80A89078  C0 23 00 10 */	lfs f1, 0x10(r3)
/* 80A8907C  38 84 00 58 */	addi r4, r4, 0x58
/* 80A89080  4B 58 46 59 */	bl entry__13mDoExt_btkAnmFP16J3DMaterialTablef
/* 80A89084  80 9D 00 04 */	lwz r4, 4(r29)
/* 80A89088  80 7F 05 F0 */	lwz r3, 0x5f0(r31)
/* 80A8908C  38 84 00 58 */	addi r4, r4, 0x58
/* 80A89090  C0 03 00 10 */	lfs f0, 0x10(r3)
/* 80A89094  FC 00 00 1E */	fctiwz f0, f0
/* 80A89098  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 80A8909C  80 A1 00 1C */	lwz r5, 0x1c(r1)
/* 80A890A0  4B 58 45 49 */	bl entry__13mDoExt_btpAnmFP16J3DMaterialTables
/* 80A890A4  80 7F 05 E8 */	lwz r3, 0x5e8(r31)
/* 80A890A8  4B 58 75 D9 */	bl entryDL__14mDoExt_McaMorfFv
/* 80A890AC  80 1F 04 9C */	lwz r0, 0x49c(r31)
/* 80A890B0  54 00 04 A5 */	rlwinm. r0, r0, 0, 0x12, 0x12
/* 80A890B4  40 82 00 60 */	bne lbl_80A89114
/* 80A890B8  C0 5F 04 D8 */	lfs f2, 0x4d8(r31)
/* 80A890BC  C0 1E 00 18 */	lfs f0, 0x18(r30)
/* 80A890C0  C0 7F 04 D4 */	lfs f3, 0x4d4(r31)
/* 80A890C4  EC 20 18 2A */	fadds f1, f0, f3
/* 80A890C8  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 80A890CC  D0 01 00 08 */	stfs f0, 8(r1)
/* 80A890D0  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80A890D4  D0 41 00 10 */	stfs f2, 0x10(r1)
/* 80A890D8  80 7F 06 48 */	lwz r3, 0x648(r31)
/* 80A890DC  38 80 00 01 */	li r4, 1
/* 80A890E0  7F A5 EB 78 */	mr r5, r29
/* 80A890E4  38 C1 00 08 */	addi r6, r1, 8
/* 80A890E8  C0 3E 00 1C */	lfs f1, 0x1c(r30)
/* 80A890EC  C0 5E 00 10 */	lfs f2, 0x10(r30)
/* 80A890F0  C0 9F 07 DC */	lfs f4, 0x7dc(r31)
/* 80A890F4  38 FF 08 34 */	addi r7, r31, 0x834
/* 80A890F8  39 1F 01 0C */	addi r8, r31, 0x10c
/* 80A890FC  39 20 00 00 */	li r9, 0
/* 80A89100  C0 BE 00 00 */	lfs f5, 0(r30)
/* 80A89104  3D 40 80 42 */	lis r10, mSimpleTexObj__21dDlst_shadowControl_c@ha /* 0x804248D0@ha */
/* 80A89108  39 4A 48 D0 */	addi r10, r10, mSimpleTexObj__21dDlst_shadowControl_c@l /* 0x804248D0@l */
/* 80A8910C  4B 5A 58 05 */	bl dComIfGd_setShadow__FUlScP8J3DModelP4cXyzffffR13cBgS_PolyInfoP12dKy_tevstr_csfP9_GXTexObj
/* 80A89110  90 7F 06 48 */	stw r3, 0x648(r31)
lbl_80A89114:
/* 80A89114  88 1F 05 B4 */	lbz r0, 0x5b4(r31)
/* 80A89118  28 00 00 03 */	cmplwi r0, 3
/* 80A8911C  40 82 00 28 */	bne lbl_80A89144
/* 80A89120  80 7F 05 FC */	lwz r3, 0x5fc(r31)
/* 80A89124  80 83 00 04 */	lwz r4, 4(r3)
/* 80A89128  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80A8912C  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80A89130  80 84 00 04 */	lwz r4, 4(r4)
/* 80A89134  38 BF 01 0C */	addi r5, r31, 0x10c
/* 80A89138  4B 71 BC 69 */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80A8913C  80 7F 05 FC */	lwz r3, 0x5fc(r31)
/* 80A89140  4B 58 75 41 */	bl entryDL__14mDoExt_McaMorfFv
lbl_80A89144:
/* 80A89144  38 60 00 01 */	li r3, 1
lbl_80A89148:
/* 80A89148  39 61 00 30 */	addi r11, r1, 0x30
/* 80A8914C  4B 8D 90 DD */	bl _restgpr_29
/* 80A89150  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80A89154  7C 08 03 A6 */	mtlr r0
/* 80A89158  38 21 00 30 */	addi r1, r1, 0x30
/* 80A8915C  4E 80 00 20 */	blr 
