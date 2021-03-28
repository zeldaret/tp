lbl_80099738:
/* 80099738  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8009973C  7C 08 02 A6 */	mflr r0
/* 80099740  90 01 00 14 */	stw r0, 0x14(r1)
/* 80099744  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80099748  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8009974C  38 63 00 CC */	addi r3, r3, 0xcc
/* 80099750  38 80 00 06 */	li r4, 6
/* 80099754  4B F9 A7 75 */	bl isFirstBit__21dSv_player_get_item_cCFUc
/* 80099758  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8009975C  7C 08 03 A6 */	mtlr r0
/* 80099760  38 21 00 10 */	addi r1, r1, 0x10
/* 80099764  4E 80 00 20 */	blr 
