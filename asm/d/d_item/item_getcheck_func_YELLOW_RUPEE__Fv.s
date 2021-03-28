lbl_800996A8:
/* 800996A8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800996AC  7C 08 02 A6 */	mflr r0
/* 800996B0  90 01 00 14 */	stw r0, 0x14(r1)
/* 800996B4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 800996B8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 800996BC  38 63 00 CC */	addi r3, r3, 0xcc
/* 800996C0  38 80 00 03 */	li r4, 3
/* 800996C4  4B F9 A8 05 */	bl isFirstBit__21dSv_player_get_item_cCFUc
/* 800996C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800996CC  7C 08 03 A6 */	mtlr r0
/* 800996D0  38 21 00 10 */	addi r1, r1, 0x10
/* 800996D4  4E 80 00 20 */	blr 
