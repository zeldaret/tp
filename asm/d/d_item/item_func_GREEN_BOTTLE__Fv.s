lbl_80098B74:
/* 80098B74  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80098B78  7C 08 02 A6 */	mflr r0
/* 80098B7C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80098B80  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80098B84  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80098B88  38 63 00 9C */	addi r3, r3, 0x9c
/* 80098B8C  38 80 00 62 */	li r4, 0x62
/* 80098B90  4B F9 A8 C1 */	bl setEmptyBottleItemIn__17dSv_player_item_cFUc
/* 80098B94  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80098B98  7C 08 03 A6 */	mtlr r0
/* 80098B9C  38 21 00 10 */	addi r1, r1, 0x10
/* 80098BA0  4E 80 00 20 */	blr 
