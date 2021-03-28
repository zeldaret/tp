lbl_80A9A438:
/* 80A9A438  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80A9A43C  7C 08 02 A6 */	mflr r0
/* 80A9A440  90 01 00 24 */	stw r0, 0x24(r1)
/* 80A9A444  39 61 00 20 */	addi r11, r1, 0x20
/* 80A9A448  4B 8C 7D 90 */	b _savegpr_28
/* 80A9A44C  7C 7C 1B 78 */	mr r28, r3
/* 80A9A450  7C 9D 23 78 */	mr r29, r4
/* 80A9A454  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80A9A458  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80A9A45C  3B C3 4F F8 */	addi r30, r3, 0x4ff8
/* 80A9A460  7F C3 F3 78 */	mr r3, r30
/* 80A9A464  3C A0 80 AA */	lis r5, struct_80A9B988+0x0@ha
/* 80A9A468  38 A5 B9 88 */	addi r5, r5, struct_80A9B988+0x0@l
/* 80A9A46C  38 A5 00 E9 */	addi r5, r5, 0xe9
/* 80A9A470  38 C0 00 03 */	li r6, 3
/* 80A9A474  4B 5A DC 78 */	b getMySubstanceP__16dEvent_manager_cFiPCci
/* 80A9A478  7C 7F 1B 79 */	or. r31, r3, r3
/* 80A9A47C  40 82 00 0C */	bne lbl_80A9A488
/* 80A9A480  38 60 00 01 */	li r3, 1
/* 80A9A484  48 00 00 30 */	b lbl_80A9A4B4
lbl_80A9A488:
/* 80A9A488  7F C3 F3 78 */	mr r3, r30
/* 80A9A48C  7F A4 EB 78 */	mr r4, r29
/* 80A9A490  4B 5A D8 BC */	b getIsAddvance__16dEvent_manager_cFi
/* 80A9A494  2C 03 00 00 */	cmpwi r3, 0
/* 80A9A498  41 82 00 10 */	beq lbl_80A9A4A8
/* 80A9A49C  7F 83 E3 78 */	mr r3, r28
/* 80A9A4A0  7F E4 FB 78 */	mr r4, r31
/* 80A9A4A4  48 00 00 29 */	bl _cutTutrialCaution_Init__18daNpc_Pachi_Maro_cFRCi
lbl_80A9A4A8:
/* 80A9A4A8  7F 83 E3 78 */	mr r3, r28
/* 80A9A4AC  7F E4 FB 78 */	mr r4, r31
/* 80A9A4B0  48 00 00 25 */	bl _cutTutrialCaution_Main__18daNpc_Pachi_Maro_cFRCi
lbl_80A9A4B4:
/* 80A9A4B4  39 61 00 20 */	addi r11, r1, 0x20
/* 80A9A4B8  4B 8C 7D 6C */	b _restgpr_28
/* 80A9A4BC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80A9A4C0  7C 08 03 A6 */	mtlr r0
/* 80A9A4C4  38 21 00 20 */	addi r1, r1, 0x20
/* 80A9A4C8  4E 80 00 20 */	blr 
