lbl_80AEB32C:
/* 80AEB32C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AEB330  7C 08 02 A6 */	mflr r0
/* 80AEB334  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AEB338  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AEB33C  7C 7F 1B 78 */	mr r31, r3
/* 80AEB340  3C 60 80 AF */	lis r3, l_fileName@ha
/* 80AEB344  38 63 BD C0 */	addi r3, r3, l_fileName@l
/* 80AEB348  54 80 10 3A */	slwi r0, r4, 2
/* 80AEB34C  7C 85 00 2E */	lwzx r4, r5, r0
/* 80AEB350  4B 87 D7 DC */	b strcpy
/* 80AEB354  3C 60 80 AF */	lis r3, l_fileName@ha
/* 80AEB358  38 63 BD C0 */	addi r3, r3, l_fileName@l
/* 80AEB35C  3C 80 80 AF */	lis r4, struct_80AEBC54+0x0@ha
/* 80AEB360  38 84 BC 54 */	addi r4, r4, struct_80AEBC54+0x0@l
/* 80AEB364  38 84 00 1B */	addi r4, r4, 0x1b
/* 80AEB368  4B 87 D7 54 */	b strcat
/* 80AEB36C  7F E3 FB 78 */	mr r3, r31
/* 80AEB370  4B FF FE 21 */	bl getResName__13daNpc_Shop0_cFv
/* 80AEB374  3C 80 80 AF */	lis r4, l_fileName@ha
/* 80AEB378  38 84 BD C0 */	addi r4, r4, l_fileName@l
/* 80AEB37C  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 80AEB380  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 80AEB384  3C A5 00 02 */	addis r5, r5, 2
/* 80AEB388  38 C0 00 80 */	li r6, 0x80
/* 80AEB38C  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80AEB390  4B 55 0F EC */	b getRes__14dRes_control_cFPCcPCcP11dRes_info_ci
/* 80AEB394  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AEB398  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AEB39C  7C 08 03 A6 */	mtlr r0
/* 80AEB3A0  38 21 00 10 */	addi r1, r1, 0x10
/* 80AEB3A4  4E 80 00 20 */	blr 
