lbl_80099678:
/* 80099678  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8009967C  7C 08 02 A6 */	mflr r0
/* 80099680  90 01 00 14 */	stw r0, 0x14(r1)
/* 80099684  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80099688  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8009968C  38 63 00 CC */	addi r3, r3, 0xcc
/* 80099690  38 80 00 02 */	li r4, 2
/* 80099694  4B F9 A8 35 */	bl isFirstBit__21dSv_player_get_item_cCFUc
/* 80099698  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8009969C  7C 08 03 A6 */	mtlr r0
/* 800996A0  38 21 00 10 */	addi r1, r1, 0x10
/* 800996A4  4E 80 00 20 */	blr 
