lbl_80098B44:
/* 80098B44  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80098B48  7C 08 02 A6 */	mflr r0
/* 80098B4C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80098B50  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80098B54  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80098B58  38 63 00 9C */	addi r3, r3, 0x9c
/* 80098B5C  38 80 00 61 */	li r4, 0x61
/* 80098B60  4B F9 A8 F1 */	bl setEmptyBottleItemIn__17dSv_player_item_cFUc
/* 80098B64  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80098B68  7C 08 03 A6 */	mtlr r0
/* 80098B6C  38 21 00 10 */	addi r1, r1, 0x10
/* 80098B70  4E 80 00 20 */	blr 
