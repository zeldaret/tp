lbl_801480D0:
/* 801480D0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801480D4  7C 08 02 A6 */	mflr r0
/* 801480D8  90 01 00 14 */	stw r0, 0x14(r1)
/* 801480DC  7C 83 23 78 */	mr r3, r4
/* 801480E0  7C A4 2B 78 */	mr r4, r5
/* 801480E4  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 801480E8  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 801480EC  3C A5 00 02 */	addis r5, r5, 2
/* 801480F0  38 C0 00 80 */	li r6, 0x80
/* 801480F4  38 A5 C2 F8 */	addi r5, r5, -15624
/* 801480F8  4B EF 41 F5 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 801480FC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80148100  7C 08 03 A6 */	mtlr r0
/* 80148104  38 21 00 10 */	addi r1, r1, 0x10
/* 80148108  4E 80 00 20 */	blr 
