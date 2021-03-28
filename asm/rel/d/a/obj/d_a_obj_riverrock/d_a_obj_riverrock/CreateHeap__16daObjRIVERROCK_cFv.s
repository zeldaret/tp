lbl_80CBD348:
/* 80CBD348  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CBD34C  7C 08 02 A6 */	mflr r0
/* 80CBD350  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CBD354  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CBD358  7C 7F 1B 78 */	mr r31, r3
/* 80CBD35C  3C 60 80 CC */	lis r3, l_arcName@ha
/* 80CBD360  38 63 DB 40 */	addi r3, r3, l_arcName@l
/* 80CBD364  80 63 00 00 */	lwz r3, 0(r3)
/* 80CBD368  3C 80 80 CC */	lis r4, stringBase0@ha
/* 80CBD36C  38 84 DB 14 */	addi r4, r4, stringBase0@l
/* 80CBD370  38 84 00 0A */	addi r4, r4, 0xa
/* 80CBD374  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 80CBD378  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 80CBD37C  3C A5 00 02 */	addis r5, r5, 2
/* 80CBD380  38 C0 00 80 */	li r6, 0x80
/* 80CBD384  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80CBD388  4B 37 EF F4 */	b getRes__14dRes_control_cFPCcPCcP11dRes_info_ci
/* 80CBD38C  3C 80 00 08 */	lis r4, 8
/* 80CBD390  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 80CBD394  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 80CBD398  4B 35 78 BC */	b mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80CBD39C  90 7F 06 14 */	stw r3, 0x614(r31)
/* 80CBD3A0  80 7F 06 14 */	lwz r3, 0x614(r31)
/* 80CBD3A4  30 03 FF FF */	addic r0, r3, -1
/* 80CBD3A8  7C 60 19 10 */	subfe r3, r0, r3
/* 80CBD3AC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CBD3B0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CBD3B4  7C 08 03 A6 */	mtlr r0
/* 80CBD3B8  38 21 00 10 */	addi r1, r1, 0x10
/* 80CBD3BC  4E 80 00 20 */	blr 
