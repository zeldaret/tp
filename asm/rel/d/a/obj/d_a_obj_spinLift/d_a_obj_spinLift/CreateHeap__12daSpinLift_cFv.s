lbl_80CE3E9C:
/* 80CE3E9C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CE3EA0  7C 08 02 A6 */	mflr r0
/* 80CE3EA4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CE3EA8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CE3EAC  7C 7F 1B 78 */	mr r31, r3
/* 80CE3EB0  88 03 05 BB */	lbz r0, 0x5bb(r3)
/* 80CE3EB4  54 00 10 3A */	slwi r0, r0, 2
/* 80CE3EB8  3C 60 80 CE */	lis r3, l_resNameIdx@ha /* 0x80CE4DA8@ha */
/* 80CE3EBC  38 63 4D A8 */	addi r3, r3, l_resNameIdx@l /* 0x80CE4DA8@l */
/* 80CE3EC0  7C 63 00 2E */	lwzx r3, r3, r0
/* 80CE3EC4  3C 80 80 CE */	lis r4, l_bmdIdx@ha /* 0x80CE4CC0@ha */
/* 80CE3EC8  38 84 4C C0 */	addi r4, r4, l_bmdIdx@l /* 0x80CE4CC0@l */
/* 80CE3ECC  7C 84 00 2E */	lwzx r4, r4, r0
/* 80CE3ED0  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CE3ED4  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CE3ED8  3C A5 00 02 */	addis r5, r5, 2
/* 80CE3EDC  38 C0 00 80 */	li r6, 0x80
/* 80CE3EE0  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80CE3EE4  4B 35 84 09 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80CE3EE8  3C 80 00 08 */	lis r4, 8
/* 80CE3EEC  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 80CE3EF0  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 80CE3EF4  4B 33 0D 61 */	bl mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80CE3EF8  90 7F 05 A8 */	stw r3, 0x5a8(r31)
/* 80CE3EFC  80 7F 05 A8 */	lwz r3, 0x5a8(r31)
/* 80CE3F00  30 03 FF FF */	addic r0, r3, -1
/* 80CE3F04  7C 60 19 10 */	subfe r3, r0, r3
/* 80CE3F08  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CE3F0C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CE3F10  7C 08 03 A6 */	mtlr r0
/* 80CE3F14  38 21 00 10 */	addi r1, r1, 0x10
/* 80CE3F18  4E 80 00 20 */	blr 
