lbl_80098D24:
/* 80098D24  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80098D28  7C 08 02 A6 */	mflr r0
/* 80098D2C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80098D30  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80098D34  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80098D38  38 63 00 9C */	addi r3, r3, 0x9c
/* 80098D3C  38 80 00 6B */	li r4, 0x6b
/* 80098D40  4B F9 A7 11 */	bl setEmptyBottleItemIn__17dSv_player_item_cFUc
/* 80098D44  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80098D48  7C 08 03 A6 */	mtlr r0
/* 80098D4C  38 21 00 10 */	addi r1, r1, 0x10
/* 80098D50  4E 80 00 20 */	blr 
