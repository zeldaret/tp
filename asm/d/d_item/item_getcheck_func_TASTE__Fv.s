lbl_8009B518:
/* 8009B518  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8009B51C  7C 08 02 A6 */	mflr r0
/* 8009B520  90 01 00 14 */	stw r0, 0x14(r1)
/* 8009B524  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8009B528  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8009B52C  38 63 00 CC */	addi r3, r3, 0xcc
/* 8009B530  38 80 00 F5 */	li r4, 0xf5
/* 8009B534  4B F9 89 95 */	bl isFirstBit__21dSv_player_get_item_cCFUc
/* 8009B538  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8009B53C  7C 08 03 A6 */	mtlr r0
/* 8009B540  38 21 00 10 */	addi r1, r1, 0x10
/* 8009B544  4E 80 00 20 */	blr 
