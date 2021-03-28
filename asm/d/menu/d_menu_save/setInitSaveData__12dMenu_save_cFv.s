lbl_801F6954:
/* 801F6954  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801F6958  7C 08 02 A6 */	mflr r0
/* 801F695C  90 01 00 24 */	stw r0, 0x24(r1)
/* 801F6960  39 61 00 20 */	addi r11, r1, 0x20
/* 801F6964  48 16 B8 79 */	bl _savegpr_29
/* 801F6968  7C 7D 1B 78 */	mr r29, r3
/* 801F696C  3B C0 00 00 */	li r30, 0
/* 801F6970  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 801F6974  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l
lbl_801F6978:
/* 801F6978  7F E3 FB 78 */	mr r3, r31
/* 801F697C  38 9D 01 D0 */	addi r4, r29, 0x1d0
/* 801F6980  7F C5 F3 78 */	mr r5, r30
/* 801F6984  4B E3 F2 4D */	bl initdata_to_card__10dSv_info_cFPci
/* 801F6988  38 7D 01 D0 */	addi r3, r29, 0x1d0
/* 801F698C  57 C4 06 3E */	clrlwi r4, r30, 0x18
/* 801F6990  4B E2 13 A9 */	bl mDoMemCdRWm_SetCheckSumGameData__FPUcUc
/* 801F6994  3B DE 00 01 */	addi r30, r30, 1
/* 801F6998  2C 1E 00 03 */	cmpwi r30, 3
/* 801F699C  41 80 FF DC */	blt lbl_801F6978
/* 801F69A0  39 61 00 20 */	addi r11, r1, 0x20
/* 801F69A4  48 16 B8 85 */	bl _restgpr_29
/* 801F69A8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801F69AC  7C 08 03 A6 */	mtlr r0
/* 801F69B0  38 21 00 20 */	addi r1, r1, 0x20
/* 801F69B4  4E 80 00 20 */	blr 
