lbl_80A99D4C:
/* 80A99D4C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80A99D50  7C 08 02 A6 */	mflr r0
/* 80A99D54  90 01 00 24 */	stw r0, 0x24(r1)
/* 80A99D58  39 61 00 20 */	addi r11, r1, 0x20
/* 80A99D5C  4B 8C 84 7D */	bl _savegpr_28
/* 80A99D60  7C 7C 1B 78 */	mr r28, r3
/* 80A99D64  7C 9D 23 78 */	mr r29, r4
/* 80A99D68  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80A99D6C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80A99D70  3B C3 4F F8 */	addi r30, r3, 0x4ff8
/* 80A99D74  7F C3 F3 78 */	mr r3, r30
/* 80A99D78  3C A0 80 AA */	lis r5, d_a_npc_pachi_maro__stringBase0@ha /* 0x80A9B988@ha */
/* 80A99D7C  38 A5 B9 88 */	addi r5, r5, d_a_npc_pachi_maro__stringBase0@l /* 0x80A9B988@l */
/* 80A99D80  38 A5 00 E9 */	addi r5, r5, 0xe9
/* 80A99D84  38 C0 00 03 */	li r6, 3
/* 80A99D88  4B 5A E3 65 */	bl getMySubstanceP__16dEvent_manager_cFiPCci
/* 80A99D8C  7C 7F 1B 79 */	or. r31, r3, r3
/* 80A99D90  40 82 00 0C */	bne lbl_80A99D9C
/* 80A99D94  38 60 00 01 */	li r3, 1
/* 80A99D98  48 00 00 30 */	b lbl_80A99DC8
lbl_80A99D9C:
/* 80A99D9C  7F C3 F3 78 */	mr r3, r30
/* 80A99DA0  7F A4 EB 78 */	mr r4, r29
/* 80A99DA4  4B 5A DF A9 */	bl getIsAddvance__16dEvent_manager_cFi
/* 80A99DA8  2C 03 00 00 */	cmpwi r3, 0
/* 80A99DAC  41 82 00 10 */	beq lbl_80A99DBC
/* 80A99DB0  7F 83 E3 78 */	mr r3, r28
/* 80A99DB4  7F E4 FB 78 */	mr r4, r31
/* 80A99DB8  48 00 00 29 */	bl _cutTalk_Init__18daNpc_Pachi_Maro_cFRCi
lbl_80A99DBC:
/* 80A99DBC  7F 83 E3 78 */	mr r3, r28
/* 80A99DC0  7F E4 FB 78 */	mr r4, r31
/* 80A99DC4  48 00 00 25 */	bl _cutTalk_Main__18daNpc_Pachi_Maro_cFRCi
lbl_80A99DC8:
/* 80A99DC8  39 61 00 20 */	addi r11, r1, 0x20
/* 80A99DCC  4B 8C 84 59 */	bl _restgpr_28
/* 80A99DD0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80A99DD4  7C 08 03 A6 */	mtlr r0
/* 80A99DD8  38 21 00 20 */	addi r1, r1, 0x20
/* 80A99DDC  4E 80 00 20 */	blr 
