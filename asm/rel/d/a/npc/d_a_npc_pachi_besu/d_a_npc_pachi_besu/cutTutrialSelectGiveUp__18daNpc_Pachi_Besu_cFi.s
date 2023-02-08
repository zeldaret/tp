lbl_80A95270:
/* 80A95270  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80A95274  7C 08 02 A6 */	mflr r0
/* 80A95278  90 01 00 24 */	stw r0, 0x24(r1)
/* 80A9527C  39 61 00 20 */	addi r11, r1, 0x20
/* 80A95280  4B 8C CF 59 */	bl _savegpr_28
/* 80A95284  7C 7C 1B 78 */	mr r28, r3
/* 80A95288  7C 9D 23 78 */	mr r29, r4
/* 80A9528C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80A95290  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80A95294  3B C3 4F F8 */	addi r30, r3, 0x4ff8
/* 80A95298  7F C3 F3 78 */	mr r3, r30
/* 80A9529C  3C A0 80 A9 */	lis r5, d_a_npc_pachi_besu__stringBase0@ha /* 0x80A96B60@ha */
/* 80A952A0  38 A5 6B 60 */	addi r5, r5, d_a_npc_pachi_besu__stringBase0@l /* 0x80A96B60@l */
/* 80A952A4  38 A5 00 D8 */	addi r5, r5, 0xd8
/* 80A952A8  38 C0 00 03 */	li r6, 3
/* 80A952AC  4B 5B 2E 41 */	bl getMySubstanceP__16dEvent_manager_cFiPCci
/* 80A952B0  7C 7F 1B 79 */	or. r31, r3, r3
/* 80A952B4  40 82 00 0C */	bne lbl_80A952C0
/* 80A952B8  38 60 00 01 */	li r3, 1
/* 80A952BC  48 00 00 30 */	b lbl_80A952EC
lbl_80A952C0:
/* 80A952C0  7F C3 F3 78 */	mr r3, r30
/* 80A952C4  7F A4 EB 78 */	mr r4, r29
/* 80A952C8  4B 5B 2A 85 */	bl getIsAddvance__16dEvent_manager_cFi
/* 80A952CC  2C 03 00 00 */	cmpwi r3, 0
/* 80A952D0  41 82 00 10 */	beq lbl_80A952E0
/* 80A952D4  7F 83 E3 78 */	mr r3, r28
/* 80A952D8  7F E4 FB 78 */	mr r4, r31
/* 80A952DC  48 00 00 29 */	bl _cutTutrialSelectGiveUp_Init__18daNpc_Pachi_Besu_cFRCi
lbl_80A952E0:
/* 80A952E0  7F 83 E3 78 */	mr r3, r28
/* 80A952E4  7F E4 FB 78 */	mr r4, r31
/* 80A952E8  48 00 00 25 */	bl _cutTutrialSelectGiveUp_Main__18daNpc_Pachi_Besu_cFRCi
lbl_80A952EC:
/* 80A952EC  39 61 00 20 */	addi r11, r1, 0x20
/* 80A952F0  4B 8C CF 35 */	bl _restgpr_28
/* 80A952F4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80A952F8  7C 08 03 A6 */	mtlr r0
/* 80A952FC  38 21 00 20 */	addi r1, r1, 0x20
/* 80A95300  4E 80 00 20 */	blr 
