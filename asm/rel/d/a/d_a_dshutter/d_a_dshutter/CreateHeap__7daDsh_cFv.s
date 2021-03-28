lbl_8046751C:
/* 8046751C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80467520  7C 08 02 A6 */	mflr r0
/* 80467524  90 01 00 14 */	stw r0, 0x14(r1)
/* 80467528  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8046752C  7C 7F 1B 78 */	mr r31, r3
/* 80467530  88 03 05 BB */	lbz r0, 0x5bb(r3)
/* 80467534  54 00 10 3A */	slwi r0, r0, 2
/* 80467538  3C 60 80 46 */	lis r3, l_arcName@ha
/* 8046753C  38 63 7F 7C */	addi r3, r3, l_arcName@l
/* 80467540  7C 63 00 2E */	lwzx r3, r3, r0
/* 80467544  3C 80 80 46 */	lis r4, l_bmd@ha
/* 80467548  38 84 7F 04 */	addi r4, r4, l_bmd@l
/* 8046754C  7C 84 00 2E */	lwzx r4, r4, r0
/* 80467550  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 80467554  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 80467558  3C A5 00 02 */	addis r5, r5, 2
/* 8046755C  38 C0 00 80 */	li r6, 0x80
/* 80467560  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80467564  4B BD 4D 88 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80467568  3C 80 00 08 */	lis r4, 8
/* 8046756C  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 80467570  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 80467574  4B BA D6 E0 */	b mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80467578  90 7F 05 B0 */	stw r3, 0x5b0(r31)
/* 8046757C  80 7F 05 B0 */	lwz r3, 0x5b0(r31)
/* 80467580  30 03 FF FF */	addic r0, r3, -1
/* 80467584  7C 60 19 10 */	subfe r3, r0, r3
/* 80467588  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8046758C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80467590  7C 08 03 A6 */	mtlr r0
/* 80467594  38 21 00 10 */	addi r1, r1, 0x10
/* 80467598  4E 80 00 20 */	blr 
