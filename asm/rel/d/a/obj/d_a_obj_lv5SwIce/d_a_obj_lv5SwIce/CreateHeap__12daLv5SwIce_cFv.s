lbl_80C6CAA8:
/* 80C6CAA8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C6CAAC  7C 08 02 A6 */	mflr r0
/* 80C6CAB0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C6CAB4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C6CAB8  7C 7F 1B 78 */	mr r31, r3
/* 80C6CABC  3C 60 80 C7 */	lis r3, d_a_obj_lv5SwIce__stringBase0@ha /* 0x80C6D558@ha */
/* 80C6CAC0  38 63 D5 58 */	addi r3, r3, d_a_obj_lv5SwIce__stringBase0@l /* 0x80C6D558@l */
/* 80C6CAC4  38 80 00 04 */	li r4, 4
/* 80C6CAC8  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C6CACC  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C6CAD0  3C A5 00 02 */	addis r5, r5, 2
/* 80C6CAD4  38 C0 00 80 */	li r6, 0x80
/* 80C6CAD8  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80C6CADC  4B 3C F8 11 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80C6CAE0  38 80 00 00 */	li r4, 0
/* 80C6CAE4  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 80C6CAE8  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 80C6CAEC  4B 3A 81 69 */	bl mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80C6CAF0  90 7F 07 20 */	stw r3, 0x720(r31)
/* 80C6CAF4  80 7F 07 20 */	lwz r3, 0x720(r31)
/* 80C6CAF8  30 03 FF FF */	addic r0, r3, -1
/* 80C6CAFC  7C 60 19 10 */	subfe r3, r0, r3
/* 80C6CB00  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C6CB04  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C6CB08  7C 08 03 A6 */	mtlr r0
/* 80C6CB0C  38 21 00 10 */	addi r1, r1, 0x10
/* 80C6CB10  4E 80 00 20 */	blr 
