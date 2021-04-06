lbl_80099B90:
/* 80099B90  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80099B94  7C 08 02 A6 */	mflr r0
/* 80099B98  90 01 00 14 */	stw r0, 0x14(r1)
/* 80099B9C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80099BA0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80099BA4  38 63 00 CC */	addi r3, r3, 0xcc
/* 80099BA8  38 80 00 2A */	li r4, 0x2a
/* 80099BAC  4B F9 A3 1D */	bl isFirstBit__21dSv_player_get_item_cCFUc
/* 80099BB0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80099BB4  7C 08 03 A6 */	mtlr r0
/* 80099BB8  38 21 00 10 */	addi r1, r1, 0x10
/* 80099BBC  4E 80 00 20 */	blr 
