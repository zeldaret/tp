lbl_80C8EB1C:
/* 80C8EB1C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80C8EB20  7C 08 02 A6 */	mflr r0
/* 80C8EB24  90 01 00 24 */	stw r0, 0x24(r1)
/* 80C8EB28  39 61 00 20 */	addi r11, r1, 0x20
/* 80C8EB2C  4B 6D 36 AC */	b _savegpr_28
/* 80C8EB30  7C 7D 1B 78 */	mr r29, r3
/* 80C8EB34  3C 60 80 C9 */	lis r3, lit_3627@ha
/* 80C8EB38  3B C3 FA E8 */	addi r30, r3, lit_3627@l
/* 80C8EB3C  88 1D 05 DC */	lbz r0, 0x5dc(r29)
/* 80C8EB40  54 00 10 3A */	slwi r0, r0, 2
/* 80C8EB44  3C 60 80 C9 */	lis r3, l_arcName@ha
/* 80C8EB48  38 63 FB B0 */	addi r3, r3, l_arcName@l
/* 80C8EB4C  7C 63 00 2E */	lwzx r3, r3, r0
/* 80C8EB50  38 9E 00 30 */	addi r4, r30, 0x30
/* 80C8EB54  7C 84 00 2E */	lwzx r4, r4, r0
/* 80C8EB58  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 80C8EB5C  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 80C8EB60  3F 85 00 02 */	addis r28, r5, 2
/* 80C8EB64  3B 9C C2 F8 */	addi r28, r28, -15624
/* 80C8EB68  7F 85 E3 78 */	mr r5, r28
/* 80C8EB6C  38 C0 00 80 */	li r6, 0x80
/* 80C8EB70  4B 3A D7 7C */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80C8EB74  7C 7F 1B 78 */	mr r31, r3
/* 80C8EB78  3C 80 00 08 */	lis r4, 8
/* 80C8EB7C  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000284@ha */
/* 80C8EB80  38 A5 02 84 */	addi r5, r5, 0x0284 /* 0x11000284@l */
/* 80C8EB84  4B 38 60 D0 */	b mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80C8EB88  90 7D 05 A8 */	stw r3, 0x5a8(r29)
/* 80C8EB8C  80 1D 05 A8 */	lwz r0, 0x5a8(r29)
/* 80C8EB90  28 00 00 00 */	cmplwi r0, 0
/* 80C8EB94  40 82 00 0C */	bne lbl_80C8EBA0
/* 80C8EB98  38 60 00 00 */	li r3, 0
/* 80C8EB9C  48 00 00 B0 */	b lbl_80C8EC4C
lbl_80C8EBA0:
/* 80C8EBA0  88 1D 05 DC */	lbz r0, 0x5dc(r29)
/* 80C8EBA4  54 00 10 3A */	slwi r0, r0, 2
/* 80C8EBA8  38 7E 00 48 */	addi r3, r30, 0x48
/* 80C8EBAC  7C 83 00 2E */	lwzx r4, r3, r0
/* 80C8EBB0  2C 04 FF FF */	cmpwi r4, -1
/* 80C8EBB4  41 82 00 40 */	beq lbl_80C8EBF4
/* 80C8EBB8  3C 60 80 C9 */	lis r3, l_arcName@ha
/* 80C8EBBC  38 63 FB B0 */	addi r3, r3, l_arcName@l
/* 80C8EBC0  7C 63 00 2E */	lwzx r3, r3, r0
/* 80C8EBC4  7F 85 E3 78 */	mr r5, r28
/* 80C8EBC8  38 C0 00 80 */	li r6, 0x80
/* 80C8EBCC  4B 3A D7 20 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80C8EBD0  7C 65 1B 78 */	mr r5, r3
/* 80C8EBD4  38 7D 05 AC */	addi r3, r29, 0x5ac
/* 80C8EBD8  38 9F 00 58 */	addi r4, r31, 0x58
/* 80C8EBDC  38 C0 00 01 */	li r6, 1
/* 80C8EBE0  38 E0 00 02 */	li r7, 2
/* 80C8EBE4  C0 3E 00 1C */	lfs f1, 0x1c(r30)
/* 80C8EBE8  39 00 00 00 */	li r8, 0
/* 80C8EBEC  39 20 FF FF */	li r9, -1
/* 80C8EBF0  4B 37 EA 4C */	b init__13mDoExt_btkAnmFP16J3DMaterialTableP19J3DAnmTextureSRTKeyiifss
lbl_80C8EBF4:
/* 80C8EBF4  88 1D 05 DC */	lbz r0, 0x5dc(r29)
/* 80C8EBF8  54 00 10 3A */	slwi r0, r0, 2
/* 80C8EBFC  38 7E 00 54 */	addi r3, r30, 0x54
/* 80C8EC00  7C 83 00 2E */	lwzx r4, r3, r0
/* 80C8EC04  2C 04 FF FF */	cmpwi r4, -1
/* 80C8EC08  41 82 00 40 */	beq lbl_80C8EC48
/* 80C8EC0C  3C 60 80 C9 */	lis r3, l_arcName@ha
/* 80C8EC10  38 63 FB B0 */	addi r3, r3, l_arcName@l
/* 80C8EC14  7C 63 00 2E */	lwzx r3, r3, r0
/* 80C8EC18  7F 85 E3 78 */	mr r5, r28
/* 80C8EC1C  38 C0 00 80 */	li r6, 0x80
/* 80C8EC20  4B 3A D6 CC */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80C8EC24  7C 65 1B 78 */	mr r5, r3
/* 80C8EC28  38 7D 05 C4 */	addi r3, r29, 0x5c4
/* 80C8EC2C  38 9F 00 58 */	addi r4, r31, 0x58
/* 80C8EC30  38 C0 00 01 */	li r6, 1
/* 80C8EC34  38 E0 00 02 */	li r7, 2
/* 80C8EC38  C0 3E 00 1C */	lfs f1, 0x1c(r30)
/* 80C8EC3C  39 00 00 00 */	li r8, 0
/* 80C8EC40  39 20 FF FF */	li r9, -1
/* 80C8EC44  4B 37 EA C8 */	b init__13mDoExt_brkAnmFP16J3DMaterialTableP15J3DAnmTevRegKeyiifss
lbl_80C8EC48:
/* 80C8EC48  38 60 00 01 */	li r3, 1
lbl_80C8EC4C:
/* 80C8EC4C  39 61 00 20 */	addi r11, r1, 0x20
/* 80C8EC50  4B 6D 35 D4 */	b _restgpr_28
/* 80C8EC54  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80C8EC58  7C 08 03 A6 */	mtlr r0
/* 80C8EC5C  38 21 00 20 */	addi r1, r1, 0x20
/* 80C8EC60  4E 80 00 20 */	blr 
