lbl_80C279A8:
/* 80C279A8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C279AC  7C 08 02 A6 */	mflr r0
/* 80C279B0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C279B4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C279B8  7C 7F 1B 78 */	mr r31, r3
/* 80C279BC  3C 60 80 C3 */	lis r3, l_arcName@ha
/* 80C279C0  38 63 81 F8 */	addi r3, r3, l_arcName@l
/* 80C279C4  80 63 00 00 */	lwz r3, 0(r3)
/* 80C279C8  3C 80 80 C3 */	lis r4, l_bmdName@ha
/* 80C279CC  38 84 81 FC */	addi r4, r4, l_bmdName@l
/* 80C279D0  80 84 00 00 */	lwz r4, 0(r4)
/* 80C279D4  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 80C279D8  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 80C279DC  3C A5 00 02 */	addis r5, r5, 2
/* 80C279E0  38 C0 00 80 */	li r6, 0x80
/* 80C279E4  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80C279E8  4B 41 49 94 */	b getRes__14dRes_control_cFPCcPCcP11dRes_info_ci
/* 80C279EC  3C 80 00 08 */	lis r4, 8
/* 80C279F0  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 80C279F4  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 80C279F8  4B 3E D2 5C */	b mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80C279FC  90 7F 05 70 */	stw r3, 0x570(r31)
/* 80C27A00  80 7F 05 70 */	lwz r3, 0x570(r31)
/* 80C27A04  30 03 FF FF */	addic r0, r3, -1
/* 80C27A08  7C 60 19 10 */	subfe r3, r0, r3
/* 80C27A0C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C27A10  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C27A14  7C 08 03 A6 */	mtlr r0
/* 80C27A18  38 21 00 10 */	addi r1, r1, 0x10
/* 80C27A1C  4E 80 00 20 */	blr 
