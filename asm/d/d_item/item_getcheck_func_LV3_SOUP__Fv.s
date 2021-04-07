lbl_8009AB18:
/* 8009AB18  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8009AB1C  7C 08 02 A6 */	mflr r0
/* 8009AB20  90 01 00 14 */	stw r0, 0x14(r1)
/* 8009AB24  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8009AB28  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8009AB2C  38 63 00 CC */	addi r3, r3, 0xcc
/* 8009AB30  38 80 00 7F */	li r4, 0x7f
/* 8009AB34  4B F9 93 95 */	bl isFirstBit__21dSv_player_get_item_cCFUc
/* 8009AB38  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8009AB3C  7C 08 03 A6 */	mtlr r0
/* 8009AB40  38 21 00 10 */	addi r1, r1, 0x10
/* 8009AB44  4E 80 00 20 */	blr 
