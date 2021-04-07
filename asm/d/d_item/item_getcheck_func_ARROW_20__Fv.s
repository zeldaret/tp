lbl_80099898:
/* 80099898  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8009989C  7C 08 02 A6 */	mflr r0
/* 800998A0  90 01 00 14 */	stw r0, 0x14(r1)
/* 800998A4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800998A8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 800998AC  38 63 00 CC */	addi r3, r3, 0xcc
/* 800998B0  38 80 00 0F */	li r4, 0xf
/* 800998B4  4B F9 A6 15 */	bl isFirstBit__21dSv_player_get_item_cCFUc
/* 800998B8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800998BC  7C 08 03 A6 */	mtlr r0
/* 800998C0  38 21 00 10 */	addi r1, r1, 0x10
/* 800998C4  4E 80 00 20 */	blr 
