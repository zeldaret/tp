lbl_80099768:
/* 80099768  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8009976C  7C 08 02 A6 */	mflr r0
/* 80099770  90 01 00 14 */	stw r0, 0x14(r1)
/* 80099774  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80099778  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8009977C  38 63 00 CC */	addi r3, r3, 0xcc
/* 80099780  38 80 00 07 */	li r4, 7
/* 80099784  4B F9 A7 45 */	bl isFirstBit__21dSv_player_get_item_cCFUc
/* 80099788  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8009978C  7C 08 03 A6 */	mtlr r0
/* 80099790  38 21 00 10 */	addi r1, r1, 0x10
/* 80099794  4E 80 00 20 */	blr 
