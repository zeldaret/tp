lbl_80C1F518:
/* 80C1F518  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C1F51C  7C 08 02 A6 */	mflr r0
/* 80C1F520  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C1F524  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C1F528  7C 7F 1B 78 */	mr r31, r3
/* 80C1F52C  88 03 05 AC */	lbz r0, 0x5ac(r3)
/* 80C1F530  54 00 10 3A */	slwi r0, r0, 2
/* 80C1F534  3C 60 80 C2 */	lis r3, l_resNameIdx@ha
/* 80C1F538  38 63 F8 C0 */	addi r3, r3, l_resNameIdx@l
/* 80C1F53C  7C 63 00 2E */	lwzx r3, r3, r0
/* 80C1F540  3C 80 80 C2 */	lis r4, l_bmdIdx@ha
/* 80C1F544  38 84 F8 A0 */	addi r4, r4, l_bmdIdx@l
/* 80C1F548  7C 84 00 2E */	lwzx r4, r4, r0
/* 80C1F54C  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 80C1F550  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 80C1F554  3C A5 00 02 */	addis r5, r5, 2
/* 80C1F558  38 C0 00 80 */	li r6, 0x80
/* 80C1F55C  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80C1F560  4B 41 CD 8C */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80C1F564  3C 80 00 08 */	lis r4, 8
/* 80C1F568  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 80C1F56C  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 80C1F570  4B 3F 56 E4 */	b mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80C1F574  90 7F 05 A8 */	stw r3, 0x5a8(r31)
/* 80C1F578  80 7F 05 A8 */	lwz r3, 0x5a8(r31)
/* 80C1F57C  30 03 FF FF */	addic r0, r3, -1
/* 80C1F580  7C 60 19 10 */	subfe r3, r0, r3
/* 80C1F584  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C1F588  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C1F58C  7C 08 03 A6 */	mtlr r0
/* 80C1F590  38 21 00 10 */	addi r1, r1, 0x10
/* 80C1F594  4E 80 00 20 */	blr 
