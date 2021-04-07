lbl_80C12CA4:
/* 80C12CA4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C12CA8  7C 08 02 A6 */	mflr r0
/* 80C12CAC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C12CB0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C12CB4  7C 7F 1B 78 */	mr r31, r3
/* 80C12CB8  3C 60 80 C1 */	lis r3, l_arcName@ha /* 0x80C13304@ha */
/* 80C12CBC  38 63 33 04 */	addi r3, r3, l_arcName@l /* 0x80C13304@l */
/* 80C12CC0  80 63 00 00 */	lwz r3, 0(r3)
/* 80C12CC4  3C 80 80 C1 */	lis r4, d_a_obj_grave_stone__stringBase0@ha /* 0x80C132E4@ha */
/* 80C12CC8  38 84 32 E4 */	addi r4, r4, d_a_obj_grave_stone__stringBase0@l /* 0x80C132E4@l */
/* 80C12CCC  38 84 00 07 */	addi r4, r4, 7
/* 80C12CD0  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C12CD4  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C12CD8  3C A5 00 02 */	addis r5, r5, 2
/* 80C12CDC  38 C0 00 80 */	li r6, 0x80
/* 80C12CE0  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80C12CE4  4B 42 96 99 */	bl getRes__14dRes_control_cFPCcPCcP11dRes_info_ci
/* 80C12CE8  3C 80 00 08 */	lis r4, 8
/* 80C12CEC  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 80C12CF0  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 80C12CF4  4B 40 1F 61 */	bl mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80C12CF8  90 7F 05 A8 */	stw r3, 0x5a8(r31)
/* 80C12CFC  80 7F 05 A8 */	lwz r3, 0x5a8(r31)
/* 80C12D00  30 03 FF FF */	addic r0, r3, -1
/* 80C12D04  7C 60 19 10 */	subfe r3, r0, r3
/* 80C12D08  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C12D0C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C12D10  7C 08 03 A6 */	mtlr r0
/* 80C12D14  38 21 00 10 */	addi r1, r1, 0x10
/* 80C12D18  4E 80 00 20 */	blr 
