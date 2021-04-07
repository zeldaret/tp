lbl_80A954E0:
/* 80A954E0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80A954E4  7C 08 02 A6 */	mflr r0
/* 80A954E8  90 01 00 24 */	stw r0, 0x24(r1)
/* 80A954EC  39 61 00 20 */	addi r11, r1, 0x20
/* 80A954F0  4B 8C CC E9 */	bl _savegpr_28
/* 80A954F4  7C 7C 1B 78 */	mr r28, r3
/* 80A954F8  7C 9D 23 78 */	mr r29, r4
/* 80A954FC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80A95500  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80A95504  3B C3 4F F8 */	addi r30, r3, 0x4ff8
/* 80A95508  7F C3 F3 78 */	mr r3, r30
/* 80A9550C  3C A0 80 A9 */	lis r5, d_a_npc_pachi_besu__stringBase0@ha /* 0x80A96B60@ha */
/* 80A95510  38 A5 6B 60 */	addi r5, r5, d_a_npc_pachi_besu__stringBase0@l /* 0x80A96B60@l */
/* 80A95514  38 A5 00 D8 */	addi r5, r5, 0xd8
/* 80A95518  38 C0 00 03 */	li r6, 3
/* 80A9551C  4B 5B 2B D1 */	bl getMySubstanceP__16dEvent_manager_cFiPCci
/* 80A95520  7C 7F 1B 79 */	or. r31, r3, r3
/* 80A95524  40 82 00 0C */	bne lbl_80A95530
/* 80A95528  38 60 00 01 */	li r3, 1
/* 80A9552C  48 00 00 30 */	b lbl_80A9555C
lbl_80A95530:
/* 80A95530  7F C3 F3 78 */	mr r3, r30
/* 80A95534  7F A4 EB 78 */	mr r4, r29
/* 80A95538  4B 5B 28 15 */	bl getIsAddvance__16dEvent_manager_cFi
/* 80A9553C  2C 03 00 00 */	cmpwi r3, 0
/* 80A95540  41 82 00 10 */	beq lbl_80A95550
/* 80A95544  7F 83 E3 78 */	mr r3, r28
/* 80A95548  7F E4 FB 78 */	mr r4, r31
/* 80A9554C  48 00 00 29 */	bl _cutTutrialContinue_Init__18daNpc_Pachi_Besu_cFRCi
lbl_80A95550:
/* 80A95550  7F 83 E3 78 */	mr r3, r28
/* 80A95554  7F E4 FB 78 */	mr r4, r31
/* 80A95558  48 00 00 25 */	bl _cutTutrialContinue_Main__18daNpc_Pachi_Besu_cFRCi
lbl_80A9555C:
/* 80A9555C  39 61 00 20 */	addi r11, r1, 0x20
/* 80A95560  4B 8C CC C5 */	bl _restgpr_28
/* 80A95564  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80A95568  7C 08 03 A6 */	mtlr r0
/* 80A9556C  38 21 00 20 */	addi r1, r1, 0x20
/* 80A95570  4E 80 00 20 */	blr 
