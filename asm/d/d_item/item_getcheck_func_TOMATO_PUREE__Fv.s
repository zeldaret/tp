lbl_8009B4E8:
/* 8009B4E8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8009B4EC  7C 08 02 A6 */	mflr r0
/* 8009B4F0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8009B4F4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8009B4F8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8009B4FC  38 63 00 CC */	addi r3, r3, 0xcc
/* 8009B500  38 80 00 F4 */	li r4, 0xf4
/* 8009B504  4B F9 89 C5 */	bl isFirstBit__21dSv_player_get_item_cCFUc
/* 8009B508  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8009B50C  7C 08 03 A6 */	mtlr r0
/* 8009B510  38 21 00 10 */	addi r1, r1, 0x10
/* 8009B514  4E 80 00 20 */	blr 
