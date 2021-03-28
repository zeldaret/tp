lbl_80C678D4:
/* 80C678D4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C678D8  7C 08 02 A6 */	mflr r0
/* 80C678DC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C678E0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C678E4  7C 7F 1B 78 */	mr r31, r3
/* 80C678E8  3C 60 80 C6 */	lis r3, l_arcName@ha
/* 80C678EC  38 63 7D BC */	addi r3, r3, l_arcName@l
/* 80C678F0  80 63 00 00 */	lwz r3, 0(r3)
/* 80C678F4  38 80 00 04 */	li r4, 4
/* 80C678F8  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 80C678FC  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 80C67900  3C A5 00 02 */	addis r5, r5, 2
/* 80C67904  38 C0 00 80 */	li r6, 0x80
/* 80C67908  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80C6790C  4B 3D 49 E0 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80C67910  3C 80 00 08 */	lis r4, 8
/* 80C67914  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 80C67918  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 80C6791C  4B 3A D3 38 */	b mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80C67920  90 7F 05 A8 */	stw r3, 0x5a8(r31)
/* 80C67924  80 7F 05 A8 */	lwz r3, 0x5a8(r31)
/* 80C67928  30 03 FF FF */	addic r0, r3, -1
/* 80C6792C  7C 60 19 10 */	subfe r3, r0, r3
/* 80C67930  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C67934  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C67938  7C 08 03 A6 */	mtlr r0
/* 80C6793C  38 21 00 10 */	addi r1, r1, 0x10
/* 80C67940  4E 80 00 20 */	blr 
