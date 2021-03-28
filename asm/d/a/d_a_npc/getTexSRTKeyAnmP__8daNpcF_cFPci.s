lbl_80152BA4:
/* 80152BA4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80152BA8  7C 08 02 A6 */	mflr r0
/* 80152BAC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80152BB0  7C 83 23 78 */	mr r3, r4
/* 80152BB4  7C A4 2B 78 */	mr r4, r5
/* 80152BB8  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 80152BBC  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 80152BC0  3C A5 00 02 */	addis r5, r5, 2
/* 80152BC4  38 C0 00 80 */	li r6, 0x80
/* 80152BC8  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80152BCC  4B EE 97 21 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80152BD0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80152BD4  7C 08 03 A6 */	mtlr r0
/* 80152BD8  38 21 00 10 */	addi r1, r1, 0x10
/* 80152BDC  4E 80 00 20 */	blr 
