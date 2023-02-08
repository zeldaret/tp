lbl_80CAA14C:
/* 80CAA14C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CAA150  7C 08 02 A6 */	mflr r0
/* 80CAA154  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CAA158  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CAA15C  7C 7F 1B 78 */	mr r31, r3
/* 80CAA160  3C 60 80 CB */	lis r3, l_arcName@ha /* 0x80CAAB6C@ha */
/* 80CAA164  38 63 AB 6C */	addi r3, r3, l_arcName@l /* 0x80CAAB6C@l */
/* 80CAA168  80 63 00 00 */	lwz r3, 0(r3)
/* 80CAA16C  38 80 00 05 */	li r4, 5
/* 80CAA170  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CAA174  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CAA178  3C A5 00 02 */	addis r5, r5, 2
/* 80CAA17C  38 C0 00 80 */	li r6, 0x80
/* 80CAA180  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80CAA184  4B 39 21 69 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80CAA188  3C 80 00 08 */	lis r4, 8
/* 80CAA18C  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 80CAA190  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 80CAA194  4B 36 AA C1 */	bl mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80CAA198  90 7F 05 A8 */	stw r3, 0x5a8(r31)
/* 80CAA19C  80 7F 05 A8 */	lwz r3, 0x5a8(r31)
/* 80CAA1A0  30 03 FF FF */	addic r0, r3, -1
/* 80CAA1A4  7C 60 19 10 */	subfe r3, r0, r3
/* 80CAA1A8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CAA1AC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CAA1B0  7C 08 03 A6 */	mtlr r0
/* 80CAA1B4  38 21 00 10 */	addi r1, r1, 0x10
/* 80CAA1B8  4E 80 00 20 */	blr 
