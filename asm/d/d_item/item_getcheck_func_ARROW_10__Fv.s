lbl_80099868:
/* 80099868  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8009986C  7C 08 02 A6 */	mflr r0
/* 80099870  90 01 00 14 */	stw r0, 0x14(r1)
/* 80099874  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80099878  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8009987C  38 63 00 CC */	addi r3, r3, 0xcc
/* 80099880  38 80 00 0E */	li r4, 0xe
/* 80099884  4B F9 A6 45 */	bl isFirstBit__21dSv_player_get_item_cCFUc
/* 80099888  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8009988C  7C 08 03 A6 */	mtlr r0
/* 80099890  38 21 00 10 */	addi r1, r1, 0x10
/* 80099894  4E 80 00 20 */	blr 
