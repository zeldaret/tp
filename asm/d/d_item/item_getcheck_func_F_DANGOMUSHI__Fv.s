lbl_8009B120:
/* 8009B120  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8009B124  7C 08 02 A6 */	mflr r0
/* 8009B128  90 01 00 14 */	stw r0, 0x14(r1)
/* 8009B12C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8009B130  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8009B134  38 63 00 CC */	addi r3, r3, 0xcc
/* 8009B138  38 80 00 CB */	li r4, 0xcb
/* 8009B13C  4B F9 8D 8D */	bl isFirstBit__21dSv_player_get_item_cCFUc
/* 8009B140  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8009B144  7C 08 03 A6 */	mtlr r0
/* 8009B148  38 21 00 10 */	addi r1, r1, 0x10
/* 8009B14C  4E 80 00 20 */	blr 
