lbl_80C18440:
/* 80C18440  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C18444  7C 08 02 A6 */	mflr r0
/* 80C18448  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C1844C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C18450  7C 7F 1B 78 */	mr r31, r3
/* 80C18454  3C 60 80 C2 */	lis r3, l_arcName@ha
/* 80C18458  38 63 8A A8 */	addi r3, r3, l_arcName@l
/* 80C1845C  80 63 00 00 */	lwz r3, 0(r3)
/* 80C18460  38 80 00 04 */	li r4, 4
/* 80C18464  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 80C18468  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 80C1846C  3C A5 00 02 */	addis r5, r5, 2
/* 80C18470  38 C0 00 80 */	li r6, 0x80
/* 80C18474  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80C18478  4B 42 3E 74 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80C1847C  3C 80 00 08 */	lis r4, 8
/* 80C18480  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 80C18484  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 80C18488  4B 3F C7 CC */	b mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80C1848C  90 7F 06 08 */	stw r3, 0x608(r31)
/* 80C18490  80 7F 06 08 */	lwz r3, 0x608(r31)
/* 80C18494  30 03 FF FF */	addic r0, r3, -1
/* 80C18498  7C 60 19 10 */	subfe r3, r0, r3
/* 80C1849C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C184A0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C184A4  7C 08 03 A6 */	mtlr r0
/* 80C184A8  38 21 00 10 */	addi r1, r1, 0x10
/* 80C184AC  4E 80 00 20 */	blr 
