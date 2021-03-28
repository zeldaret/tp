lbl_80D1FC0C:
/* 80D1FC0C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80D1FC10  7C 08 02 A6 */	mflr r0
/* 80D1FC14  90 01 00 24 */	stw r0, 0x24(r1)
/* 80D1FC18  39 61 00 20 */	addi r11, r1, 0x20
/* 80D1FC1C  4B 64 25 BC */	b _savegpr_28
/* 80D1FC20  7C 7E 1B 78 */	mr r30, r3
/* 80D1FC24  3C 60 80 D2 */	lis r3, lit_3638@ha
/* 80D1FC28  3B E3 03 08 */	addi r31, r3, lit_3638@l
/* 80D1FC2C  88 1E 05 DC */	lbz r0, 0x5dc(r30)
/* 80D1FC30  54 00 10 3A */	slwi r0, r0, 2
/* 80D1FC34  3C 60 80 D2 */	lis r3, l_resNameIdx@ha
/* 80D1FC38  38 63 05 B0 */	addi r3, r3, l_resNameIdx@l
/* 80D1FC3C  7C 63 00 2E */	lwzx r3, r3, r0
/* 80D1FC40  38 9F 00 04 */	addi r4, r31, 4
/* 80D1FC44  7C 84 00 2E */	lwzx r4, r4, r0
/* 80D1FC48  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 80D1FC4C  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 80D1FC50  3F 85 00 02 */	addis r28, r5, 2
/* 80D1FC54  3B 9C C2 F8 */	addi r28, r28, -15624
/* 80D1FC58  7F 85 E3 78 */	mr r5, r28
/* 80D1FC5C  38 C0 00 80 */	li r6, 0x80
/* 80D1FC60  4B 31 C6 8C */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80D1FC64  7C 7D 1B 78 */	mr r29, r3
/* 80D1FC68  3C 80 00 08 */	lis r4, 8
/* 80D1FC6C  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000284@ha */
/* 80D1FC70  38 A5 02 84 */	addi r5, r5, 0x0284 /* 0x11000284@l */
/* 80D1FC74  4B 2F 4F E0 */	b mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80D1FC78  90 7E 05 A8 */	stw r3, 0x5a8(r30)
/* 80D1FC7C  80 1E 05 A8 */	lwz r0, 0x5a8(r30)
/* 80D1FC80  28 00 00 00 */	cmplwi r0, 0
/* 80D1FC84  40 82 00 0C */	bne lbl_80D1FC90
/* 80D1FC88  38 60 00 00 */	li r3, 0
/* 80D1FC8C  48 00 00 A0 */	b lbl_80D1FD2C
lbl_80D1FC90:
/* 80D1FC90  88 1E 05 DC */	lbz r0, 0x5dc(r30)
/* 80D1FC94  54 00 10 3A */	slwi r0, r0, 2
/* 80D1FC98  3C 60 80 D2 */	lis r3, l_resNameIdx@ha
/* 80D1FC9C  38 63 05 B0 */	addi r3, r3, l_resNameIdx@l
/* 80D1FCA0  7C 63 00 2E */	lwzx r3, r3, r0
/* 80D1FCA4  38 9F 00 6C */	addi r4, r31, 0x6c
/* 80D1FCA8  7C 84 00 2E */	lwzx r4, r4, r0
/* 80D1FCAC  7F 85 E3 78 */	mr r5, r28
/* 80D1FCB0  38 C0 00 80 */	li r6, 0x80
/* 80D1FCB4  4B 31 C6 38 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80D1FCB8  7C 65 1B 78 */	mr r5, r3
/* 80D1FCBC  38 7E 05 AC */	addi r3, r30, 0x5ac
/* 80D1FCC0  38 9D 00 58 */	addi r4, r29, 0x58
/* 80D1FCC4  38 C0 00 01 */	li r6, 1
/* 80D1FCC8  38 E0 00 02 */	li r7, 2
/* 80D1FCCC  C0 3F 02 40 */	lfs f1, 0x240(r31)
/* 80D1FCD0  39 00 00 00 */	li r8, 0
/* 80D1FCD4  39 20 FF FF */	li r9, -1
/* 80D1FCD8  4B 2E D9 64 */	b init__13mDoExt_btkAnmFP16J3DMaterialTableP19J3DAnmTextureSRTKeyiifss
/* 80D1FCDC  88 1E 05 DC */	lbz r0, 0x5dc(r30)
/* 80D1FCE0  54 00 10 3A */	slwi r0, r0, 2
/* 80D1FCE4  3C 60 80 D2 */	lis r3, l_resNameIdx@ha
/* 80D1FCE8  38 63 05 B0 */	addi r3, r3, l_resNameIdx@l
/* 80D1FCEC  7C 63 00 2E */	lwzx r3, r3, r0
/* 80D1FCF0  38 9F 00 A0 */	addi r4, r31, 0xa0
/* 80D1FCF4  7C 84 00 2E */	lwzx r4, r4, r0
/* 80D1FCF8  7F 85 E3 78 */	mr r5, r28
/* 80D1FCFC  38 C0 00 80 */	li r6, 0x80
/* 80D1FD00  4B 31 C5 EC */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80D1FD04  7C 65 1B 78 */	mr r5, r3
/* 80D1FD08  38 7E 05 C4 */	addi r3, r30, 0x5c4
/* 80D1FD0C  38 9D 00 58 */	addi r4, r29, 0x58
/* 80D1FD10  38 C0 00 01 */	li r6, 1
/* 80D1FD14  38 E0 00 00 */	li r7, 0
/* 80D1FD18  C0 3F 02 40 */	lfs f1, 0x240(r31)
/* 80D1FD1C  39 00 00 00 */	li r8, 0
/* 80D1FD20  39 20 FF FF */	li r9, -1
/* 80D1FD24  4B 2E D9 E8 */	b init__13mDoExt_brkAnmFP16J3DMaterialTableP15J3DAnmTevRegKeyiifss
/* 80D1FD28  38 60 00 01 */	li r3, 1
lbl_80D1FD2C:
/* 80D1FD2C  39 61 00 20 */	addi r11, r1, 0x20
/* 80D1FD30  4B 64 24 F4 */	b _restgpr_28
/* 80D1FD34  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80D1FD38  7C 08 03 A6 */	mtlr r0
/* 80D1FD3C  38 21 00 20 */	addi r1, r1, 0x20
/* 80D1FD40  4E 80 00 20 */	blr 
