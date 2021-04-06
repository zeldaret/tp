lbl_80C469F4:
/* 80C469F4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C469F8  7C 08 02 A6 */	mflr r0
/* 80C469FC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C46A00  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C46A04  7C 7F 1B 78 */	mr r31, r3
/* 80C46A08  3C 60 80 C4 */	lis r3, l_arcName@ha /* 0x80C46F98@ha */
/* 80C46A0C  38 63 6F 98 */	addi r3, r3, l_arcName@l /* 0x80C46F98@l */
/* 80C46A10  80 63 00 00 */	lwz r3, 0(r3)
/* 80C46A14  38 80 00 04 */	li r4, 4
/* 80C46A18  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C46A1C  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C46A20  3C A5 00 02 */	addis r5, r5, 2
/* 80C46A24  38 C0 00 80 */	li r6, 0x80
/* 80C46A28  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80C46A2C  4B 3F 58 C1 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80C46A30  3C 80 00 08 */	lis r4, 8
/* 80C46A34  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 80C46A38  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 80C46A3C  4B 3C E2 19 */	bl mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80C46A40  90 7F 05 A8 */	stw r3, 0x5a8(r31)
/* 80C46A44  80 7F 05 A8 */	lwz r3, 0x5a8(r31)
/* 80C46A48  30 03 FF FF */	addic r0, r3, -1
/* 80C46A4C  7C 60 19 10 */	subfe r3, r0, r3
/* 80C46A50  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C46A54  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C46A58  7C 08 03 A6 */	mtlr r0
/* 80C46A5C  38 21 00 10 */	addi r1, r1, 0x10
/* 80C46A60  4E 80 00 20 */	blr 
