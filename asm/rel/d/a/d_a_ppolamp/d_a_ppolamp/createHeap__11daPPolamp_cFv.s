lbl_80D4CE9C:
/* 80D4CE9C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D4CEA0  7C 08 02 A6 */	mflr r0
/* 80D4CEA4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D4CEA8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D4CEAC  93 C1 00 08 */	stw r30, 8(r1)
/* 80D4CEB0  7C 7E 1B 78 */	mr r30, r3
/* 80D4CEB4  3C 60 80 D5 */	lis r3, l_arcName@ha
/* 80D4CEB8  38 63 D2 D0 */	addi r3, r3, l_arcName@l
/* 80D4CEBC  80 63 00 00 */	lwz r3, 0(r3)
/* 80D4CEC0  38 80 00 08 */	li r4, 8
/* 80D4CEC4  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 80D4CEC8  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 80D4CECC  3F E5 00 02 */	addis r31, r5, 2
/* 80D4CED0  3B FF C2 F8 */	addi r31, r31, -15624
/* 80D4CED4  7F E5 FB 78 */	mr r5, r31
/* 80D4CED8  38 C0 00 80 */	li r6, 0x80
/* 80D4CEDC  4B 2E F4 10 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80D4CEE0  3C 80 00 08 */	lis r4, 8
/* 80D4CEE4  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 80D4CEE8  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 80D4CEEC  4B 2C 7D 68 */	b mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80D4CEF0  90 7E 05 74 */	stw r3, 0x574(r30)
/* 80D4CEF4  80 1E 05 74 */	lwz r0, 0x574(r30)
/* 80D4CEF8  28 00 00 00 */	cmplwi r0, 0
/* 80D4CEFC  40 82 00 0C */	bne lbl_80D4CF08
/* 80D4CF00  38 60 00 00 */	li r3, 0
/* 80D4CF04  48 00 00 94 */	b lbl_80D4CF98
lbl_80D4CF08:
/* 80D4CF08  3C 60 80 D5 */	lis r3, l_arcName@ha
/* 80D4CF0C  38 63 D2 D0 */	addi r3, r3, l_arcName@l
/* 80D4CF10  80 63 00 00 */	lwz r3, 0(r3)
/* 80D4CF14  38 80 00 07 */	li r4, 7
/* 80D4CF18  7F E5 FB 78 */	mr r5, r31
/* 80D4CF1C  38 C0 00 80 */	li r6, 0x80
/* 80D4CF20  4B 2E F3 CC */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80D4CF24  3C 80 00 08 */	lis r4, 8
/* 80D4CF28  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 80D4CF2C  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 80D4CF30  4B 2C 7D 24 */	b mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80D4CF34  90 7E 05 78 */	stw r3, 0x578(r30)
/* 80D4CF38  80 1E 05 78 */	lwz r0, 0x578(r30)
/* 80D4CF3C  28 00 00 00 */	cmplwi r0, 0
/* 80D4CF40  40 82 00 0C */	bne lbl_80D4CF4C
/* 80D4CF44  38 60 00 00 */	li r3, 0
/* 80D4CF48  48 00 00 50 */	b lbl_80D4CF98
lbl_80D4CF4C:
/* 80D4CF4C  3C 60 80 D5 */	lis r3, l_arcName@ha
/* 80D4CF50  38 63 D2 D0 */	addi r3, r3, l_arcName@l
/* 80D4CF54  80 63 00 00 */	lwz r3, 0(r3)
/* 80D4CF58  38 80 00 04 */	li r4, 4
/* 80D4CF5C  7F E5 FB 78 */	mr r5, r31
/* 80D4CF60  38 C0 00 80 */	li r6, 0x80
/* 80D4CF64  4B 2E F3 88 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80D4CF68  7C 64 1B 78 */	mr r4, r3
/* 80D4CF6C  38 7E 05 7C */	addi r3, r30, 0x57c
/* 80D4CF70  38 A0 00 01 */	li r5, 1
/* 80D4CF74  38 C0 00 02 */	li r6, 2
/* 80D4CF78  3C E0 80 D5 */	lis r7, lit_3909@ha
/* 80D4CF7C  C0 27 D2 A4 */	lfs f1, lit_3909@l(r7)
/* 80D4CF80  38 E0 00 00 */	li r7, 0
/* 80D4CF84  39 00 FF FF */	li r8, -1
/* 80D4CF88  39 20 00 00 */	li r9, 0
/* 80D4CF8C  4B 2C 08 50 */	b init__13mDoExt_bckAnmFP15J3DAnmTransformiifssb
/* 80D4CF90  30 03 FF FF */	addic r0, r3, -1
/* 80D4CF94  7C 60 19 10 */	subfe r3, r0, r3
lbl_80D4CF98:
/* 80D4CF98  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D4CF9C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80D4CFA0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D4CFA4  7C 08 03 A6 */	mtlr r0
/* 80D4CFA8  38 21 00 10 */	addi r1, r1, 0x10
/* 80D4CFAC  4E 80 00 20 */	blr 
