lbl_8063E668:
/* 8063E668  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8063E66C  7C 08 02 A6 */	mflr r0
/* 8063E670  90 01 00 14 */	stw r0, 0x14(r1)
/* 8063E674  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8063E678  7C 7F 1B 78 */	mr r31, r3
/* 8063E67C  3C 60 80 65 */	lis r3, stringBase0@ha
/* 8063E680  38 63 EE 60 */	addi r3, r3, stringBase0@l
/* 8063E684  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 8063E688  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 8063E68C  3C A5 00 02 */	addis r5, r5, 2
/* 8063E690  38 C0 00 80 */	li r6, 0x80
/* 8063E694  38 A5 C2 F8 */	addi r5, r5, -15624
/* 8063E698  4B 9F DC 54 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 8063E69C  80 9F 05 B4 */	lwz r4, 0x5b4(r31)
/* 8063E6A0  80 04 00 08 */	lwz r0, 8(r4)
/* 8063E6A4  7C 00 18 50 */	subf r0, r0, r3
/* 8063E6A8  7C 00 00 34 */	cntlzw r0, r0
/* 8063E6AC  54 03 DE 3E */	rlwinm r3, r0, 0x1b, 0x18, 0x1f
/* 8063E6B0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8063E6B4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8063E6B8  7C 08 03 A6 */	mtlr r0
/* 8063E6BC  38 21 00 10 */	addi r1, r1, 0x10
/* 8063E6C0  4E 80 00 20 */	blr 
