lbl_80033494:
/* 80033494  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80033498  7C 08 02 A6 */	mflr r0
/* 8003349C  90 01 00 24 */	stw r0, 0x24(r1)
/* 800334A0  39 61 00 20 */	addi r11, r1, 0x20
/* 800334A4  48 32 ED 39 */	bl _savegpr_29
/* 800334A8  3B A0 00 00 */	li r29, 0
/* 800334AC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800334B0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 800334B4  3B E3 00 9C */	addi r31, r3, 0x9c
lbl_800334B8:
/* 800334B8  7F E3 FB 78 */	mr r3, r31
/* 800334BC  38 1D 00 0B */	addi r0, r29, 0xb
/* 800334C0  54 1E 06 3E */	clrlwi r30, r0, 0x18
/* 800334C4  7F C4 F3 78 */	mr r4, r30
/* 800334C8  38 A0 00 01 */	li r5, 1
/* 800334CC  4B FF FB 65 */	bl getItem__17dSv_player_item_cCFib
/* 800334D0  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 800334D4  28 00 00 FF */	cmplwi r0, 0xff
/* 800334D8  40 82 00 18 */	bne lbl_800334F0
/* 800334DC  7F E3 FB 78 */	mr r3, r31
/* 800334E0  7F C4 F3 78 */	mr r4, r30
/* 800334E4  38 A0 00 60 */	li r5, 0x60
/* 800334E8  4B FF FA D1 */	bl setItem__17dSv_player_item_cFiUc
/* 800334EC  48 00 00 10 */	b lbl_800334FC
lbl_800334F0:
/* 800334F0  3B BD 00 01 */	addi r29, r29, 1
/* 800334F4  2C 1D 00 04 */	cmpwi r29, 4
/* 800334F8  41 80 FF C0 */	blt lbl_800334B8
lbl_800334FC:
/* 800334FC  39 61 00 20 */	addi r11, r1, 0x20
/* 80033500  48 32 ED 29 */	bl _restgpr_29
/* 80033504  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80033508  7C 08 03 A6 */	mtlr r0
/* 8003350C  38 21 00 20 */	addi r1, r1, 0x20
/* 80033510  4E 80 00 20 */	blr 
