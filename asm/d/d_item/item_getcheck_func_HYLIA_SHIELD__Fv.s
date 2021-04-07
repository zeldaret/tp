lbl_80099BF0:
/* 80099BF0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80099BF4  7C 08 02 A6 */	mflr r0
/* 80099BF8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80099BFC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80099C00  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80099C04  38 63 00 CC */	addi r3, r3, 0xcc
/* 80099C08  38 80 00 2C */	li r4, 0x2c
/* 80099C0C  4B F9 A2 BD */	bl isFirstBit__21dSv_player_get_item_cCFUc
/* 80099C10  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80099C14  7C 08 03 A6 */	mtlr r0
/* 80099C18  38 21 00 10 */	addi r1, r1, 0x10
/* 80099C1C  4E 80 00 20 */	blr 
