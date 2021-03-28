lbl_80098B18:
/* 80098B18  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80098B1C  7C 08 02 A6 */	mflr r0
/* 80098B20  90 01 00 14 */	stw r0, 0x14(r1)
/* 80098B24  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80098B28  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80098B2C  38 63 00 9C */	addi r3, r3, 0x9c
/* 80098B30  4B F9 A9 65 */	bl setEmptyBottle__17dSv_player_item_cFv
/* 80098B34  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80098B38  7C 08 03 A6 */	mtlr r0
/* 80098B3C  38 21 00 10 */	addi r1, r1, 0x10
/* 80098B40  4E 80 00 20 */	blr 
