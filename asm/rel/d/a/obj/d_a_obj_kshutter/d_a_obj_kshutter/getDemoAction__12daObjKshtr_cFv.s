lbl_80C48798:
/* 80C48798  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C4879C  7C 08 02 A6 */	mflr r0
/* 80C487A0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C487A4  7C 64 1B 78 */	mr r4, r3
/* 80C487A8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C487AC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C487B0  38 63 4F F8 */	addi r3, r3, 0x4ff8
/* 80C487B4  80 84 06 00 */	lwz r4, 0x600(r4)
/* 80C487B8  3C A0 80 C5 */	lis r5, action_table@ha /* 0x80C49FE8@ha */
/* 80C487BC  38 A5 9F E8 */	addi r5, r5, action_table@l /* 0x80C49FE8@l */
/* 80C487C0  38 C0 00 06 */	li r6, 6
/* 80C487C4  38 E0 00 00 */	li r7, 0
/* 80C487C8  39 00 00 00 */	li r8, 0
/* 80C487CC  4B 3F F6 45 */	bl getMyActIdx__16dEvent_manager_cFiPCPCciii
/* 80C487D0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C487D4  7C 08 03 A6 */	mtlr r0
/* 80C487D8  38 21 00 10 */	addi r1, r1, 0x10
/* 80C487DC  4E 80 00 20 */	blr 
