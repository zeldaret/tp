lbl_80CC3EB0:
/* 80CC3EB0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CC3EB4  7C 08 02 A6 */	mflr r0
/* 80CC3EB8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CC3EBC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CC3EC0  7C 7F 1B 78 */	mr r31, r3
/* 80CC3EC4  3C 60 80 CC */	lis r3, stringBase0@ha
/* 80CC3EC8  38 63 45 40 */	addi r3, r3, stringBase0@l
/* 80CC3ECC  38 80 00 04 */	li r4, 4
/* 80CC3ED0  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 80CC3ED4  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 80CC3ED8  3C A5 00 02 */	addis r5, r5, 2
/* 80CC3EDC  38 C0 00 80 */	li r6, 0x80
/* 80CC3EE0  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80CC3EE4  4B 37 84 08 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80CC3EE8  3C 80 00 08 */	lis r4, 8
/* 80CC3EEC  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 80CC3EF0  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 80CC3EF4  4B 35 0D 60 */	b mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80CC3EF8  90 7F 05 A8 */	stw r3, 0x5a8(r31)
/* 80CC3EFC  80 7F 05 A8 */	lwz r3, 0x5a8(r31)
/* 80CC3F00  30 03 FF FF */	addic r0, r3, -1
/* 80CC3F04  7C 60 19 10 */	subfe r3, r0, r3
/* 80CC3F08  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CC3F0C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CC3F10  7C 08 03 A6 */	mtlr r0
/* 80CC3F14  38 21 00 10 */	addi r1, r1, 0x10
/* 80CC3F18  4E 80 00 20 */	blr 
