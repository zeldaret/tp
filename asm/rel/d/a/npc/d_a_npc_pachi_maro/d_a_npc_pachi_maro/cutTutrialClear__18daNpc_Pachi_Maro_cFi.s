lbl_80A99B2C:
/* 80A99B2C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80A99B30  7C 08 02 A6 */	mflr r0
/* 80A99B34  90 01 00 24 */	stw r0, 0x24(r1)
/* 80A99B38  39 61 00 20 */	addi r11, r1, 0x20
/* 80A99B3C  4B 8C 86 9D */	bl _savegpr_28
/* 80A99B40  7C 7C 1B 78 */	mr r28, r3
/* 80A99B44  7C 9D 23 78 */	mr r29, r4
/* 80A99B48  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80A99B4C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80A99B50  3B C3 4F F8 */	addi r30, r3, 0x4ff8
/* 80A99B54  7F C3 F3 78 */	mr r3, r30
/* 80A99B58  3C A0 80 AA */	lis r5, d_a_npc_pachi_maro__stringBase0@ha /* 0x80A9B988@ha */
/* 80A99B5C  38 A5 B9 88 */	addi r5, r5, d_a_npc_pachi_maro__stringBase0@l /* 0x80A9B988@l */
/* 80A99B60  38 A5 00 E9 */	addi r5, r5, 0xe9
/* 80A99B64  38 C0 00 03 */	li r6, 3
/* 80A99B68  4B 5A E5 85 */	bl getMySubstanceP__16dEvent_manager_cFiPCci
/* 80A99B6C  7C 7F 1B 79 */	or. r31, r3, r3
/* 80A99B70  40 82 00 0C */	bne lbl_80A99B7C
/* 80A99B74  38 60 00 01 */	li r3, 1
/* 80A99B78  48 00 00 30 */	b lbl_80A99BA8
lbl_80A99B7C:
/* 80A99B7C  7F C3 F3 78 */	mr r3, r30
/* 80A99B80  7F A4 EB 78 */	mr r4, r29
/* 80A99B84  4B 5A E1 C9 */	bl getIsAddvance__16dEvent_manager_cFi
/* 80A99B88  2C 03 00 00 */	cmpwi r3, 0
/* 80A99B8C  41 82 00 10 */	beq lbl_80A99B9C
/* 80A99B90  7F 83 E3 78 */	mr r3, r28
/* 80A99B94  7F E4 FB 78 */	mr r4, r31
/* 80A99B98  48 00 00 29 */	bl _cutTutrialClear_Init__18daNpc_Pachi_Maro_cFRCi
lbl_80A99B9C:
/* 80A99B9C  7F 83 E3 78 */	mr r3, r28
/* 80A99BA0  7F E4 FB 78 */	mr r4, r31
/* 80A99BA4  48 00 01 15 */	bl _cutTutrialClear_Main__18daNpc_Pachi_Maro_cFRCi
lbl_80A99BA8:
/* 80A99BA8  39 61 00 20 */	addi r11, r1, 0x20
/* 80A99BAC  4B 8C 86 79 */	bl _restgpr_28
/* 80A99BB0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80A99BB4  7C 08 03 A6 */	mtlr r0
/* 80A99BB8  38 21 00 20 */	addi r1, r1, 0x20
/* 80A99BBC  4E 80 00 20 */	blr 
