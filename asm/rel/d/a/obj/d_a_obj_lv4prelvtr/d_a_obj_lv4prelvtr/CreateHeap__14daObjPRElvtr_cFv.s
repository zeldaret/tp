lbl_80C686F8:
/* 80C686F8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C686FC  7C 08 02 A6 */	mflr r0
/* 80C68700  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C68704  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C68708  7C 7F 1B 78 */	mr r31, r3
/* 80C6870C  3C 60 80 C7 */	lis r3, l_arcName@ha
/* 80C68710  38 63 8B 98 */	addi r3, r3, l_arcName@l
/* 80C68714  80 63 00 00 */	lwz r3, 0(r3)
/* 80C68718  38 80 00 04 */	li r4, 4
/* 80C6871C  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 80C68720  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 80C68724  3C A5 00 02 */	addis r5, r5, 2
/* 80C68728  38 C0 00 80 */	li r6, 0x80
/* 80C6872C  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80C68730  4B 3D 3B BC */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80C68734  3C 80 00 08 */	lis r4, 8
/* 80C68738  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 80C6873C  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 80C68740  4B 3A C5 14 */	b mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80C68744  90 7F 06 08 */	stw r3, 0x608(r31)
/* 80C68748  80 7F 06 08 */	lwz r3, 0x608(r31)
/* 80C6874C  30 03 FF FF */	addic r0, r3, -1
/* 80C68750  7C 60 19 10 */	subfe r3, r0, r3
/* 80C68754  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C68758  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C6875C  7C 08 03 A6 */	mtlr r0
/* 80C68760  38 21 00 10 */	addi r1, r1, 0x10
/* 80C68764  4E 80 00 20 */	blr 
