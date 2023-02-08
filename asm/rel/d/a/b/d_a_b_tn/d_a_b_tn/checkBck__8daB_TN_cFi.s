lbl_8062096C:
/* 8062096C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80620970  7C 08 02 A6 */	mflr r0
/* 80620974  90 01 00 14 */	stw r0, 0x14(r1)
/* 80620978  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8062097C  7C 7F 1B 78 */	mr r31, r3
/* 80620980  3C 60 80 63 */	lis r3, d_a_b_tn__stringBase0@ha /* 0x8062E8E8@ha */
/* 80620984  38 63 E8 E8 */	addi r3, r3, d_a_b_tn__stringBase0@l /* 0x8062E8E8@l */
/* 80620988  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8062098C  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80620990  3C A5 00 02 */	addis r5, r5, 2
/* 80620994  38 C0 00 80 */	li r6, 0x80
/* 80620998  38 A5 C2 F8 */	addi r5, r5, -15624
/* 8062099C  4B A1 B9 51 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 806209A0  80 9F 06 00 */	lwz r4, 0x600(r31)
/* 806209A4  80 04 00 08 */	lwz r0, 8(r4)
/* 806209A8  7C 00 18 50 */	subf r0, r0, r3
/* 806209AC  7C 00 00 34 */	cntlzw r0, r0
/* 806209B0  54 03 DE 3E */	rlwinm r3, r0, 0x1b, 0x18, 0x1f
/* 806209B4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 806209B8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806209BC  7C 08 03 A6 */	mtlr r0
/* 806209C0  38 21 00 10 */	addi r1, r1, 0x10
/* 806209C4  4E 80 00 20 */	blr 
