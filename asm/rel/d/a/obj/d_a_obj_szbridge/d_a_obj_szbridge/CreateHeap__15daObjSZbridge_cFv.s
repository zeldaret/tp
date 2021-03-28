lbl_80D04528:
/* 80D04528  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D0452C  7C 08 02 A6 */	mflr r0
/* 80D04530  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D04534  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D04538  7C 7F 1B 78 */	mr r31, r3
/* 80D0453C  3C 60 80 D0 */	lis r3, l_arcName@ha
/* 80D04540  38 63 4C 8C */	addi r3, r3, l_arcName@l
/* 80D04544  80 63 00 00 */	lwz r3, 0(r3)
/* 80D04548  38 80 00 04 */	li r4, 4
/* 80D0454C  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 80D04550  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 80D04554  3C A5 00 02 */	addis r5, r5, 2
/* 80D04558  38 C0 00 80 */	li r6, 0x80
/* 80D0455C  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80D04560  4B 33 7D 8C */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80D04564  3C 80 00 08 */	lis r4, 8
/* 80D04568  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 80D0456C  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 80D04570  4B 31 06 E4 */	b mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80D04574  90 7F 06 08 */	stw r3, 0x608(r31)
/* 80D04578  80 7F 06 08 */	lwz r3, 0x608(r31)
/* 80D0457C  30 03 FF FF */	addic r0, r3, -1
/* 80D04580  7C 60 19 10 */	subfe r3, r0, r3
/* 80D04584  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D04588  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D0458C  7C 08 03 A6 */	mtlr r0
/* 80D04590  38 21 00 10 */	addi r1, r1, 0x10
/* 80D04594  4E 80 00 20 */	blr 
