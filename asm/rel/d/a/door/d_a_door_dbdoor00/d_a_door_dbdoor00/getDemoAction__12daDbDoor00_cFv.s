lbl_8045DA68:
/* 8045DA68  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8045DA6C  7C 08 02 A6 */	mflr r0
/* 8045DA70  90 01 00 14 */	stw r0, 0x14(r1)
/* 8045DA74  7C 64 1B 78 */	mr r4, r3
/* 8045DA78  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8045DA7C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8045DA80  38 63 4F F8 */	addi r3, r3, 0x4ff8
/* 8045DA84  80 84 05 98 */	lwz r4, 0x598(r4)
/* 8045DA88  3C A0 80 46 */	lis r5, action_table@ha
/* 8045DA8C  38 A5 E6 88 */	addi r5, r5, action_table@l
/* 8045DA90  38 C0 00 09 */	li r6, 9
/* 8045DA94  38 E0 00 00 */	li r7, 0
/* 8045DA98  39 00 00 00 */	li r8, 0
/* 8045DA9C  4B BE A3 74 */	b getMyActIdx__16dEvent_manager_cFiPCPCciii
/* 8045DAA0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8045DAA4  7C 08 03 A6 */	mtlr r0
/* 8045DAA8  38 21 00 10 */	addi r1, r1, 0x10
/* 8045DAAC  4E 80 00 20 */	blr 
