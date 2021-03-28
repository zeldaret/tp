lbl_80578EA0:
/* 80578EA0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80578EA4  7C 08 02 A6 */	mflr r0
/* 80578EA8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80578EAC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80578EB0  7C 7F 1B 78 */	mr r31, r3
/* 80578EB4  3C 60 80 58 */	lis r3, l_arcName@ha
/* 80578EB8  38 63 95 44 */	addi r3, r3, l_arcName@l
/* 80578EBC  80 63 00 00 */	lwz r3, 0(r3)
/* 80578EC0  88 1F 05 BC */	lbz r0, 0x5bc(r31)
/* 80578EC4  54 00 10 3A */	slwi r0, r0, 2
/* 80578EC8  3C 80 80 58 */	lis r4, l_bmd@ha
/* 80578ECC  38 84 94 90 */	addi r4, r4, l_bmd@l
/* 80578ED0  7C 84 00 2E */	lwzx r4, r4, r0
/* 80578ED4  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 80578ED8  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 80578EDC  3C A5 00 02 */	addis r5, r5, 2
/* 80578EE0  38 C0 00 80 */	li r6, 0x80
/* 80578EE4  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80578EE8  4B AC 34 04 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80578EEC  3C 80 00 08 */	lis r4, 8
/* 80578EF0  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 80578EF4  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 80578EF8  4B A9 BD 5C */	b mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80578EFC  90 7F 05 A8 */	stw r3, 0x5a8(r31)
/* 80578F00  80 7F 05 A8 */	lwz r3, 0x5a8(r31)
/* 80578F04  30 03 FF FF */	addic r0, r3, -1
/* 80578F08  7C 60 19 10 */	subfe r3, r0, r3
/* 80578F0C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80578F10  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80578F14  7C 08 03 A6 */	mtlr r0
/* 80578F18  38 21 00 10 */	addi r1, r1, 0x10
/* 80578F1C  4E 80 00 20 */	blr 
