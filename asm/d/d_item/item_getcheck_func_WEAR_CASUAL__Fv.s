lbl_80099C64:
/* 80099C64  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80099C68  7C 08 02 A6 */	mflr r0
/* 80099C6C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80099C70  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80099C74  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80099C78  38 63 00 CC */	addi r3, r3, 0xcc
/* 80099C7C  38 80 00 2E */	li r4, 0x2e
/* 80099C80  4B F9 A2 49 */	bl isFirstBit__21dSv_player_get_item_cCFUc
/* 80099C84  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80099C88  7C 08 03 A6 */	mtlr r0
/* 80099C8C  38 21 00 10 */	addi r1, r1, 0x10
/* 80099C90  4E 80 00 20 */	blr 
