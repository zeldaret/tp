lbl_80099980:
/* 80099980  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80099984  7C 08 02 A6 */	mflr r0
/* 80099988  90 01 00 14 */	stw r0, 0x14(r1)
/* 8009998C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80099990  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80099994  38 63 00 CC */	addi r3, r3, 0xcc
/* 80099998  38 80 00 1B */	li r4, 0x1b
/* 8009999C  4B F9 A5 2D */	bl isFirstBit__21dSv_player_get_item_cCFUc
/* 800999A0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800999A4  7C 08 03 A6 */	mtlr r0
/* 800999A8  38 21 00 10 */	addi r1, r1, 0x10
/* 800999AC  4E 80 00 20 */	blr 
