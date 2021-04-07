lbl_8058E1C4:
/* 8058E1C4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8058E1C8  7C 08 02 A6 */	mflr r0
/* 8058E1CC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8058E1D0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8058E1D4  7C 7F 1B 78 */	mr r31, r3
/* 8058E1D8  88 03 06 FD */	lbz r0, 0x6fd(r3)
/* 8058E1DC  54 00 10 3A */	slwi r0, r0, 2
/* 8058E1E0  3C 60 80 59 */	lis r3, l_resNameIdx@ha /* 0x8058F20C@ha */
/* 8058E1E4  38 63 F2 0C */	addi r3, r3, l_resNameIdx@l /* 0x8058F20C@l */
/* 8058E1E8  7C 63 00 2E */	lwzx r3, r3, r0
/* 8058E1EC  3C 80 80 59 */	lis r4, l_bmdIdx@ha /* 0x8058F174@ha */
/* 8058E1F0  38 84 F1 74 */	addi r4, r4, l_bmdIdx@l /* 0x8058F174@l */
/* 8058E1F4  7C 84 00 2E */	lwzx r4, r4, r0
/* 8058E1F8  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8058E1FC  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8058E200  3C A5 00 02 */	addis r5, r5, 2
/* 8058E204  38 C0 00 80 */	li r6, 0x80
/* 8058E208  38 A5 C2 F8 */	addi r5, r5, -15624
/* 8058E20C  4B AA E0 E1 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 8058E210  3C 80 00 08 */	lis r4, 8
/* 8058E214  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 8058E218  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 8058E21C  4B A8 6A 39 */	bl mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 8058E220  90 7F 05 70 */	stw r3, 0x570(r31)
/* 8058E224  80 7F 05 70 */	lwz r3, 0x570(r31)
/* 8058E228  30 03 FF FF */	addic r0, r3, -1
/* 8058E22C  7C 60 19 10 */	subfe r3, r0, r3
/* 8058E230  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8058E234  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8058E238  7C 08 03 A6 */	mtlr r0
/* 8058E23C  38 21 00 10 */	addi r1, r1, 0x10
/* 8058E240  4E 80 00 20 */	blr 
