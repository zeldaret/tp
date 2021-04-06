lbl_8014EE44:
/* 8014EE44  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8014EE48  7C 08 02 A6 */	mflr r0
/* 8014EE4C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8014EE50  7C 83 23 78 */	mr r3, r4
/* 8014EE54  7C A4 2B 78 */	mr r4, r5
/* 8014EE58  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8014EE5C  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8014EE60  3C A5 00 02 */	addis r5, r5, 2
/* 8014EE64  38 C0 00 80 */	li r6, 0x80
/* 8014EE68  38 A5 C2 F8 */	addi r5, r5, -15624
/* 8014EE6C  4B EE D4 81 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 8014EE70  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8014EE74  7C 08 03 A6 */	mtlr r0
/* 8014EE78  38 21 00 10 */	addi r1, r1, 0x10
/* 8014EE7C  4E 80 00 20 */	blr 
