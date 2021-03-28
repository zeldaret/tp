lbl_806079CC:
/* 806079CC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806079D0  7C 08 02 A6 */	mflr r0
/* 806079D4  90 01 00 14 */	stw r0, 0x14(r1)
/* 806079D8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 806079DC  7C 7F 1B 78 */	mr r31, r3
/* 806079E0  3C 60 80 61 */	lis r3, stringBase0@ha
/* 806079E4  38 63 00 84 */	addi r3, r3, stringBase0@l
/* 806079E8  38 63 00 07 */	addi r3, r3, 7
/* 806079EC  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 806079F0  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 806079F4  3C A5 00 02 */	addis r5, r5, 2
/* 806079F8  38 C0 00 80 */	li r6, 0x80
/* 806079FC  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80607A00  4B A3 48 EC */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80607A04  80 9F 05 BC */	lwz r4, 0x5bc(r31)
/* 80607A08  80 04 00 08 */	lwz r0, 8(r4)
/* 80607A0C  7C 00 18 50 */	subf r0, r0, r3
/* 80607A10  7C 00 00 34 */	cntlzw r0, r0
/* 80607A14  54 03 DE 3E */	rlwinm r3, r0, 0x1b, 0x18, 0x1f
/* 80607A18  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80607A1C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80607A20  7C 08 03 A6 */	mtlr r0
/* 80607A24  38 21 00 10 */	addi r1, r1, 0x10
/* 80607A28  4E 80 00 20 */	blr 
