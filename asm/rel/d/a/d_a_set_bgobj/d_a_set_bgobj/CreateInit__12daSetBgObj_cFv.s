lbl_80485D78:
/* 80485D78  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80485D7C  7C 08 02 A6 */	mflr r0
/* 80485D80  90 01 00 14 */	stw r0, 0x14(r1)
/* 80485D84  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80485D88  7C 7F 1B 78 */	mr r31, r3
/* 80485D8C  38 7F 05 70 */	addi r3, r31, 0x570
/* 80485D90  3C 80 80 48 */	lis r4, l_specName@ha /* 0x80485F00@ha */
/* 80485D94  38 84 5F 00 */	addi r4, r4, l_specName@l /* 0x80485F00@l */
/* 80485D98  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80485D9C  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80485DA0  3C A5 00 02 */	addis r5, r5, 2
/* 80485DA4  38 C0 00 80 */	li r6, 0x80
/* 80485DA8  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80485DAC  4B BB 65 D1 */	bl getRes__14dRes_control_cFPCcPCcP11dRes_info_ci
/* 80485DB0  A0 03 00 00 */	lhz r0, 0(r3)
/* 80485DB4  54 00 08 3C */	slwi r0, r0, 1
/* 80485DB8  3C 60 80 48 */	lis r3, l_bg_profName@ha /* 0x80485F10@ha */
/* 80485DBC  38 63 5F 10 */	addi r3, r3, l_bg_profName@l /* 0x80485F10@l */
/* 80485DC0  7C 63 02 AE */	lhax r3, r3, r0
/* 80485DC4  80 9F 00 B0 */	lwz r4, 0xb0(r31)
/* 80485DC8  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 80485DCC  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80485DD0  7C 06 07 74 */	extsb r6, r0
/* 80485DD4  38 FF 04 DC */	addi r7, r31, 0x4dc
/* 80485DD8  39 1F 04 EC */	addi r8, r31, 0x4ec
/* 80485DDC  39 20 FF FF */	li r9, -1
/* 80485DE0  4B B9 3F B9 */	bl fopAcM_create__FsUlPC4cXyziPC5csXyzPC4cXyzSc
/* 80485DE4  38 60 00 01 */	li r3, 1
/* 80485DE8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80485DEC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80485DF0  7C 08 03 A6 */	mtlr r0
/* 80485DF4  38 21 00 10 */	addi r1, r1, 0x10
/* 80485DF8  4E 80 00 20 */	blr 
