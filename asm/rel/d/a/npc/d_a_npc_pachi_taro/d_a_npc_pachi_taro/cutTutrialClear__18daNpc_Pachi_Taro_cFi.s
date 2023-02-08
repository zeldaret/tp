lbl_80A9ED40:
/* 80A9ED40  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80A9ED44  7C 08 02 A6 */	mflr r0
/* 80A9ED48  90 01 00 24 */	stw r0, 0x24(r1)
/* 80A9ED4C  39 61 00 20 */	addi r11, r1, 0x20
/* 80A9ED50  4B 8C 34 89 */	bl _savegpr_28
/* 80A9ED54  7C 7C 1B 78 */	mr r28, r3
/* 80A9ED58  7C 9D 23 78 */	mr r29, r4
/* 80A9ED5C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80A9ED60  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80A9ED64  3B C3 4F F8 */	addi r30, r3, 0x4ff8
/* 80A9ED68  7F C3 F3 78 */	mr r3, r30
/* 80A9ED6C  3C A0 80 AA */	lis r5, d_a_npc_pachi_taro__stringBase0@ha /* 0x80AA1814@ha */
/* 80A9ED70  38 A5 18 14 */	addi r5, r5, d_a_npc_pachi_taro__stringBase0@l /* 0x80AA1814@l */
/* 80A9ED74  38 A5 00 EF */	addi r5, r5, 0xef
/* 80A9ED78  38 C0 00 03 */	li r6, 3
/* 80A9ED7C  4B 5A 93 71 */	bl getMySubstanceP__16dEvent_manager_cFiPCci
/* 80A9ED80  7C 7F 1B 79 */	or. r31, r3, r3
/* 80A9ED84  40 82 00 0C */	bne lbl_80A9ED90
/* 80A9ED88  38 60 00 01 */	li r3, 1
/* 80A9ED8C  48 00 00 30 */	b lbl_80A9EDBC
lbl_80A9ED90:
/* 80A9ED90  7F C3 F3 78 */	mr r3, r30
/* 80A9ED94  7F A4 EB 78 */	mr r4, r29
/* 80A9ED98  4B 5A 8F B5 */	bl getIsAddvance__16dEvent_manager_cFi
/* 80A9ED9C  2C 03 00 00 */	cmpwi r3, 0
/* 80A9EDA0  41 82 00 10 */	beq lbl_80A9EDB0
/* 80A9EDA4  7F 83 E3 78 */	mr r3, r28
/* 80A9EDA8  7F E4 FB 78 */	mr r4, r31
/* 80A9EDAC  48 00 00 29 */	bl _cutTutrialClear_Init__18daNpc_Pachi_Taro_cFRCi
lbl_80A9EDB0:
/* 80A9EDB0  7F 83 E3 78 */	mr r3, r28
/* 80A9EDB4  7F E4 FB 78 */	mr r4, r31
/* 80A9EDB8  48 00 01 05 */	bl _cutTutrialClear_Main__18daNpc_Pachi_Taro_cFRCi
lbl_80A9EDBC:
/* 80A9EDBC  39 61 00 20 */	addi r11, r1, 0x20
/* 80A9EDC0  4B 8C 34 65 */	bl _restgpr_28
/* 80A9EDC4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80A9EDC8  7C 08 03 A6 */	mtlr r0
/* 80A9EDCC  38 21 00 20 */	addi r1, r1, 0x20
/* 80A9EDD0  4E 80 00 20 */	blr 
