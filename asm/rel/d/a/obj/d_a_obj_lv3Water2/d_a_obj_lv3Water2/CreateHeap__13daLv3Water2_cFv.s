lbl_80C5A4F8:
/* 80C5A4F8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80C5A4FC  7C 08 02 A6 */	mflr r0
/* 80C5A500  90 01 00 24 */	stw r0, 0x24(r1)
/* 80C5A504  39 61 00 20 */	addi r11, r1, 0x20
/* 80C5A508  4B 70 7C D0 */	b _savegpr_28
/* 80C5A50C  7C 7F 1B 78 */	mr r31, r3
/* 80C5A510  3C 60 80 C6 */	lis r3, l_bmdIdx@ha
/* 80C5A514  3B A3 B3 64 */	addi r29, r3, l_bmdIdx@l
/* 80C5A518  88 1F 05 DD */	lbz r0, 0x5dd(r31)
/* 80C5A51C  54 00 10 3A */	slwi r0, r0, 2
/* 80C5A520  3C 60 80 C6 */	lis r3, l_resNameIdx@ha
/* 80C5A524  38 63 B3 C4 */	addi r3, r3, l_resNameIdx@l
/* 80C5A528  7C 63 00 2E */	lwzx r3, r3, r0
/* 80C5A52C  38 9D 00 00 */	addi r4, r29, 0
/* 80C5A530  7C 84 00 2E */	lwzx r4, r4, r0
/* 80C5A534  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 80C5A538  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 80C5A53C  3F 85 00 02 */	addis r28, r5, 2
/* 80C5A540  3B 9C C2 F8 */	addi r28, r28, -15624
/* 80C5A544  7F 85 E3 78 */	mr r5, r28
/* 80C5A548  38 C0 00 80 */	li r6, 0x80
/* 80C5A54C  4B 3E 1D A0 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80C5A550  7C 7E 1B 78 */	mr r30, r3
/* 80C5A554  3C 80 00 08 */	lis r4, 8
/* 80C5A558  3C A0 19 00 */	lis r5, 0x1900 /* 0x19000284@ha */
/* 80C5A55C  38 A5 02 84 */	addi r5, r5, 0x0284 /* 0x19000284@l */
/* 80C5A560  4B 3B A6 F4 */	b mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80C5A564  90 7F 05 C0 */	stw r3, 0x5c0(r31)
/* 80C5A568  80 1F 05 C0 */	lwz r0, 0x5c0(r31)
/* 80C5A56C  28 00 00 00 */	cmplwi r0, 0
/* 80C5A570  40 82 00 0C */	bne lbl_80C5A57C
/* 80C5A574  38 60 00 00 */	li r3, 0
/* 80C5A578  48 00 00 54 */	b lbl_80C5A5CC
lbl_80C5A57C:
/* 80C5A57C  88 1F 05 DD */	lbz r0, 0x5dd(r31)
/* 80C5A580  54 00 10 3A */	slwi r0, r0, 2
/* 80C5A584  3C 60 80 C6 */	lis r3, l_resNameIdx@ha
/* 80C5A588  38 63 B3 C4 */	addi r3, r3, l_resNameIdx@l
/* 80C5A58C  7C 63 00 2E */	lwzx r3, r3, r0
/* 80C5A590  38 9D 00 08 */	addi r4, r29, 8
/* 80C5A594  7C 84 00 2E */	lwzx r4, r4, r0
/* 80C5A598  7F 85 E3 78 */	mr r5, r28
/* 80C5A59C  38 C0 00 80 */	li r6, 0x80
/* 80C5A5A0  4B 3E 1D 4C */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80C5A5A4  7C 65 1B 78 */	mr r5, r3
/* 80C5A5A8  38 7F 05 C4 */	addi r3, r31, 0x5c4
/* 80C5A5AC  38 9E 00 58 */	addi r4, r30, 0x58
/* 80C5A5B0  38 C0 00 01 */	li r6, 1
/* 80C5A5B4  38 E0 00 02 */	li r7, 2
/* 80C5A5B8  C0 3D 00 0C */	lfs f1, 0xc(r29)
/* 80C5A5BC  39 00 00 00 */	li r8, 0
/* 80C5A5C0  39 20 FF FF */	li r9, -1
/* 80C5A5C4  4B 3B 30 78 */	b init__13mDoExt_btkAnmFP16J3DMaterialTableP19J3DAnmTextureSRTKeyiifss
/* 80C5A5C8  38 60 00 01 */	li r3, 1
lbl_80C5A5CC:
/* 80C5A5CC  39 61 00 20 */	addi r11, r1, 0x20
/* 80C5A5D0  4B 70 7C 54 */	b _restgpr_28
/* 80C5A5D4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80C5A5D8  7C 08 03 A6 */	mtlr r0
/* 80C5A5DC  38 21 00 20 */	addi r1, r1, 0x20
/* 80C5A5E0  4E 80 00 20 */	blr 
