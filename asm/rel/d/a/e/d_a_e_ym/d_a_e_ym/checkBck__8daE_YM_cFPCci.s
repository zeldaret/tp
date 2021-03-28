lbl_80808184:
/* 80808184  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80808188  7C 08 02 A6 */	mflr r0
/* 8080818C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80808190  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80808194  7C 7F 1B 78 */	mr r31, r3
/* 80808198  7C 83 23 78 */	mr r3, r4
/* 8080819C  7C A4 2B 78 */	mr r4, r5
/* 808081A0  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 808081A4  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 808081A8  3C A5 00 02 */	addis r5, r5, 2
/* 808081AC  38 C0 00 80 */	li r6, 0x80
/* 808081B0  38 A5 C2 F8 */	addi r5, r5, -15624
/* 808081B4  4B 83 41 38 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 808081B8  80 9F 05 B4 */	lwz r4, 0x5b4(r31)
/* 808081BC  80 04 00 08 */	lwz r0, 8(r4)
/* 808081C0  7C 00 18 50 */	subf r0, r0, r3
/* 808081C4  7C 00 00 34 */	cntlzw r0, r0
/* 808081C8  54 03 DE 3E */	rlwinm r3, r0, 0x1b, 0x18, 0x1f
/* 808081CC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 808081D0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 808081D4  7C 08 03 A6 */	mtlr r0
/* 808081D8  38 21 00 10 */	addi r1, r1, 0x10
/* 808081DC  4E 80 00 20 */	blr 
