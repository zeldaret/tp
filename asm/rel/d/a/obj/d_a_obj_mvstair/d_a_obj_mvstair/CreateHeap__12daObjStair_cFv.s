lbl_80C9D2B8:
/* 80C9D2B8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C9D2BC  7C 08 02 A6 */	mflr r0
/* 80C9D2C0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C9D2C4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C9D2C8  7C 7F 1B 78 */	mr r31, r3
/* 80C9D2CC  88 03 06 69 */	lbz r0, 0x669(r3)
/* 80C9D2D0  54 00 10 3A */	slwi r0, r0, 2
/* 80C9D2D4  3C 60 80 CA */	lis r3, l_arcName@ha /* 0x80C9E940@ha */
/* 80C9D2D8  38 63 E9 40 */	addi r3, r3, l_arcName@l /* 0x80C9E940@l */
/* 80C9D2DC  7C 63 00 2E */	lwzx r3, r3, r0
/* 80C9D2E0  3C 80 80 CA */	lis r4, l_bmdName@ha /* 0x80C9E8AC@ha */
/* 80C9D2E4  38 84 E8 AC */	addi r4, r4, l_bmdName@l /* 0x80C9E8AC@l */
/* 80C9D2E8  7C 84 00 2E */	lwzx r4, r4, r0
/* 80C9D2EC  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C9D2F0  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C9D2F4  3C A5 00 02 */	addis r5, r5, 2
/* 80C9D2F8  38 C0 00 80 */	li r6, 0x80
/* 80C9D2FC  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80C9D300  4B 39 EF ED */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80C9D304  3C 80 00 08 */	lis r4, 8
/* 80C9D308  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 80C9D30C  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 80C9D310  4B 37 79 45 */	bl mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80C9D314  90 7F 05 A8 */	stw r3, 0x5a8(r31)
/* 80C9D318  80 7F 05 A8 */	lwz r3, 0x5a8(r31)
/* 80C9D31C  30 03 FF FF */	addic r0, r3, -1
/* 80C9D320  7C 60 19 10 */	subfe r3, r0, r3
/* 80C9D324  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C9D328  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C9D32C  7C 08 03 A6 */	mtlr r0
/* 80C9D330  38 21 00 10 */	addi r1, r1, 0x10
/* 80C9D334  4E 80 00 20 */	blr 
