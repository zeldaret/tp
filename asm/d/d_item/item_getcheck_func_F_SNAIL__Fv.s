lbl_8009B240:
/* 8009B240  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8009B244  7C 08 02 A6 */	mflr r0
/* 8009B248  90 01 00 14 */	stw r0, 0x14(r1)
/* 8009B24C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8009B250  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8009B254  38 63 00 CC */	addi r3, r3, 0xcc
/* 8009B258  38 80 00 D1 */	li r4, 0xd1
/* 8009B25C  4B F9 8C 6D */	bl isFirstBit__21dSv_player_get_item_cCFUc
/* 8009B260  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8009B264  7C 08 03 A6 */	mtlr r0
/* 8009B268  38 21 00 10 */	addi r1, r1, 0x10
/* 8009B26C  4E 80 00 20 */	blr 
