lbl_80099808:
/* 80099808  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8009980C  7C 08 02 A6 */	mflr r0
/* 80099810  90 01 00 14 */	stw r0, 0x14(r1)
/* 80099814  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80099818  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8009981C  38 63 00 CC */	addi r3, r3, 0xcc
/* 80099820  38 80 00 0C */	li r4, 0xc
/* 80099824  4B F9 A6 A5 */	bl isFirstBit__21dSv_player_get_item_cCFUc
/* 80099828  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8009982C  7C 08 03 A6 */	mtlr r0
/* 80099830  38 21 00 10 */	addi r1, r1, 0x10
/* 80099834  4E 80 00 20 */	blr 
