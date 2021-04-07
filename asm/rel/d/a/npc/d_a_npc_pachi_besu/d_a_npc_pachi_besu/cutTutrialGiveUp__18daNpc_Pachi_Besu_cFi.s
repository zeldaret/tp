lbl_80A95408:
/* 80A95408  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80A9540C  7C 08 02 A6 */	mflr r0
/* 80A95410  90 01 00 24 */	stw r0, 0x24(r1)
/* 80A95414  39 61 00 20 */	addi r11, r1, 0x20
/* 80A95418  4B 8C CD C1 */	bl _savegpr_28
/* 80A9541C  7C 7C 1B 78 */	mr r28, r3
/* 80A95420  7C 9D 23 78 */	mr r29, r4
/* 80A95424  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80A95428  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80A9542C  3B C3 4F F8 */	addi r30, r3, 0x4ff8
/* 80A95430  7F C3 F3 78 */	mr r3, r30
/* 80A95434  3C A0 80 A9 */	lis r5, d_a_npc_pachi_besu__stringBase0@ha /* 0x80A96B60@ha */
/* 80A95438  38 A5 6B 60 */	addi r5, r5, d_a_npc_pachi_besu__stringBase0@l /* 0x80A96B60@l */
/* 80A9543C  38 A5 00 D8 */	addi r5, r5, 0xd8
/* 80A95440  38 C0 00 03 */	li r6, 3
/* 80A95444  4B 5B 2C A9 */	bl getMySubstanceP__16dEvent_manager_cFiPCci
/* 80A95448  7C 7F 1B 79 */	or. r31, r3, r3
/* 80A9544C  40 82 00 0C */	bne lbl_80A95458
/* 80A95450  38 60 00 01 */	li r3, 1
/* 80A95454  48 00 00 30 */	b lbl_80A95484
lbl_80A95458:
/* 80A95458  7F C3 F3 78 */	mr r3, r30
/* 80A9545C  7F A4 EB 78 */	mr r4, r29
/* 80A95460  4B 5B 28 ED */	bl getIsAddvance__16dEvent_manager_cFi
/* 80A95464  2C 03 00 00 */	cmpwi r3, 0
/* 80A95468  41 82 00 10 */	beq lbl_80A95478
/* 80A9546C  7F 83 E3 78 */	mr r3, r28
/* 80A95470  7F E4 FB 78 */	mr r4, r31
/* 80A95474  48 00 00 29 */	bl _cutTutrialGiveUp_Init__18daNpc_Pachi_Besu_cFRCi
lbl_80A95478:
/* 80A95478  7F 83 E3 78 */	mr r3, r28
/* 80A9547C  7F E4 FB 78 */	mr r4, r31
/* 80A95480  48 00 00 25 */	bl _cutTutrialGiveUp_Main__18daNpc_Pachi_Besu_cFRCi
lbl_80A95484:
/* 80A95484  39 61 00 20 */	addi r11, r1, 0x20
/* 80A95488  4B 8C CD 9D */	bl _restgpr_28
/* 80A9548C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80A95490  7C 08 03 A6 */	mtlr r0
/* 80A95494  38 21 00 20 */	addi r1, r1, 0x20
/* 80A95498  4E 80 00 20 */	blr 
