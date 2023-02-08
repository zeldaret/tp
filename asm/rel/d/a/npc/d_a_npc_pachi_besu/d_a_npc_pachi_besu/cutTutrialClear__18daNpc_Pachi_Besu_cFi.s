lbl_80A94CAC:
/* 80A94CAC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80A94CB0  7C 08 02 A6 */	mflr r0
/* 80A94CB4  90 01 00 24 */	stw r0, 0x24(r1)
/* 80A94CB8  39 61 00 20 */	addi r11, r1, 0x20
/* 80A94CBC  4B 8C D5 1D */	bl _savegpr_28
/* 80A94CC0  7C 7C 1B 78 */	mr r28, r3
/* 80A94CC4  7C 9D 23 78 */	mr r29, r4
/* 80A94CC8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80A94CCC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80A94CD0  3B C3 4F F8 */	addi r30, r3, 0x4ff8
/* 80A94CD4  7F C3 F3 78 */	mr r3, r30
/* 80A94CD8  3C A0 80 A9 */	lis r5, d_a_npc_pachi_besu__stringBase0@ha /* 0x80A96B60@ha */
/* 80A94CDC  38 A5 6B 60 */	addi r5, r5, d_a_npc_pachi_besu__stringBase0@l /* 0x80A96B60@l */
/* 80A94CE0  38 A5 00 D8 */	addi r5, r5, 0xd8
/* 80A94CE4  38 C0 00 03 */	li r6, 3
/* 80A94CE8  4B 5B 34 05 */	bl getMySubstanceP__16dEvent_manager_cFiPCci
/* 80A94CEC  7C 7F 1B 79 */	or. r31, r3, r3
/* 80A94CF0  40 82 00 0C */	bne lbl_80A94CFC
/* 80A94CF4  38 60 00 01 */	li r3, 1
/* 80A94CF8  48 00 00 30 */	b lbl_80A94D28
lbl_80A94CFC:
/* 80A94CFC  7F C3 F3 78 */	mr r3, r30
/* 80A94D00  7F A4 EB 78 */	mr r4, r29
/* 80A94D04  4B 5B 30 49 */	bl getIsAddvance__16dEvent_manager_cFi
/* 80A94D08  2C 03 00 00 */	cmpwi r3, 0
/* 80A94D0C  41 82 00 10 */	beq lbl_80A94D1C
/* 80A94D10  7F 83 E3 78 */	mr r3, r28
/* 80A94D14  7F E4 FB 78 */	mr r4, r31
/* 80A94D18  48 00 00 29 */	bl _cutTutrialClear_Init__18daNpc_Pachi_Besu_cFRCi
lbl_80A94D1C:
/* 80A94D1C  7F 83 E3 78 */	mr r3, r28
/* 80A94D20  7F E4 FB 78 */	mr r4, r31
/* 80A94D24  48 00 01 15 */	bl _cutTutrialClear_Main__18daNpc_Pachi_Besu_cFRCi
lbl_80A94D28:
/* 80A94D28  39 61 00 20 */	addi r11, r1, 0x20
/* 80A94D2C  4B 8C D4 F9 */	bl _restgpr_28
/* 80A94D30  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80A94D34  7C 08 03 A6 */	mtlr r0
/* 80A94D38  38 21 00 20 */	addi r1, r1, 0x20
/* 80A94D3C  4E 80 00 20 */	blr 
