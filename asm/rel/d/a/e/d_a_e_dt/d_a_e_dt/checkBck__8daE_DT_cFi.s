lbl_806AE6F0:
/* 806AE6F0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806AE6F4  7C 08 02 A6 */	mflr r0
/* 806AE6F8  90 01 00 14 */	stw r0, 0x14(r1)
/* 806AE6FC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 806AE700  7C 7F 1B 78 */	mr r31, r3
/* 806AE704  3C 60 80 6B */	lis r3, stringBase0@ha
/* 806AE708  38 63 5E D0 */	addi r3, r3, stringBase0@l
/* 806AE70C  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 806AE710  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 806AE714  3C A5 00 02 */	addis r5, r5, 2
/* 806AE718  38 C0 00 80 */	li r6, 0x80
/* 806AE71C  38 A5 C2 F8 */	addi r5, r5, -15624
/* 806AE720  4B 98 DB CC */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 806AE724  80 9F 05 D0 */	lwz r4, 0x5d0(r31)
/* 806AE728  80 04 00 08 */	lwz r0, 8(r4)
/* 806AE72C  7C 00 18 50 */	subf r0, r0, r3
/* 806AE730  7C 00 00 34 */	cntlzw r0, r0
/* 806AE734  54 03 D9 7E */	srwi r3, r0, 5
/* 806AE738  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 806AE73C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806AE740  7C 08 03 A6 */	mtlr r0
/* 806AE744  38 21 00 10 */	addi r1, r1, 0x10
/* 806AE748  4E 80 00 20 */	blr 
