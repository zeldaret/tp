lbl_8009A948:
/* 8009A948  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8009A94C  7C 08 02 A6 */	mflr r0
/* 8009A950  90 01 00 14 */	stw r0, 0x14(r1)
/* 8009A954  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8009A958  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8009A95C  38 63 00 CC */	addi r3, r3, 0xcc
/* 8009A960  38 80 00 75 */	li r4, 0x75
/* 8009A964  4B F9 95 65 */	bl isFirstBit__21dSv_player_get_item_cCFUc
/* 8009A968  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8009A96C  7C 08 03 A6 */	mtlr r0
/* 8009A970  38 21 00 10 */	addi r1, r1, 0x10
/* 8009A974  4E 80 00 20 */	blr 
