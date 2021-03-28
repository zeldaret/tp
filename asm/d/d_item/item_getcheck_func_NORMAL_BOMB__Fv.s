lbl_8009A850:
/* 8009A850  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8009A854  7C 08 02 A6 */	mflr r0
/* 8009A858  90 01 00 14 */	stw r0, 0x14(r1)
/* 8009A85C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8009A860  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8009A864  38 63 00 CC */	addi r3, r3, 0xcc
/* 8009A868  38 80 00 70 */	li r4, 0x70
/* 8009A86C  4B F9 96 5D */	bl isFirstBit__21dSv_player_get_item_cCFUc
/* 8009A870  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8009A874  7C 08 03 A6 */	mtlr r0
/* 8009A878  38 21 00 10 */	addi r1, r1, 0x10
/* 8009A87C  4E 80 00 20 */	blr 
