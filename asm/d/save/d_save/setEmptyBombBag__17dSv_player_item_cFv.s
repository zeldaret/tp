lbl_80033A88:
/* 80033A88  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80033A8C  7C 08 02 A6 */	mflr r0
/* 80033A90  90 01 00 24 */	stw r0, 0x24(r1)
/* 80033A94  39 61 00 20 */	addi r11, r1, 0x20
/* 80033A98  48 32 E7 45 */	bl _savegpr_29
/* 80033A9C  3B A0 00 00 */	li r29, 0
/* 80033AA0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80033AA4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80033AA8  3B E3 00 9C */	addi r31, r3, 0x9c
lbl_80033AAC:
/* 80033AAC  7F E3 FB 78 */	mr r3, r31
/* 80033AB0  38 1D 00 0F */	addi r0, r29, 0xf
/* 80033AB4  54 1E 06 3E */	clrlwi r30, r0, 0x18
/* 80033AB8  7F C4 F3 78 */	mr r4, r30
/* 80033ABC  38 A0 00 01 */	li r5, 1
/* 80033AC0  4B FF F5 71 */	bl getItem__17dSv_player_item_cCFib
/* 80033AC4  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 80033AC8  28 00 00 FF */	cmplwi r0, 0xff
/* 80033ACC  40 82 00 18 */	bne lbl_80033AE4
/* 80033AD0  7F E3 FB 78 */	mr r3, r31
/* 80033AD4  7F C4 F3 78 */	mr r4, r30
/* 80033AD8  38 A0 00 50 */	li r5, 0x50
/* 80033ADC  4B FF F4 DD */	bl setItem__17dSv_player_item_cFiUc
/* 80033AE0  48 00 00 10 */	b lbl_80033AF0
lbl_80033AE4:
/* 80033AE4  3B BD 00 01 */	addi r29, r29, 1
/* 80033AE8  2C 1D 00 03 */	cmpwi r29, 3
/* 80033AEC  41 80 FF C0 */	blt lbl_80033AAC
lbl_80033AF0:
/* 80033AF0  39 61 00 20 */	addi r11, r1, 0x20
/* 80033AF4  48 32 E7 35 */	bl _restgpr_29
/* 80033AF8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80033AFC  7C 08 03 A6 */	mtlr r0
/* 80033B00  38 21 00 20 */	addi r1, r1, 0x20
/* 80033B04  4E 80 00 20 */	blr 
