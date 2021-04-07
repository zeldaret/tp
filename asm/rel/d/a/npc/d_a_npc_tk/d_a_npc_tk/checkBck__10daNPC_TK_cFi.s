lbl_80B0153C:
/* 80B0153C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B01540  7C 08 02 A6 */	mflr r0
/* 80B01544  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B01548  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B0154C  7C 7F 1B 78 */	mr r31, r3
/* 80B01550  3C 60 80 B1 */	lis r3, d_a_npc_tk__stringBase0@ha /* 0x80B0C3A0@ha */
/* 80B01554  38 63 C3 A0 */	addi r3, r3, d_a_npc_tk__stringBase0@l /* 0x80B0C3A0@l */
/* 80B01558  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80B0155C  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80B01560  3C A5 00 02 */	addis r5, r5, 2
/* 80B01564  38 C0 00 80 */	li r6, 0x80
/* 80B01568  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80B0156C  4B 53 AD 81 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80B01570  80 9F 05 70 */	lwz r4, 0x570(r31)
/* 80B01574  80 04 00 08 */	lwz r0, 8(r4)
/* 80B01578  7C 00 18 50 */	subf r0, r0, r3
/* 80B0157C  7C 00 00 34 */	cntlzw r0, r0
/* 80B01580  54 03 DE 3E */	rlwinm r3, r0, 0x1b, 0x18, 0x1f
/* 80B01584  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B01588  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B0158C  7C 08 03 A6 */	mtlr r0
/* 80B01590  38 21 00 10 */	addi r1, r1, 0x10
/* 80B01594  4E 80 00 20 */	blr 
