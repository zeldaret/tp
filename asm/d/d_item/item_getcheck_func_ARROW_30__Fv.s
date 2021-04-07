lbl_800998C8:
/* 800998C8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800998CC  7C 08 02 A6 */	mflr r0
/* 800998D0  90 01 00 14 */	stw r0, 0x14(r1)
/* 800998D4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800998D8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 800998DC  38 63 00 CC */	addi r3, r3, 0xcc
/* 800998E0  38 80 00 10 */	li r4, 0x10
/* 800998E4  4B F9 A5 E5 */	bl isFirstBit__21dSv_player_get_item_cCFUc
/* 800998E8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800998EC  7C 08 03 A6 */	mtlr r0
/* 800998F0  38 21 00 10 */	addi r1, r1, 0x10
/* 800998F4  4E 80 00 20 */	blr 
