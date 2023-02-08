lbl_80C72598:
/* 80C72598  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C7259C  7C 08 02 A6 */	mflr r0
/* 80C725A0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C725A4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C725A8  7C 7F 1B 78 */	mr r31, r3
/* 80C725AC  3C 60 80 C7 */	lis r3, d_a_obj_lv6FurikoTrap__stringBase0@ha /* 0x80C73198@ha */
/* 80C725B0  38 63 31 98 */	addi r3, r3, d_a_obj_lv6FurikoTrap__stringBase0@l /* 0x80C73198@l */
/* 80C725B4  38 80 00 04 */	li r4, 4
/* 80C725B8  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C725BC  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C725C0  3C A5 00 02 */	addis r5, r5, 2
/* 80C725C4  38 C0 00 80 */	li r6, 0x80
/* 80C725C8  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80C725CC  4B 3C 9D 21 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80C725D0  38 80 00 00 */	li r4, 0
/* 80C725D4  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 80C725D8  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 80C725DC  4B 3A 26 79 */	bl mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80C725E0  90 7F 05 A8 */	stw r3, 0x5a8(r31)
/* 80C725E4  80 7F 05 A8 */	lwz r3, 0x5a8(r31)
/* 80C725E8  30 03 FF FF */	addic r0, r3, -1
/* 80C725EC  7C 60 19 10 */	subfe r3, r0, r3
/* 80C725F0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C725F4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C725F8  7C 08 03 A6 */	mtlr r0
/* 80C725FC  38 21 00 10 */	addi r1, r1, 0x10
/* 80C72600  4E 80 00 20 */	blr 
