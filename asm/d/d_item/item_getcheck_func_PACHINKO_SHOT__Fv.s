lbl_80099928:
/* 80099928  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8009992C  7C 08 02 A6 */	mflr r0
/* 80099930  90 01 00 14 */	stw r0, 0x14(r1)
/* 80099934  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80099938  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8009993C  38 63 00 CC */	addi r3, r3, 0xcc
/* 80099940  38 80 00 12 */	li r4, 0x12
/* 80099944  4B F9 A5 85 */	bl isFirstBit__21dSv_player_get_item_cCFUc
/* 80099948  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8009994C  7C 08 03 A6 */	mtlr r0
/* 80099950  38 21 00 10 */	addi r1, r1, 0x10
/* 80099954  4E 80 00 20 */	blr 
