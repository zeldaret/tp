lbl_800997D8:
/* 800997D8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800997DC  7C 08 02 A6 */	mflr r0
/* 800997E0  90 01 00 14 */	stw r0, 0x14(r1)
/* 800997E4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 800997E8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 800997EC  38 63 00 CC */	addi r3, r3, 0xcc
/* 800997F0  38 80 00 0B */	li r4, 0xb
/* 800997F4  4B F9 A6 D5 */	bl isFirstBit__21dSv_player_get_item_cCFUc
/* 800997F8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800997FC  7C 08 03 A6 */	mtlr r0
/* 80099800  38 21 00 10 */	addi r1, r1, 0x10
/* 80099804  4E 80 00 20 */	blr 
