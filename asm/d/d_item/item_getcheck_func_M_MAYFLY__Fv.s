lbl_8009B330:
/* 8009B330  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8009B334  7C 08 02 A6 */	mflr r0
/* 8009B338  90 01 00 14 */	stw r0, 0x14(r1)
/* 8009B33C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8009B340  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8009B344  38 63 00 CC */	addi r3, r3, 0xcc
/* 8009B348  38 80 00 D6 */	li r4, 0xd6
/* 8009B34C  4B F9 8B 7D */	bl isFirstBit__21dSv_player_get_item_cCFUc
/* 8009B350  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8009B354  7C 08 03 A6 */	mtlr r0
/* 8009B358  38 21 00 10 */	addi r1, r1, 0x10
/* 8009B35C  4E 80 00 20 */	blr 
