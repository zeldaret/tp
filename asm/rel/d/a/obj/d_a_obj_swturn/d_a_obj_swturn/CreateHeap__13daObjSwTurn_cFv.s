lbl_80D00EE4:
/* 80D00EE4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D00EE8  7C 08 02 A6 */	mflr r0
/* 80D00EEC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D00EF0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D00EF4  7C 7F 1B 78 */	mr r31, r3
/* 80D00EF8  88 03 05 AC */	lbz r0, 0x5ac(r3)
/* 80D00EFC  54 00 10 3A */	slwi r0, r0, 2
/* 80D00F00  3C 60 80 D0 */	lis r3, l_arcName@ha
/* 80D00F04  38 63 20 EC */	addi r3, r3, l_arcName@l
/* 80D00F08  7C 63 00 2E */	lwzx r3, r3, r0
/* 80D00F0C  3C 80 80 D0 */	lis r4, l_bmd@ha
/* 80D00F10  38 84 20 6C */	addi r4, r4, l_bmd@l
/* 80D00F14  7C 84 00 2E */	lwzx r4, r4, r0
/* 80D00F18  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 80D00F1C  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 80D00F20  3C A5 00 02 */	addis r5, r5, 2
/* 80D00F24  38 C0 00 80 */	li r6, 0x80
/* 80D00F28  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80D00F2C  4B 33 B3 C0 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80D00F30  3C 80 00 08 */	lis r4, 8
/* 80D00F34  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 80D00F38  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 80D00F3C  4B 31 3D 18 */	b mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80D00F40  90 7F 05 A8 */	stw r3, 0x5a8(r31)
/* 80D00F44  80 7F 05 A8 */	lwz r3, 0x5a8(r31)
/* 80D00F48  30 03 FF FF */	addic r0, r3, -1
/* 80D00F4C  7C 60 19 10 */	subfe r3, r0, r3
/* 80D00F50  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D00F54  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D00F58  7C 08 03 A6 */	mtlr r0
/* 80D00F5C  38 21 00 10 */	addi r1, r1, 0x10
/* 80D00F60  4E 80 00 20 */	blr 
