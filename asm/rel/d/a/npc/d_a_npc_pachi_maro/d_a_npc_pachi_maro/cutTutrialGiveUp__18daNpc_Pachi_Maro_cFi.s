lbl_80A9A288:
/* 80A9A288  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80A9A28C  7C 08 02 A6 */	mflr r0
/* 80A9A290  90 01 00 24 */	stw r0, 0x24(r1)
/* 80A9A294  39 61 00 20 */	addi r11, r1, 0x20
/* 80A9A298  4B 8C 7F 41 */	bl _savegpr_28
/* 80A9A29C  7C 7C 1B 78 */	mr r28, r3
/* 80A9A2A0  7C 9D 23 78 */	mr r29, r4
/* 80A9A2A4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80A9A2A8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80A9A2AC  3B C3 4F F8 */	addi r30, r3, 0x4ff8
/* 80A9A2B0  7F C3 F3 78 */	mr r3, r30
/* 80A9A2B4  3C A0 80 AA */	lis r5, d_a_npc_pachi_maro__stringBase0@ha /* 0x80A9B988@ha */
/* 80A9A2B8  38 A5 B9 88 */	addi r5, r5, d_a_npc_pachi_maro__stringBase0@l /* 0x80A9B988@l */
/* 80A9A2BC  38 A5 00 E9 */	addi r5, r5, 0xe9
/* 80A9A2C0  38 C0 00 03 */	li r6, 3
/* 80A9A2C4  4B 5A DE 29 */	bl getMySubstanceP__16dEvent_manager_cFiPCci
/* 80A9A2C8  7C 7F 1B 79 */	or. r31, r3, r3
/* 80A9A2CC  40 82 00 0C */	bne lbl_80A9A2D8
/* 80A9A2D0  38 60 00 01 */	li r3, 1
/* 80A9A2D4  48 00 00 30 */	b lbl_80A9A304
lbl_80A9A2D8:
/* 80A9A2D8  7F C3 F3 78 */	mr r3, r30
/* 80A9A2DC  7F A4 EB 78 */	mr r4, r29
/* 80A9A2E0  4B 5A DA 6D */	bl getIsAddvance__16dEvent_manager_cFi
/* 80A9A2E4  2C 03 00 00 */	cmpwi r3, 0
/* 80A9A2E8  41 82 00 10 */	beq lbl_80A9A2F8
/* 80A9A2EC  7F 83 E3 78 */	mr r3, r28
/* 80A9A2F0  7F E4 FB 78 */	mr r4, r31
/* 80A9A2F4  48 00 00 29 */	bl _cutTutrialGiveUp_Init__18daNpc_Pachi_Maro_cFRCi
lbl_80A9A2F8:
/* 80A9A2F8  7F 83 E3 78 */	mr r3, r28
/* 80A9A2FC  7F E4 FB 78 */	mr r4, r31
/* 80A9A300  48 00 00 25 */	bl _cutTutrialGiveUp_Main__18daNpc_Pachi_Maro_cFRCi
lbl_80A9A304:
/* 80A9A304  39 61 00 20 */	addi r11, r1, 0x20
/* 80A9A308  4B 8C 7F 1D */	bl _restgpr_28
/* 80A9A30C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80A9A310  7C 08 03 A6 */	mtlr r0
/* 80A9A314  38 21 00 20 */	addi r1, r1, 0x20
/* 80A9A318  4E 80 00 20 */	blr 
