lbl_806C7B5C:
/* 806C7B5C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806C7B60  7C 08 02 A6 */	mflr r0
/* 806C7B64  90 01 00 14 */	stw r0, 0x14(r1)
/* 806C7B68  93 E1 00 0C */	stw r31, 0xc(r1)
/* 806C7B6C  7C 7F 1B 78 */	mr r31, r3
/* 806C7B70  3C 60 80 6D */	lis r3, d_a_e_ge__stringBase0@ha /* 0x806CD10C@ha */
/* 806C7B74  38 63 D1 0C */	addi r3, r3, d_a_e_ge__stringBase0@l /* 0x806CD10C@l */
/* 806C7B78  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 806C7B7C  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 806C7B80  3C A5 00 02 */	addis r5, r5, 2
/* 806C7B84  38 C0 00 80 */	li r6, 0x80
/* 806C7B88  38 A5 C2 F8 */	addi r5, r5, -15624
/* 806C7B8C  4B 97 47 61 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 806C7B90  80 9F 05 B4 */	lwz r4, 0x5b4(r31)
/* 806C7B94  80 04 00 08 */	lwz r0, 8(r4)
/* 806C7B98  7C 00 18 50 */	subf r0, r0, r3
/* 806C7B9C  7C 00 00 34 */	cntlzw r0, r0
/* 806C7BA0  54 03 DE 3E */	rlwinm r3, r0, 0x1b, 0x18, 0x1f
/* 806C7BA4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 806C7BA8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806C7BAC  7C 08 03 A6 */	mtlr r0
/* 806C7BB0  38 21 00 10 */	addi r1, r1, 0x10
/* 806C7BB4  4E 80 00 20 */	blr 
