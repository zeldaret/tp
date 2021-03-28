lbl_8072E31C:
/* 8072E31C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8072E320  7C 08 02 A6 */	mflr r0
/* 8072E324  90 01 00 14 */	stw r0, 0x14(r1)
/* 8072E328  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8072E32C  7C 7F 1B 78 */	mr r31, r3
/* 8072E330  3C 60 80 73 */	lis r3, stringBase0@ha
/* 8072E334  38 63 5D 0C */	addi r3, r3, stringBase0@l
/* 8072E338  38 63 00 05 */	addi r3, r3, 5
/* 8072E33C  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 8072E340  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 8072E344  3C A5 00 02 */	addis r5, r5, 2
/* 8072E348  38 C0 00 80 */	li r6, 0x80
/* 8072E34C  38 A5 C2 F8 */	addi r5, r5, -15624
/* 8072E350  4B 90 DF 9C */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 8072E354  80 9F 05 BC */	lwz r4, 0x5bc(r31)
/* 8072E358  80 04 00 08 */	lwz r0, 8(r4)
/* 8072E35C  7C 00 18 50 */	subf r0, r0, r3
/* 8072E360  7C 00 00 34 */	cntlzw r0, r0
/* 8072E364  54 03 D9 7E */	srwi r3, r0, 5
/* 8072E368  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8072E36C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8072E370  7C 08 03 A6 */	mtlr r0
/* 8072E374  38 21 00 10 */	addi r1, r1, 0x10
/* 8072E378  4E 80 00 20 */	blr 
