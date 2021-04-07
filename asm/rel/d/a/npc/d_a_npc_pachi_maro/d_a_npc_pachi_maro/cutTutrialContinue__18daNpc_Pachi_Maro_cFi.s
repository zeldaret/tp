lbl_80A9A360:
/* 80A9A360  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80A9A364  7C 08 02 A6 */	mflr r0
/* 80A9A368  90 01 00 24 */	stw r0, 0x24(r1)
/* 80A9A36C  39 61 00 20 */	addi r11, r1, 0x20
/* 80A9A370  4B 8C 7E 69 */	bl _savegpr_28
/* 80A9A374  7C 7C 1B 78 */	mr r28, r3
/* 80A9A378  7C 9D 23 78 */	mr r29, r4
/* 80A9A37C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80A9A380  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80A9A384  3B C3 4F F8 */	addi r30, r3, 0x4ff8
/* 80A9A388  7F C3 F3 78 */	mr r3, r30
/* 80A9A38C  3C A0 80 AA */	lis r5, d_a_npc_pachi_maro__stringBase0@ha /* 0x80A9B988@ha */
/* 80A9A390  38 A5 B9 88 */	addi r5, r5, d_a_npc_pachi_maro__stringBase0@l /* 0x80A9B988@l */
/* 80A9A394  38 A5 00 E9 */	addi r5, r5, 0xe9
/* 80A9A398  38 C0 00 03 */	li r6, 3
/* 80A9A39C  4B 5A DD 51 */	bl getMySubstanceP__16dEvent_manager_cFiPCci
/* 80A9A3A0  7C 7F 1B 79 */	or. r31, r3, r3
/* 80A9A3A4  40 82 00 0C */	bne lbl_80A9A3B0
/* 80A9A3A8  38 60 00 01 */	li r3, 1
/* 80A9A3AC  48 00 00 30 */	b lbl_80A9A3DC
lbl_80A9A3B0:
/* 80A9A3B0  7F C3 F3 78 */	mr r3, r30
/* 80A9A3B4  7F A4 EB 78 */	mr r4, r29
/* 80A9A3B8  4B 5A D9 95 */	bl getIsAddvance__16dEvent_manager_cFi
/* 80A9A3BC  2C 03 00 00 */	cmpwi r3, 0
/* 80A9A3C0  41 82 00 10 */	beq lbl_80A9A3D0
/* 80A9A3C4  7F 83 E3 78 */	mr r3, r28
/* 80A9A3C8  7F E4 FB 78 */	mr r4, r31
/* 80A9A3CC  48 00 00 29 */	bl _cutTutrialContinue_Init__18daNpc_Pachi_Maro_cFRCi
lbl_80A9A3D0:
/* 80A9A3D0  7F 83 E3 78 */	mr r3, r28
/* 80A9A3D4  7F E4 FB 78 */	mr r4, r31
/* 80A9A3D8  48 00 00 25 */	bl _cutTutrialContinue_Main__18daNpc_Pachi_Maro_cFRCi
lbl_80A9A3DC:
/* 80A9A3DC  39 61 00 20 */	addi r11, r1, 0x20
/* 80A9A3E0  4B 8C 7E 45 */	bl _restgpr_28
/* 80A9A3E4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80A9A3E8  7C 08 03 A6 */	mtlr r0
/* 80A9A3EC  38 21 00 20 */	addi r1, r1, 0x20
/* 80A9A3F0  4E 80 00 20 */	blr 
