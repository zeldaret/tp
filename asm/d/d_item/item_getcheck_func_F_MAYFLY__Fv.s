lbl_8009B360:
/* 8009B360  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8009B364  7C 08 02 A6 */	mflr r0
/* 8009B368  90 01 00 14 */	stw r0, 0x14(r1)
/* 8009B36C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8009B370  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8009B374  38 63 00 CC */	addi r3, r3, 0xcc
/* 8009B378  38 80 00 D7 */	li r4, 0xd7
/* 8009B37C  4B F9 8B 4D */	bl isFirstBit__21dSv_player_get_item_cCFUc
/* 8009B380  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8009B384  7C 08 03 A6 */	mtlr r0
/* 8009B388  38 21 00 10 */	addi r1, r1, 0x10
/* 8009B38C  4E 80 00 20 */	blr 
