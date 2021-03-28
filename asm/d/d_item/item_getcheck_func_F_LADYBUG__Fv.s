lbl_8009B1E0:
/* 8009B1E0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8009B1E4  7C 08 02 A6 */	mflr r0
/* 8009B1E8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8009B1EC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8009B1F0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8009B1F4  38 63 00 CC */	addi r3, r3, 0xcc
/* 8009B1F8  38 80 00 CF */	li r4, 0xcf
/* 8009B1FC  4B F9 8C CD */	bl isFirstBit__21dSv_player_get_item_cCFUc
/* 8009B200  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8009B204  7C 08 03 A6 */	mtlr r0
/* 8009B208  38 21 00 10 */	addi r1, r1, 0x10
/* 8009B20C  4E 80 00 20 */	blr 
