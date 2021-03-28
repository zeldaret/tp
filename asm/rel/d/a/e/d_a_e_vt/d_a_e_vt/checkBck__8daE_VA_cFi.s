lbl_807C38BC:
/* 807C38BC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 807C38C0  7C 08 02 A6 */	mflr r0
/* 807C38C4  90 01 00 14 */	stw r0, 0x14(r1)
/* 807C38C8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 807C38CC  7C 7F 1B 78 */	mr r31, r3
/* 807C38D0  3C 60 80 7D */	lis r3, stringBase0@ha
/* 807C38D4  38 63 EE FC */	addi r3, r3, stringBase0@l
/* 807C38D8  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 807C38DC  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 807C38E0  3C A5 00 02 */	addis r5, r5, 2
/* 807C38E4  38 C0 00 80 */	li r6, 0x80
/* 807C38E8  38 A5 C2 F8 */	addi r5, r5, -15624
/* 807C38EC  4B 87 8A 00 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 807C38F0  80 9F 05 B4 */	lwz r4, 0x5b4(r31)
/* 807C38F4  80 04 00 08 */	lwz r0, 8(r4)
/* 807C38F8  7C 00 18 50 */	subf r0, r0, r3
/* 807C38FC  7C 00 00 34 */	cntlzw r0, r0
/* 807C3900  54 03 DE 3E */	rlwinm r3, r0, 0x1b, 0x18, 0x1f
/* 807C3904  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 807C3908  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807C390C  7C 08 03 A6 */	mtlr r0
/* 807C3910  38 21 00 10 */	addi r1, r1, 0x10
/* 807C3914  4E 80 00 20 */	blr 
