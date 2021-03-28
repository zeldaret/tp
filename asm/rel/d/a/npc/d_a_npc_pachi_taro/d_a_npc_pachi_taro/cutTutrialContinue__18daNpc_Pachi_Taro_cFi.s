lbl_80AA0108:
/* 80AA0108  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80AA010C  7C 08 02 A6 */	mflr r0
/* 80AA0110  90 01 00 24 */	stw r0, 0x24(r1)
/* 80AA0114  39 61 00 20 */	addi r11, r1, 0x20
/* 80AA0118  4B 8C 20 C0 */	b _savegpr_28
/* 80AA011C  7C 7C 1B 78 */	mr r28, r3
/* 80AA0120  7C 9D 23 78 */	mr r29, r4
/* 80AA0124  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80AA0128  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80AA012C  3B C3 4F F8 */	addi r30, r3, 0x4ff8
/* 80AA0130  7F C3 F3 78 */	mr r3, r30
/* 80AA0134  3C A0 80 AA */	lis r5, struct_80AA1814+0x0@ha
/* 80AA0138  38 A5 18 14 */	addi r5, r5, struct_80AA1814+0x0@l
/* 80AA013C  38 A5 00 EF */	addi r5, r5, 0xef
/* 80AA0140  38 C0 00 03 */	li r6, 3
/* 80AA0144  4B 5A 7F A8 */	b getMySubstanceP__16dEvent_manager_cFiPCci
/* 80AA0148  7C 7F 1B 79 */	or. r31, r3, r3
/* 80AA014C  40 82 00 0C */	bne lbl_80AA0158
/* 80AA0150  38 60 00 01 */	li r3, 1
/* 80AA0154  48 00 00 30 */	b lbl_80AA0184
lbl_80AA0158:
/* 80AA0158  7F C3 F3 78 */	mr r3, r30
/* 80AA015C  7F A4 EB 78 */	mr r4, r29
/* 80AA0160  4B 5A 7B EC */	b getIsAddvance__16dEvent_manager_cFi
/* 80AA0164  2C 03 00 00 */	cmpwi r3, 0
/* 80AA0168  41 82 00 10 */	beq lbl_80AA0178
/* 80AA016C  7F 83 E3 78 */	mr r3, r28
/* 80AA0170  7F E4 FB 78 */	mr r4, r31
/* 80AA0174  48 00 00 29 */	bl _cutTutrialContinue_Init__18daNpc_Pachi_Taro_cFRCi
lbl_80AA0178:
/* 80AA0178  7F 83 E3 78 */	mr r3, r28
/* 80AA017C  7F E4 FB 78 */	mr r4, r31
/* 80AA0180  48 00 00 25 */	bl _cutTutrialContinue_Main__18daNpc_Pachi_Taro_cFRCi
lbl_80AA0184:
/* 80AA0184  39 61 00 20 */	addi r11, r1, 0x20
/* 80AA0188  4B 8C 20 9C */	b _restgpr_28
/* 80AA018C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80AA0190  7C 08 03 A6 */	mtlr r0
/* 80AA0194  38 21 00 20 */	addi r1, r1, 0x20
/* 80AA0198  4E 80 00 20 */	blr 
