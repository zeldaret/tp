lbl_80099708:
/* 80099708  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8009970C  7C 08 02 A6 */	mflr r0
/* 80099710  90 01 00 14 */	stw r0, 0x14(r1)
/* 80099714  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80099718  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8009971C  38 63 00 CC */	addi r3, r3, 0xcc
/* 80099720  38 80 00 05 */	li r4, 5
/* 80099724  4B F9 A7 A5 */	bl isFirstBit__21dSv_player_get_item_cCFUc
/* 80099728  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8009972C  7C 08 03 A6 */	mtlr r0
/* 80099730  38 21 00 10 */	addi r1, r1, 0x10
/* 80099734  4E 80 00 20 */	blr 
