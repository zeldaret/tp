lbl_80C1DF2C:
/* 80C1DF2C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C1DF30  7C 08 02 A6 */	mflr r0
/* 80C1DF34  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C1DF38  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C1DF3C  7C 7F 1B 78 */	mr r31, r3
/* 80C1DF40  3C 60 80 C2 */	lis r3, l_arcName@ha /* 0x80C1EEC4@ha */
/* 80C1DF44  38 63 EE C4 */	addi r3, r3, l_arcName@l /* 0x80C1EEC4@l */
/* 80C1DF48  80 63 00 00 */	lwz r3, 0(r3)
/* 80C1DF4C  38 80 00 04 */	li r4, 4
/* 80C1DF50  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C1DF54  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C1DF58  3C A5 00 02 */	addis r5, r5, 2
/* 80C1DF5C  38 C0 00 80 */	li r6, 0x80
/* 80C1DF60  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80C1DF64  4B 41 E3 89 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80C1DF68  3C 80 00 08 */	lis r4, 8
/* 80C1DF6C  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 80C1DF70  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 80C1DF74  4B 3F 6C E1 */	bl mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80C1DF78  90 7F 05 A8 */	stw r3, 0x5a8(r31)
/* 80C1DF7C  80 7F 05 A8 */	lwz r3, 0x5a8(r31)
/* 80C1DF80  30 03 FF FF */	addic r0, r3, -1
/* 80C1DF84  7C 60 19 10 */	subfe r3, r0, r3
/* 80C1DF88  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C1DF8C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C1DF90  7C 08 03 A6 */	mtlr r0
/* 80C1DF94  38 21 00 10 */	addi r1, r1, 0x10
/* 80C1DF98  4E 80 00 20 */	blr 
