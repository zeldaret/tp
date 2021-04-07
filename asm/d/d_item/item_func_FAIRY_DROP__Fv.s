lbl_80098E80:
/* 80098E80  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80098E84  7C 08 02 A6 */	mflr r0
/* 80098E88  90 01 00 14 */	stw r0, 0x14(r1)
/* 80098E8C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80098E90  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80098E94  38 63 00 9C */	addi r3, r3, 0x9c
/* 80098E98  38 80 00 73 */	li r4, 0x73
/* 80098E9C  4B F9 A5 B5 */	bl setEmptyBottleItemIn__17dSv_player_item_cFUc
/* 80098EA0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80098EA4  7C 08 03 A6 */	mtlr r0
/* 80098EA8  38 21 00 10 */	addi r1, r1, 0x10
/* 80098EAC  4E 80 00 20 */	blr 
