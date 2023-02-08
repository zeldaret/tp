lbl_80A99A88:
/* 80A99A88  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80A99A8C  7C 08 02 A6 */	mflr r0
/* 80A99A90  90 01 00 24 */	stw r0, 0x24(r1)
/* 80A99A94  39 61 00 20 */	addi r11, r1, 0x20
/* 80A99A98  4B 8C 87 41 */	bl _savegpr_28
/* 80A99A9C  7C 7C 1B 78 */	mr r28, r3
/* 80A99AA0  7C 9D 23 78 */	mr r29, r4
/* 80A99AA4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80A99AA8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80A99AAC  3B C3 4F F8 */	addi r30, r3, 0x4ff8
/* 80A99AB0  7F C3 F3 78 */	mr r3, r30
/* 80A99AB4  3C A0 80 AA */	lis r5, d_a_npc_pachi_maro__stringBase0@ha /* 0x80A9B988@ha */
/* 80A99AB8  38 A5 B9 88 */	addi r5, r5, d_a_npc_pachi_maro__stringBase0@l /* 0x80A9B988@l */
/* 80A99ABC  38 A5 00 E9 */	addi r5, r5, 0xe9
/* 80A99AC0  38 C0 00 03 */	li r6, 3
/* 80A99AC4  4B 5A E6 29 */	bl getMySubstanceP__16dEvent_manager_cFiPCci
/* 80A99AC8  7C 7F 1B 79 */	or. r31, r3, r3
/* 80A99ACC  40 82 00 0C */	bne lbl_80A99AD8
/* 80A99AD0  38 60 00 01 */	li r3, 1
/* 80A99AD4  48 00 00 30 */	b lbl_80A99B04
lbl_80A99AD8:
/* 80A99AD8  7F C3 F3 78 */	mr r3, r30
/* 80A99ADC  7F A4 EB 78 */	mr r4, r29
/* 80A99AE0  4B 5A E2 6D */	bl getIsAddvance__16dEvent_manager_cFi
/* 80A99AE4  2C 03 00 00 */	cmpwi r3, 0
/* 80A99AE8  41 82 00 10 */	beq lbl_80A99AF8
/* 80A99AEC  7F 83 E3 78 */	mr r3, r28
/* 80A99AF0  7F E4 FB 78 */	mr r4, r31
/* 80A99AF4  48 00 00 29 */	bl _cutTutrialBegin_Skip_Init__18daNpc_Pachi_Maro_cFRCi
lbl_80A99AF8:
/* 80A99AF8  7F 83 E3 78 */	mr r3, r28
/* 80A99AFC  7F E4 FB 78 */	mr r4, r31
/* 80A99B00  48 00 00 25 */	bl _cutTutrialBegin_Skip_Main__18daNpc_Pachi_Maro_cFRCi
lbl_80A99B04:
/* 80A99B04  39 61 00 20 */	addi r11, r1, 0x20
/* 80A99B08  4B 8C 87 1D */	bl _restgpr_28
/* 80A99B0C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80A99B10  7C 08 03 A6 */	mtlr r0
/* 80A99B14  38 21 00 20 */	addi r1, r1, 0x20
/* 80A99B18  4E 80 00 20 */	blr 
