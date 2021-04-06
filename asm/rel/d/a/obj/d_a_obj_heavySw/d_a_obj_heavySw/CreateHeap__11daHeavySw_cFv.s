lbl_80C1CC70:
/* 80C1CC70  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C1CC74  7C 08 02 A6 */	mflr r0
/* 80C1CC78  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C1CC7C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C1CC80  7C 7F 1B 78 */	mr r31, r3
/* 80C1CC84  3C 60 80 C2 */	lis r3, d_a_obj_heavySw__stringBase0@ha /* 0x80C1DAE0@ha */
/* 80C1CC88  38 63 DA E0 */	addi r3, r3, d_a_obj_heavySw__stringBase0@l /* 0x80C1DAE0@l */
/* 80C1CC8C  38 80 00 04 */	li r4, 4
/* 80C1CC90  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C1CC94  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C1CC98  3C A5 00 02 */	addis r5, r5, 2
/* 80C1CC9C  38 C0 00 80 */	li r6, 0x80
/* 80C1CCA0  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80C1CCA4  4B 41 F6 49 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80C1CCA8  3C 80 00 08 */	lis r4, 8
/* 80C1CCAC  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 80C1CCB0  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 80C1CCB4  4B 3F 7F A1 */	bl mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80C1CCB8  90 7F 05 A8 */	stw r3, 0x5a8(r31)
/* 80C1CCBC  80 7F 05 A8 */	lwz r3, 0x5a8(r31)
/* 80C1CCC0  30 03 FF FF */	addic r0, r3, -1
/* 80C1CCC4  7C 60 19 10 */	subfe r3, r0, r3
/* 80C1CCC8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C1CCCC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C1CCD0  7C 08 03 A6 */	mtlr r0
/* 80C1CCD4  38 21 00 10 */	addi r1, r1, 0x10
/* 80C1CCD8  4E 80 00 20 */	blr 
