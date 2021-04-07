lbl_80A9F9C4:
/* 80A9F9C4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80A9F9C8  7C 08 02 A6 */	mflr r0
/* 80A9F9CC  90 01 00 24 */	stw r0, 0x24(r1)
/* 80A9F9D0  39 61 00 20 */	addi r11, r1, 0x20
/* 80A9F9D4  4B 8C 28 05 */	bl _savegpr_28
/* 80A9F9D8  7C 7C 1B 78 */	mr r28, r3
/* 80A9F9DC  7C 9D 23 78 */	mr r29, r4
/* 80A9F9E0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80A9F9E4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80A9F9E8  3B C3 4F F8 */	addi r30, r3, 0x4ff8
/* 80A9F9EC  7F C3 F3 78 */	mr r3, r30
/* 80A9F9F0  3C A0 80 AA */	lis r5, d_a_npc_pachi_taro__stringBase0@ha /* 0x80AA1814@ha */
/* 80A9F9F4  38 A5 18 14 */	addi r5, r5, d_a_npc_pachi_taro__stringBase0@l /* 0x80AA1814@l */
/* 80A9F9F8  38 A5 00 EF */	addi r5, r5, 0xef
/* 80A9F9FC  38 C0 00 03 */	li r6, 3
/* 80A9FA00  4B 5A 86 ED */	bl getMySubstanceP__16dEvent_manager_cFiPCci
/* 80A9FA04  7C 7F 1B 79 */	or. r31, r3, r3
/* 80A9FA08  40 82 00 0C */	bne lbl_80A9FA14
/* 80A9FA0C  38 60 00 01 */	li r3, 1
/* 80A9FA10  48 00 00 30 */	b lbl_80A9FA40
lbl_80A9FA14:
/* 80A9FA14  7F C3 F3 78 */	mr r3, r30
/* 80A9FA18  7F A4 EB 78 */	mr r4, r29
/* 80A9FA1C  4B 5A 83 31 */	bl getIsAddvance__16dEvent_manager_cFi
/* 80A9FA20  2C 03 00 00 */	cmpwi r3, 0
/* 80A9FA24  41 82 00 10 */	beq lbl_80A9FA34
/* 80A9FA28  7F 83 E3 78 */	mr r3, r28
/* 80A9FA2C  7F E4 FB 78 */	mr r4, r31
/* 80A9FA30  48 00 00 29 */	bl _cutTutrialSelectGiveUp_Init__18daNpc_Pachi_Taro_cFRCi
lbl_80A9FA34:
/* 80A9FA34  7F 83 E3 78 */	mr r3, r28
/* 80A9FA38  7F E4 FB 78 */	mr r4, r31
/* 80A9FA3C  48 00 00 CD */	bl _cutTutrialSelectGiveUp_Main__18daNpc_Pachi_Taro_cFRCi
lbl_80A9FA40:
/* 80A9FA40  39 61 00 20 */	addi r11, r1, 0x20
/* 80A9FA44  4B 8C 27 E1 */	bl _restgpr_28
/* 80A9FA48  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80A9FA4C  7C 08 03 A6 */	mtlr r0
/* 80A9FA50  38 21 00 20 */	addi r1, r1, 0x20
/* 80A9FA54  4E 80 00 20 */	blr 
