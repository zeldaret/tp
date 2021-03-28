lbl_80099070:
/* 80099070  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80099074  7C 08 02 A6 */	mflr r0
/* 80099078  90 01 00 14 */	stw r0, 0x14(r1)
/* 8009907C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80099080  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80099084  38 63 00 9C */	addi r3, r3, 0x9c
/* 80099088  38 80 00 7C */	li r4, 0x7c
/* 8009908C  4B F9 A3 C5 */	bl setEmptyBottleItemIn__17dSv_player_item_cFUc
/* 80099090  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80099094  7C 08 03 A6 */	mtlr r0
/* 80099098  38 21 00 10 */	addi r1, r1, 0x10
/* 8009909C  4E 80 00 20 */	blr 
