lbl_80465918:
/* 80465918  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8046591C  7C 08 02 A6 */	mflr r0
/* 80465920  90 01 00 14 */	stw r0, 0x14(r1)
/* 80465924  7C 64 1B 78 */	mr r4, r3
/* 80465928  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8046592C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80465930  38 63 4F F8 */	addi r3, r3, 0x4ff8
/* 80465934  80 84 06 CC */	lwz r4, 0x6cc(r4)
/* 80465938  3C A0 80 46 */	lis r5, action_table@ha
/* 8046593C  38 A5 72 2C */	addi r5, r5, action_table@l
/* 80465940  38 C0 00 1D */	li r6, 0x1d
/* 80465944  38 E0 00 00 */	li r7, 0
/* 80465948  39 00 00 00 */	li r8, 0
/* 8046594C  4B BE 24 C4 */	b getMyActIdx__16dEvent_manager_cFiPCPCciii
/* 80465950  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80465954  7C 08 03 A6 */	mtlr r0
/* 80465958  38 21 00 10 */	addi r1, r1, 0x10
/* 8046595C  4E 80 00 20 */	blr 
