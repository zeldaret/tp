lbl_80CAB1F0:
/* 80CAB1F0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CAB1F4  7C 08 02 A6 */	mflr r0
/* 80CAB1F8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CAB1FC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CAB200  7C 7F 1B 78 */	mr r31, r3
/* 80CAB204  80 63 07 BC */	lwz r3, 0x7bc(r3)
/* 80CAB208  80 9F 07 C4 */	lwz r4, 0x7c4(r31)
/* 80CAB20C  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 80CAB210  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 80CAB214  3C A5 00 02 */	addis r5, r5, 2
/* 80CAB218  38 C0 00 80 */	li r6, 0x80
/* 80CAB21C  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80CAB220  4B 39 10 CC */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80CAB224  3C 80 00 08 */	lis r4, 8
/* 80CAB228  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 80CAB22C  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 80CAB230  4B 36 9A 24 */	b mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80CAB234  90 7F 06 08 */	stw r3, 0x608(r31)
/* 80CAB238  80 7F 06 08 */	lwz r3, 0x608(r31)
/* 80CAB23C  30 03 FF FF */	addic r0, r3, -1
/* 80CAB240  7C 60 19 10 */	subfe r3, r0, r3
/* 80CAB244  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CAB248  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CAB24C  7C 08 03 A6 */	mtlr r0
/* 80CAB250  38 21 00 10 */	addi r1, r1, 0x10
/* 80CAB254  4E 80 00 20 */	blr 
