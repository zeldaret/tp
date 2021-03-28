lbl_801EEA84:
/* 801EEA84  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801EEA88  7C 08 02 A6 */	mflr r0
/* 801EEA8C  90 01 00 24 */	stw r0, 0x24(r1)
/* 801EEA90  39 61 00 20 */	addi r11, r1, 0x20
/* 801EEA94  48 17 37 49 */	bl _savegpr_29
/* 801EEA98  7C BD 2B 78 */	mr r29, r5
/* 801EEA9C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 801EEAA0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 801EEAA4  3B C3 00 9C */	addi r30, r3, 0x9c
/* 801EEAA8  7F C3 F3 78 */	mr r3, r30
/* 801EEAAC  38 A0 00 00 */	li r5, 0
/* 801EEAB0  4B E4 45 81 */	bl getItem__17dSv_player_item_cCFib
/* 801EEAB4  7C 7F 1B 78 */	mr r31, r3
/* 801EEAB8  7F C3 F3 78 */	mr r3, r30
/* 801EEABC  57 A4 06 3E */	clrlwi r4, r29, 0x18
/* 801EEAC0  38 A0 00 00 */	li r5, 0
/* 801EEAC4  4B E4 45 6D */	bl getItem__17dSv_player_item_cCFib
/* 801EEAC8  7F E3 FB 78 */	mr r3, r31
/* 801EEACC  39 61 00 20 */	addi r11, r1, 0x20
/* 801EEAD0  48 17 37 59 */	bl _restgpr_29
/* 801EEAD4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801EEAD8  7C 08 03 A6 */	mtlr r0
/* 801EEADC  38 21 00 20 */	addi r1, r1, 0x20
/* 801EEAE0  4E 80 00 20 */	blr 
