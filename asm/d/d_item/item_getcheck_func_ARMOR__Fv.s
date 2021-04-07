lbl_80099CC8:
/* 80099CC8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80099CCC  7C 08 02 A6 */	mflr r0
/* 80099CD0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80099CD4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80099CD8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80099CDC  38 63 00 CC */	addi r3, r3, 0xcc
/* 80099CE0  38 80 00 30 */	li r4, 0x30
/* 80099CE4  4B F9 A1 E5 */	bl isFirstBit__21dSv_player_get_item_cCFUc
/* 80099CE8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80099CEC  7C 08 03 A6 */	mtlr r0
/* 80099CF0  38 21 00 10 */	addi r1, r1, 0x10
/* 80099CF4  4E 80 00 20 */	blr 
