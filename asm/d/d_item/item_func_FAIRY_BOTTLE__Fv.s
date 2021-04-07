lbl_80098D54:
/* 80098D54  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80098D58  7C 08 02 A6 */	mflr r0
/* 80098D5C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80098D60  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80098D64  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80098D68  38 63 00 9C */	addi r3, r3, 0x9c
/* 80098D6C  38 80 00 6C */	li r4, 0x6c
/* 80098D70  4B F9 A6 E1 */	bl setEmptyBottleItemIn__17dSv_player_item_cFUc
/* 80098D74  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80098D78  7C 08 03 A6 */	mtlr r0
/* 80098D7C  38 21 00 10 */	addi r1, r1, 0x10
/* 80098D80  4E 80 00 20 */	blr 
