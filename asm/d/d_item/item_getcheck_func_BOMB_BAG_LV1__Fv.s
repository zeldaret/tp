lbl_8009A278:
/* 8009A278  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8009A27C  7C 08 02 A6 */	mflr r0
/* 8009A280  90 01 00 14 */	stw r0, 0x14(r1)
/* 8009A284  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8009A288  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8009A28C  38 63 00 CC */	addi r3, r3, 0xcc
/* 8009A290  38 80 00 50 */	li r4, 0x50
/* 8009A294  4B F9 9C 35 */	bl isFirstBit__21dSv_player_get_item_cCFUc
/* 8009A298  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8009A29C  7C 08 03 A6 */	mtlr r0
/* 8009A2A0  38 21 00 10 */	addi r1, r1, 0x10
/* 8009A2A4  4E 80 00 20 */	blr 
