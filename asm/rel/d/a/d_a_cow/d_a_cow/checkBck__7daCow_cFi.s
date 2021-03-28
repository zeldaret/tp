lbl_806587D4:
/* 806587D4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806587D8  7C 08 02 A6 */	mflr r0
/* 806587DC  90 01 00 14 */	stw r0, 0x14(r1)
/* 806587E0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 806587E4  7C 7F 1B 78 */	mr r31, r3
/* 806587E8  3C 60 80 66 */	lis r3, stringBase0@ha
/* 806587EC  38 63 2F 18 */	addi r3, r3, stringBase0@l
/* 806587F0  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 806587F4  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 806587F8  3C A5 00 02 */	addis r5, r5, 2
/* 806587FC  38 C0 00 80 */	li r6, 0x80
/* 80658800  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80658804  4B 9E 3A E8 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80658808  80 9F 05 74 */	lwz r4, 0x574(r31)
/* 8065880C  80 04 00 08 */	lwz r0, 8(r4)
/* 80658810  7C 00 18 50 */	subf r0, r0, r3
/* 80658814  7C 00 00 34 */	cntlzw r0, r0
/* 80658818  54 03 DE 3E */	rlwinm r3, r0, 0x1b, 0x18, 0x1f
/* 8065881C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80658820  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80658824  7C 08 03 A6 */	mtlr r0
/* 80658828  38 21 00 10 */	addi r1, r1, 0x10
/* 8065882C  4E 80 00 20 */	blr 
