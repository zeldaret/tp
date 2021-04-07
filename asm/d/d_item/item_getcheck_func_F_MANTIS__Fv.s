lbl_8009B180:
/* 8009B180  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8009B184  7C 08 02 A6 */	mflr r0
/* 8009B188  90 01 00 14 */	stw r0, 0x14(r1)
/* 8009B18C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8009B190  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8009B194  38 63 00 CC */	addi r3, r3, 0xcc
/* 8009B198  38 80 00 CD */	li r4, 0xcd
/* 8009B19C  4B F9 8D 2D */	bl isFirstBit__21dSv_player_get_item_cCFUc
/* 8009B1A0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8009B1A4  7C 08 03 A6 */	mtlr r0
/* 8009B1A8  38 21 00 10 */	addi r1, r1, 0x10
/* 8009B1AC  4E 80 00 20 */	blr 
