lbl_80B2EE08:
/* 80B2EE08  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B2EE0C  7C 08 02 A6 */	mflr r0
/* 80B2EE10  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B2EE14  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B2EE18  93 C1 00 08 */	stw r30, 8(r1)
/* 80B2EE1C  7C 7E 1B 78 */	mr r30, r3
/* 80B2EE20  3C 60 80 B3 */	lis r3, d_a_npc_worm__stringBase0@ha /* 0x80B2F124@ha */
/* 80B2EE24  38 63 F1 24 */	addi r3, r3, d_a_npc_worm__stringBase0@l /* 0x80B2F124@l */
/* 80B2EE28  38 80 00 30 */	li r4, 0x30
/* 80B2EE2C  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80B2EE30  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80B2EE34  3F E5 00 02 */	addis r31, r5, 2
/* 80B2EE38  3B FF C2 F8 */	addi r31, r31, -15624
/* 80B2EE3C  7F E5 FB 78 */	mr r5, r31
/* 80B2EE40  38 C0 00 80 */	li r6, 0x80
/* 80B2EE44  4B 50 D4 A9 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80B2EE48  3C 80 00 08 */	lis r4, 8
/* 80B2EE4C  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 80B2EE50  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 80B2EE54  4B 4E 5E 01 */	bl mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80B2EE58  90 7E 05 9C */	stw r3, 0x59c(r30)
/* 80B2EE5C  80 1E 05 9C */	lwz r0, 0x59c(r30)
/* 80B2EE60  28 00 00 00 */	cmplwi r0, 0
/* 80B2EE64  40 82 00 0C */	bne lbl_80B2EE70
/* 80B2EE68  38 60 00 00 */	li r3, 0
/* 80B2EE6C  48 00 00 3C */	b lbl_80B2EEA8
lbl_80B2EE70:
/* 80B2EE70  3C 60 80 B3 */	lis r3, d_a_npc_worm__stringBase0@ha /* 0x80B2F124@ha */
/* 80B2EE74  38 63 F1 24 */	addi r3, r3, d_a_npc_worm__stringBase0@l /* 0x80B2F124@l */
/* 80B2EE78  38 80 00 31 */	li r4, 0x31
/* 80B2EE7C  7F E5 FB 78 */	mr r5, r31
/* 80B2EE80  38 C0 00 80 */	li r6, 0x80
/* 80B2EE84  4B 50 D4 69 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80B2EE88  3C 80 00 08 */	lis r4, 8
/* 80B2EE8C  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 80B2EE90  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 80B2EE94  4B 4E 5D C1 */	bl mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80B2EE98  90 7E 05 A0 */	stw r3, 0x5a0(r30)
/* 80B2EE9C  80 7E 05 A0 */	lwz r3, 0x5a0(r30)
/* 80B2EEA0  30 03 FF FF */	addic r0, r3, -1
/* 80B2EEA4  7C 60 19 10 */	subfe r3, r0, r3
lbl_80B2EEA8:
/* 80B2EEA8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B2EEAC  83 C1 00 08 */	lwz r30, 8(r1)
/* 80B2EEB0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B2EEB4  7C 08 03 A6 */	mtlr r0
/* 80B2EEB8  38 21 00 10 */	addi r1, r1, 0x10
/* 80B2EEBC  4E 80 00 20 */	blr 
