lbl_806EA734:
/* 806EA734  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806EA738  7C 08 02 A6 */	mflr r0
/* 806EA73C  90 01 00 14 */	stw r0, 0x14(r1)
/* 806EA740  93 E1 00 0C */	stw r31, 0xc(r1)
/* 806EA744  7C 7F 1B 78 */	mr r31, r3
/* 806EA748  3C 60 80 6F */	lis r3, stringBase0@ha
/* 806EA74C  38 63 09 5C */	addi r3, r3, stringBase0@l
/* 806EA750  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 806EA754  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 806EA758  3C A5 00 02 */	addis r5, r5, 2
/* 806EA75C  38 C0 00 80 */	li r6, 0x80
/* 806EA760  38 A5 C2 F8 */	addi r5, r5, -15624
/* 806EA764  4B 95 1B 88 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 806EA768  80 9F 05 BC */	lwz r4, 0x5bc(r31)
/* 806EA76C  80 04 00 08 */	lwz r0, 8(r4)
/* 806EA770  7C 00 18 50 */	subf r0, r0, r3
/* 806EA774  7C 00 00 34 */	cntlzw r0, r0
/* 806EA778  54 03 DE 3E */	rlwinm r3, r0, 0x1b, 0x18, 0x1f
/* 806EA77C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 806EA780  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806EA784  7C 08 03 A6 */	mtlr r0
/* 806EA788  38 21 00 10 */	addi r1, r1, 0x10
/* 806EA78C  4E 80 00 20 */	blr 
