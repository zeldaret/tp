lbl_80C14EE0:
/* 80C14EE0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C14EE4  7C 08 02 A6 */	mflr r0
/* 80C14EE8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C14EEC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C14EF0  7C 7F 1B 78 */	mr r31, r3
/* 80C14EF4  3C 60 80 C1 */	lis r3, l_arcName@ha
/* 80C14EF8  38 63 53 8C */	addi r3, r3, l_arcName@l
/* 80C14EFC  80 63 00 00 */	lwz r3, 0(r3)
/* 80C14F00  38 80 00 04 */	li r4, 4
/* 80C14F04  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 80C14F08  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 80C14F0C  3C A5 00 02 */	addis r5, r5, 2
/* 80C14F10  38 C0 00 80 */	li r6, 0x80
/* 80C14F14  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80C14F18  4B 42 73 D4 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80C14F1C  3C 80 00 08 */	lis r4, 8
/* 80C14F20  3C A0 11 02 */	lis r5, 0x1102 /* 0x11020084@ha */
/* 80C14F24  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11020084@l */
/* 80C14F28  4B 3F FD 2C */	b mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80C14F2C  90 7F 05 A8 */	stw r3, 0x5a8(r31)
/* 80C14F30  80 7F 05 A8 */	lwz r3, 0x5a8(r31)
/* 80C14F34  30 03 FF FF */	addic r0, r3, -1
/* 80C14F38  7C 60 19 10 */	subfe r3, r0, r3
/* 80C14F3C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C14F40  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C14F44  7C 08 03 A6 */	mtlr r0
/* 80C14F48  38 21 00 10 */	addi r1, r1, 0x10
/* 80C14F4C  4E 80 00 20 */	blr 
