lbl_800996D8:
/* 800996D8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800996DC  7C 08 02 A6 */	mflr r0
/* 800996E0  90 01 00 14 */	stw r0, 0x14(r1)
/* 800996E4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800996E8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 800996EC  38 63 00 CC */	addi r3, r3, 0xcc
/* 800996F0  38 80 00 04 */	li r4, 4
/* 800996F4  4B F9 A7 D5 */	bl isFirstBit__21dSv_player_get_item_cCFUc
/* 800996F8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800996FC  7C 08 03 A6 */	mtlr r0
/* 80099700  38 21 00 10 */	addi r1, r1, 0x10
/* 80099704  4E 80 00 20 */	blr 
