lbl_80098FB0:
/* 80098FB0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80098FB4  7C 08 02 A6 */	mflr r0
/* 80098FB8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80098FBC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80098FC0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80098FC4  38 63 00 9C */	addi r3, r3, 0x9c
/* 80098FC8  38 80 00 78 */	li r4, 0x78
/* 80098FCC  4B F9 A4 85 */	bl setEmptyBottleItemIn__17dSv_player_item_cFUc
/* 80098FD0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80098FD4  7C 08 03 A6 */	mtlr r0
/* 80098FD8  38 21 00 10 */	addi r1, r1, 0x10
/* 80098FDC  4E 80 00 20 */	blr 
