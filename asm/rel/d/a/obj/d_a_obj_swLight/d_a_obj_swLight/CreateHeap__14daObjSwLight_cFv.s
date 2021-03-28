lbl_80CF71F0:
/* 80CF71F0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CF71F4  7C 08 02 A6 */	mflr r0
/* 80CF71F8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CF71FC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CF7200  7C 7F 1B 78 */	mr r31, r3
/* 80CF7204  3C 60 80 D0 */	lis r3, l_arcName@ha
/* 80CF7208  38 63 84 88 */	addi r3, r3, l_arcName@l
/* 80CF720C  80 63 00 00 */	lwz r3, 0(r3)
/* 80CF7210  38 80 00 04 */	li r4, 4
/* 80CF7214  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 80CF7218  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 80CF721C  3C A5 00 02 */	addis r5, r5, 2
/* 80CF7220  38 C0 00 80 */	li r6, 0x80
/* 80CF7224  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80CF7228  4B 34 50 C4 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80CF722C  3C 80 00 08 */	lis r4, 8
/* 80CF7230  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 80CF7234  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 80CF7238  4B 31 DA 1C */	b mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80CF723C  90 7F 05 B8 */	stw r3, 0x5b8(r31)
/* 80CF7240  80 7F 05 B8 */	lwz r3, 0x5b8(r31)
/* 80CF7244  30 03 FF FF */	addic r0, r3, -1
/* 80CF7248  7C 60 19 10 */	subfe r3, r0, r3
/* 80CF724C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CF7250  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CF7254  7C 08 03 A6 */	mtlr r0
/* 80CF7258  38 21 00 10 */	addi r1, r1, 0x10
/* 80CF725C  4E 80 00 20 */	blr 
