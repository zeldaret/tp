lbl_800992B8:
/* 800992B8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800992BC  7C 08 02 A6 */	mflr r0
/* 800992C0  90 01 00 14 */	stw r0, 0x14(r1)
/* 800992C4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800992C8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 800992CC  38 63 00 9C */	addi r3, r3, 0x9c
/* 800992D0  38 80 00 7B */	li r4, 0x7b
/* 800992D4  4B F9 A1 7D */	bl setEmptyBottleItemIn__17dSv_player_item_cFUc
/* 800992D8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800992DC  7C 08 03 A6 */	mtlr r0
/* 800992E0  38 21 00 10 */	addi r1, r1, 0x10
/* 800992E4  4E 80 00 20 */	blr 
