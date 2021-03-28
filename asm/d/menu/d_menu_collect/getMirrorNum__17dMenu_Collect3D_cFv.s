lbl_801B749C:
/* 801B749C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801B74A0  7C 08 02 A6 */	mflr r0
/* 801B74A4  90 01 00 24 */	stw r0, 0x24(r1)
/* 801B74A8  39 61 00 20 */	addi r11, r1, 0x20
/* 801B74AC  48 1A AD 31 */	bl _savegpr_29
/* 801B74B0  3B C0 00 00 */	li r30, 0
/* 801B74B4  3B A0 00 00 */	li r29, 0
/* 801B74B8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 801B74BC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 801B74C0  3B E3 01 00 */	addi r31, r3, 0x100
lbl_801B74C4:
/* 801B74C4  7F E3 FB 78 */	mr r3, r31
/* 801B74C8  57 A4 06 3E */	clrlwi r4, r29, 0x18
/* 801B74CC  4B E7 CD C5 */	bl isCollectMirror__20dSv_player_collect_cCFUc
/* 801B74D0  2C 03 00 00 */	cmpwi r3, 0
/* 801B74D4  41 82 00 14 */	beq lbl_801B74E8
/* 801B74D8  3B BD 00 01 */	addi r29, r29, 1
/* 801B74DC  2C 1D 00 04 */	cmpwi r29, 4
/* 801B74E0  3B DE 00 01 */	addi r30, r30, 1
/* 801B74E4  41 80 FF E0 */	blt lbl_801B74C4
lbl_801B74E8:
/* 801B74E8  7F C3 F3 78 */	mr r3, r30
/* 801B74EC  39 61 00 20 */	addi r11, r1, 0x20
/* 801B74F0  48 1A AD 39 */	bl _restgpr_29
/* 801B74F4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801B74F8  7C 08 03 A6 */	mtlr r0
/* 801B74FC  38 21 00 20 */	addi r1, r1, 0x20
/* 801B7500  4E 80 00 20 */	blr 
