lbl_80098F80:
/* 80098F80  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80098F84  7C 08 02 A6 */	mflr r0
/* 80098F88  90 01 00 14 */	stw r0, 0x14(r1)
/* 80098F8C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80098F90  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80098F94  38 63 00 9C */	addi r3, r3, 0x9c
/* 80098F98  38 80 00 77 */	li r4, 0x77
/* 80098F9C  4B F9 A4 B5 */	bl setEmptyBottleItemIn__17dSv_player_item_cFUc
/* 80098FA0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80098FA4  7C 08 03 A6 */	mtlr r0
/* 80098FA8  38 21 00 10 */	addi r1, r1, 0x10
/* 80098FAC  4E 80 00 20 */	blr 
