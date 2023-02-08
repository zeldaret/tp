lbl_80A9FFAC:
/* 80A9FFAC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80A9FFB0  7C 08 02 A6 */	mflr r0
/* 80A9FFB4  90 01 00 24 */	stw r0, 0x24(r1)
/* 80A9FFB8  39 61 00 20 */	addi r11, r1, 0x20
/* 80A9FFBC  4B 8C 22 1D */	bl _savegpr_28
/* 80A9FFC0  7C 7C 1B 78 */	mr r28, r3
/* 80A9FFC4  7C 9D 23 78 */	mr r29, r4
/* 80A9FFC8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80A9FFCC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80A9FFD0  3B C3 4F F8 */	addi r30, r3, 0x4ff8
/* 80A9FFD4  7F C3 F3 78 */	mr r3, r30
/* 80A9FFD8  3C A0 80 AA */	lis r5, d_a_npc_pachi_taro__stringBase0@ha /* 0x80AA1814@ha */
/* 80A9FFDC  38 A5 18 14 */	addi r5, r5, d_a_npc_pachi_taro__stringBase0@l /* 0x80AA1814@l */
/* 80A9FFE0  38 A5 00 EF */	addi r5, r5, 0xef
/* 80A9FFE4  38 C0 00 03 */	li r6, 3
/* 80A9FFE8  4B 5A 81 05 */	bl getMySubstanceP__16dEvent_manager_cFiPCci
/* 80A9FFEC  7C 7F 1B 79 */	or. r31, r3, r3
/* 80A9FFF0  40 82 00 0C */	bne lbl_80A9FFFC
/* 80A9FFF4  38 60 00 01 */	li r3, 1
/* 80A9FFF8  48 00 00 30 */	b lbl_80AA0028
lbl_80A9FFFC:
/* 80A9FFFC  7F C3 F3 78 */	mr r3, r30
/* 80AA0000  7F A4 EB 78 */	mr r4, r29
/* 80AA0004  4B 5A 7D 49 */	bl getIsAddvance__16dEvent_manager_cFi
/* 80AA0008  2C 03 00 00 */	cmpwi r3, 0
/* 80AA000C  41 82 00 10 */	beq lbl_80AA001C
/* 80AA0010  7F 83 E3 78 */	mr r3, r28
/* 80AA0014  7F E4 FB 78 */	mr r4, r31
/* 80AA0018  48 00 00 29 */	bl _cutTutrialCaution_Init__18daNpc_Pachi_Taro_cFRCi
lbl_80AA001C:
/* 80AA001C  7F 83 E3 78 */	mr r3, r28
/* 80AA0020  7F E4 FB 78 */	mr r4, r31
/* 80AA0024  48 00 00 65 */	bl _cutTutrialCaution_Main__18daNpc_Pachi_Taro_cFRCi
lbl_80AA0028:
/* 80AA0028  39 61 00 20 */	addi r11, r1, 0x20
/* 80AA002C  4B 8C 21 F9 */	bl _restgpr_28
/* 80AA0030  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80AA0034  7C 08 03 A6 */	mtlr r0
/* 80AA0038  38 21 00 20 */	addi r1, r1, 0x20
/* 80AA003C  4E 80 00 20 */	blr 
