lbl_801DC340:
/* 801DC340  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801DC344  7C 08 02 A6 */	mflr r0
/* 801DC348  90 01 00 24 */	stw r0, 0x24(r1)
/* 801DC34C  39 61 00 20 */	addi r11, r1, 0x20
/* 801DC350  48 18 5E 85 */	bl _savegpr_27
/* 801DC354  7C 7B 1B 78 */	mr r27, r3
/* 801DC358  7C 9C 23 78 */	mr r28, r4
/* 801DC35C  7C BD 2B 78 */	mr r29, r5
/* 801DC360  7C DE 33 78 */	mr r30, r6
/* 801DC364  7C FF 3B 78 */	mr r31, r7
/* 801DC368  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 801DC36C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 801DC370  38 63 00 9C */	addi r3, r3, 0x9c
/* 801DC374  54 84 06 3E */	clrlwi r4, r4, 0x18
/* 801DC378  38 A0 00 00 */	li r5, 0
/* 801DC37C  4B E5 6C B5 */	bl getItem__17dSv_player_item_cCFib
/* 801DC380  7C 64 1B 78 */	mr r4, r3
/* 801DC384  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 801DC388  28 00 00 FF */	cmplwi r0, 0xff
/* 801DC38C  40 82 00 0C */	bne lbl_801DC398
/* 801DC390  38 60 00 00 */	li r3, 0
/* 801DC394  48 00 00 1C */	b lbl_801DC3B0
lbl_801DC398:
/* 801DC398  7F 63 DB 78 */	mr r3, r27
/* 801DC39C  7F A5 EB 78 */	mr r5, r29
/* 801DC3A0  7F C6 F3 78 */	mr r6, r30
/* 801DC3A4  7F E7 FB 78 */	mr r7, r31
/* 801DC3A8  7F 88 E3 78 */	mr r8, r28
/* 801DC3AC  48 00 00 1D */	bl openExplainDmap__19dMenu_ItemExplain_cFUcUcUcbUc
lbl_801DC3B0:
/* 801DC3B0  39 61 00 20 */	addi r11, r1, 0x20
/* 801DC3B4  48 18 5E 6D */	bl _restgpr_27
/* 801DC3B8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801DC3BC  7C 08 03 A6 */	mtlr r0
/* 801DC3C0  38 21 00 20 */	addi r1, r1, 0x20
/* 801DC3C4  4E 80 00 20 */	blr 
