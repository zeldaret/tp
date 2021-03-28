lbl_8009A2D8:
/* 8009A2D8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8009A2DC  7C 08 02 A6 */	mflr r0
/* 8009A2E0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8009A2E4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8009A2E8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8009A2EC  38 63 00 CC */	addi r3, r3, 0xcc
/* 8009A2F0  38 80 00 53 */	li r4, 0x53
/* 8009A2F4  4B F9 9B D5 */	bl isFirstBit__21dSv_player_get_item_cCFUc
/* 8009A2F8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8009A2FC  7C 08 03 A6 */	mtlr r0
/* 8009A300  38 21 00 10 */	addi r1, r1, 0x10
/* 8009A304  4E 80 00 20 */	blr 
