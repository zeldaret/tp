lbl_80A955B8:
/* 80A955B8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80A955BC  7C 08 02 A6 */	mflr r0
/* 80A955C0  90 01 00 24 */	stw r0, 0x24(r1)
/* 80A955C4  39 61 00 20 */	addi r11, r1, 0x20
/* 80A955C8  4B 8C CC 10 */	b _savegpr_28
/* 80A955CC  7C 7C 1B 78 */	mr r28, r3
/* 80A955D0  7C 9D 23 78 */	mr r29, r4
/* 80A955D4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80A955D8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80A955DC  3B C3 4F F8 */	addi r30, r3, 0x4ff8
/* 80A955E0  7F C3 F3 78 */	mr r3, r30
/* 80A955E4  3C A0 80 A9 */	lis r5, struct_80A96B60+0x0@ha
/* 80A955E8  38 A5 6B 60 */	addi r5, r5, struct_80A96B60+0x0@l
/* 80A955EC  38 A5 00 D8 */	addi r5, r5, 0xd8
/* 80A955F0  38 C0 00 03 */	li r6, 3
/* 80A955F4  4B 5B 2A F8 */	b getMySubstanceP__16dEvent_manager_cFiPCci
/* 80A955F8  7C 7F 1B 79 */	or. r31, r3, r3
/* 80A955FC  40 82 00 0C */	bne lbl_80A95608
/* 80A95600  38 60 00 01 */	li r3, 1
/* 80A95604  48 00 00 30 */	b lbl_80A95634
lbl_80A95608:
/* 80A95608  7F C3 F3 78 */	mr r3, r30
/* 80A9560C  7F A4 EB 78 */	mr r4, r29
/* 80A95610  4B 5B 27 3C */	b getIsAddvance__16dEvent_manager_cFi
/* 80A95614  2C 03 00 00 */	cmpwi r3, 0
/* 80A95618  41 82 00 10 */	beq lbl_80A95628
/* 80A9561C  7F 83 E3 78 */	mr r3, r28
/* 80A95620  7F E4 FB 78 */	mr r4, r31
/* 80A95624  48 00 00 29 */	bl _cutTutrialCaution_Init__18daNpc_Pachi_Besu_cFRCi
lbl_80A95628:
/* 80A95628  7F 83 E3 78 */	mr r3, r28
/* 80A9562C  7F E4 FB 78 */	mr r4, r31
/* 80A95630  48 00 00 25 */	bl _cutTutrialCaution_Main__18daNpc_Pachi_Besu_cFRCi
lbl_80A95634:
/* 80A95634  39 61 00 20 */	addi r11, r1, 0x20
/* 80A95638  4B 8C CB EC */	b _restgpr_28
/* 80A9563C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80A95640  7C 08 03 A6 */	mtlr r0
/* 80A95644  38 21 00 20 */	addi r1, r1, 0x20
/* 80A95648  4E 80 00 20 */	blr 
