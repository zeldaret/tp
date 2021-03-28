lbl_80C6EDA8:
/* 80C6EDA8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C6EDAC  7C 08 02 A6 */	mflr r0
/* 80C6EDB0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C6EDB4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C6EDB8  93 C1 00 08 */	stw r30, 8(r1)
/* 80C6EDBC  7C 7F 1B 78 */	mr r31, r3
/* 80C6EDC0  3C 60 80 C7 */	lis r3, l_arcName@ha
/* 80C6EDC4  38 63 0A 38 */	addi r3, r3, l_arcName@l
/* 80C6EDC8  80 63 00 00 */	lwz r3, 0(r3)
/* 80C6EDCC  38 80 00 09 */	li r4, 9
/* 80C6EDD0  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 80C6EDD4  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 80C6EDD8  3F C5 00 02 */	addis r30, r5, 2
/* 80C6EDDC  3B DE C2 F8 */	addi r30, r30, -15624
/* 80C6EDE0  7F C5 F3 78 */	mr r5, r30
/* 80C6EDE4  38 C0 00 80 */	li r6, 0x80
/* 80C6EDE8  4B 3C D5 04 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80C6EDEC  3C 80 00 08 */	lis r4, 8
/* 80C6EDF0  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 80C6EDF4  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 80C6EDF8  4B 3A 5E 5C */	b mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80C6EDFC  90 7F 06 20 */	stw r3, 0x620(r31)
/* 80C6EE00  80 1F 06 20 */	lwz r0, 0x620(r31)
/* 80C6EE04  28 00 00 00 */	cmplwi r0, 0
/* 80C6EE08  40 82 00 0C */	bne lbl_80C6EE14
/* 80C6EE0C  38 60 00 00 */	li r3, 0
/* 80C6EE10  48 00 00 AC */	b lbl_80C6EEBC
lbl_80C6EE14:
/* 80C6EE14  3C 60 80 C7 */	lis r3, l_arcName@ha
/* 80C6EE18  38 63 0A 38 */	addi r3, r3, l_arcName@l
/* 80C6EE1C  80 63 00 00 */	lwz r3, 0(r3)
/* 80C6EE20  38 80 00 08 */	li r4, 8
/* 80C6EE24  7F C5 F3 78 */	mr r5, r30
/* 80C6EE28  38 C0 00 80 */	li r6, 0x80
/* 80C6EE2C  4B 3C D4 C0 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80C6EE30  3C 80 00 08 */	lis r4, 8
/* 80C6EE34  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 80C6EE38  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 80C6EE3C  4B 3A 5E 18 */	b mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80C6EE40  90 7F 0A 34 */	stw r3, 0xa34(r31)
/* 80C6EE44  80 1F 0A 34 */	lwz r0, 0xa34(r31)
/* 80C6EE48  28 00 00 00 */	cmplwi r0, 0
/* 80C6EE4C  40 82 00 0C */	bne lbl_80C6EE58
/* 80C6EE50  38 60 00 00 */	li r3, 0
/* 80C6EE54  48 00 00 68 */	b lbl_80C6EEBC
lbl_80C6EE58:
/* 80C6EE58  3C 60 80 C7 */	lis r3, l_arcName@ha
/* 80C6EE5C  38 63 0A 38 */	addi r3, r3, l_arcName@l
/* 80C6EE60  80 63 00 00 */	lwz r3, 0(r3)
/* 80C6EE64  38 80 00 05 */	li r4, 5
/* 80C6EE68  7F C5 F3 78 */	mr r5, r30
/* 80C6EE6C  38 C0 00 80 */	li r6, 0x80
/* 80C6EE70  4B 3C D4 7C */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80C6EE74  7C 64 1B 78 */	mr r4, r3
/* 80C6EE78  38 7F 0A 38 */	addi r3, r31, 0xa38
/* 80C6EE7C  38 A0 00 01 */	li r5, 1
/* 80C6EE80  38 C0 00 02 */	li r6, 2
/* 80C6EE84  3C E0 80 C7 */	lis r7, lit_3719@ha
/* 80C6EE88  C0 27 09 C8 */	lfs f1, lit_3719@l(r7)
/* 80C6EE8C  38 E0 00 00 */	li r7, 0
/* 80C6EE90  39 00 FF FF */	li r8, -1
/* 80C6EE94  39 20 00 00 */	li r9, 0
/* 80C6EE98  4B 39 E9 44 */	b init__13mDoExt_bckAnmFP15J3DAnmTransformiifssb
/* 80C6EE9C  2C 03 00 00 */	cmpwi r3, 0
/* 80C6EEA0  40 82 00 0C */	bne lbl_80C6EEAC
/* 80C6EEA4  38 60 00 00 */	li r3, 0
/* 80C6EEA8  48 00 00 14 */	b lbl_80C6EEBC
lbl_80C6EEAC:
/* 80C6EEAC  3C 60 80 C7 */	lis r3, lit_3694@ha
/* 80C6EEB0  C0 03 09 C0 */	lfs f0, lit_3694@l(r3)
/* 80C6EEB4  D0 1F 0A 44 */	stfs f0, 0xa44(r31)
/* 80C6EEB8  38 60 00 01 */	li r3, 1
lbl_80C6EEBC:
/* 80C6EEBC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C6EEC0  83 C1 00 08 */	lwz r30, 8(r1)
/* 80C6EEC4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C6EEC8  7C 08 03 A6 */	mtlr r0
/* 80C6EECC  38 21 00 10 */	addi r1, r1, 0x10
/* 80C6EED0  4E 80 00 20 */	blr 
