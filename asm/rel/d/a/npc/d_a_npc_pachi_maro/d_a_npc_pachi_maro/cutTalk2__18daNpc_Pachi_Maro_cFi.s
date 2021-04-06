lbl_80A99E44:
/* 80A99E44  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80A99E48  7C 08 02 A6 */	mflr r0
/* 80A99E4C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80A99E50  39 61 00 20 */	addi r11, r1, 0x20
/* 80A99E54  4B 8C 83 85 */	bl _savegpr_28
/* 80A99E58  7C 7C 1B 78 */	mr r28, r3
/* 80A99E5C  7C 9D 23 78 */	mr r29, r4
/* 80A99E60  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80A99E64  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80A99E68  3B C3 4F F8 */	addi r30, r3, 0x4ff8
/* 80A99E6C  7F C3 F3 78 */	mr r3, r30
/* 80A99E70  3C A0 80 AA */	lis r5, d_a_npc_pachi_maro__stringBase0@ha /* 0x80A9B988@ha */
/* 80A99E74  38 A5 B9 88 */	addi r5, r5, d_a_npc_pachi_maro__stringBase0@l /* 0x80A9B988@l */
/* 80A99E78  38 A5 00 E9 */	addi r5, r5, 0xe9
/* 80A99E7C  38 C0 00 03 */	li r6, 3
/* 80A99E80  4B 5A E2 6D */	bl getMySubstanceP__16dEvent_manager_cFiPCci
/* 80A99E84  7C 7F 1B 79 */	or. r31, r3, r3
/* 80A99E88  40 82 00 0C */	bne lbl_80A99E94
/* 80A99E8C  38 60 00 01 */	li r3, 1
/* 80A99E90  48 00 00 30 */	b lbl_80A99EC0
lbl_80A99E94:
/* 80A99E94  7F C3 F3 78 */	mr r3, r30
/* 80A99E98  7F A4 EB 78 */	mr r4, r29
/* 80A99E9C  4B 5A DE B1 */	bl getIsAddvance__16dEvent_manager_cFi
/* 80A99EA0  2C 03 00 00 */	cmpwi r3, 0
/* 80A99EA4  41 82 00 10 */	beq lbl_80A99EB4
/* 80A99EA8  7F 83 E3 78 */	mr r3, r28
/* 80A99EAC  7F E4 FB 78 */	mr r4, r31
/* 80A99EB0  48 00 00 29 */	bl _cutTalk2_Init__18daNpc_Pachi_Maro_cFRCi
lbl_80A99EB4:
/* 80A99EB4  7F 83 E3 78 */	mr r3, r28
/* 80A99EB8  7F E4 FB 78 */	mr r4, r31
/* 80A99EBC  48 00 00 25 */	bl _cutTalk2_Main__18daNpc_Pachi_Maro_cFRCi
lbl_80A99EC0:
/* 80A99EC0  39 61 00 20 */	addi r11, r1, 0x20
/* 80A99EC4  4B 8C 83 61 */	bl _restgpr_28
/* 80A99EC8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80A99ECC  7C 08 03 A6 */	mtlr r0
/* 80A99ED0  38 21 00 20 */	addi r1, r1, 0x20
/* 80A99ED4  4E 80 00 20 */	blr 
