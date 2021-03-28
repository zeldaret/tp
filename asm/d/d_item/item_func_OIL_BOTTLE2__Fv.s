lbl_80098C94:
/* 80098C94  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80098C98  7C 08 02 A6 */	mflr r0
/* 80098C9C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80098CA0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80098CA4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80098CA8  38 63 00 9C */	addi r3, r3, 0x9c
/* 80098CAC  38 80 00 66 */	li r4, 0x66
/* 80098CB0  4B F9 A7 A1 */	bl setEmptyBottleItemIn__17dSv_player_item_cFUc
/* 80098CB4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80098CB8  7C 08 03 A6 */	mtlr r0
/* 80098CBC  38 21 00 10 */	addi r1, r1, 0x10
/* 80098CC0  4E 80 00 20 */	blr 
