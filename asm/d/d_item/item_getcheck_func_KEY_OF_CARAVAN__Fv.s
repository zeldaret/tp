lbl_8009B618:
/* 8009B618  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8009B61C  7C 08 02 A6 */	mflr r0
/* 8009B620  90 01 00 14 */	stw r0, 0x14(r1)
/* 8009B624  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8009B628  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8009B62C  38 63 00 CC */	addi r3, r3, 0xcc
/* 8009B630  38 80 00 FC */	li r4, 0xfc
/* 8009B634  4B F9 88 95 */	bl isFirstBit__21dSv_player_get_item_cCFUc
/* 8009B638  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8009B63C  7C 08 03 A6 */	mtlr r0
/* 8009B640  38 21 00 10 */	addi r1, r1, 0x10
/* 8009B644  4E 80 00 20 */	blr 
