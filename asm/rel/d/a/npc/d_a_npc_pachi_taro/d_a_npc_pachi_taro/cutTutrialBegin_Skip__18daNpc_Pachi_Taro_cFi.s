lbl_80A9EC5C:
/* 80A9EC5C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80A9EC60  7C 08 02 A6 */	mflr r0
/* 80A9EC64  90 01 00 24 */	stw r0, 0x24(r1)
/* 80A9EC68  39 61 00 20 */	addi r11, r1, 0x20
/* 80A9EC6C  4B 8C 35 6D */	bl _savegpr_28
/* 80A9EC70  7C 7C 1B 78 */	mr r28, r3
/* 80A9EC74  7C 9D 23 78 */	mr r29, r4
/* 80A9EC78  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80A9EC7C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80A9EC80  3B C3 4F F8 */	addi r30, r3, 0x4ff8
/* 80A9EC84  7F C3 F3 78 */	mr r3, r30
/* 80A9EC88  3C A0 80 AA */	lis r5, d_a_npc_pachi_taro__stringBase0@ha /* 0x80AA1814@ha */
/* 80A9EC8C  38 A5 18 14 */	addi r5, r5, d_a_npc_pachi_taro__stringBase0@l /* 0x80AA1814@l */
/* 80A9EC90  38 A5 00 EF */	addi r5, r5, 0xef
/* 80A9EC94  38 C0 00 03 */	li r6, 3
/* 80A9EC98  4B 5A 94 55 */	bl getMySubstanceP__16dEvent_manager_cFiPCci
/* 80A9EC9C  7C 7F 1B 79 */	or. r31, r3, r3
/* 80A9ECA0  40 82 00 0C */	bne lbl_80A9ECAC
/* 80A9ECA4  38 60 00 01 */	li r3, 1
/* 80A9ECA8  48 00 00 30 */	b lbl_80A9ECD8
lbl_80A9ECAC:
/* 80A9ECAC  7F C3 F3 78 */	mr r3, r30
/* 80A9ECB0  7F A4 EB 78 */	mr r4, r29
/* 80A9ECB4  4B 5A 90 99 */	bl getIsAddvance__16dEvent_manager_cFi
/* 80A9ECB8  2C 03 00 00 */	cmpwi r3, 0
/* 80A9ECBC  41 82 00 10 */	beq lbl_80A9ECCC
/* 80A9ECC0  7F 83 E3 78 */	mr r3, r28
/* 80A9ECC4  7F E4 FB 78 */	mr r4, r31
/* 80A9ECC8  48 00 00 29 */	bl _cutTutrialBegin_Skip_Init__18daNpc_Pachi_Taro_cFRCi
lbl_80A9ECCC:
/* 80A9ECCC  7F 83 E3 78 */	mr r3, r28
/* 80A9ECD0  7F E4 FB 78 */	mr r4, r31
/* 80A9ECD4  48 00 00 55 */	bl _cutTutrialBegin_Skip_Main__18daNpc_Pachi_Taro_cFRCi
lbl_80A9ECD8:
/* 80A9ECD8  39 61 00 20 */	addi r11, r1, 0x20
/* 80A9ECDC  4B 8C 35 49 */	bl _restgpr_28
/* 80A9ECE0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80A9ECE4  7C 08 03 A6 */	mtlr r0
/* 80A9ECE8  38 21 00 20 */	addi r1, r1, 0x20
/* 80A9ECEC  4E 80 00 20 */	blr 
