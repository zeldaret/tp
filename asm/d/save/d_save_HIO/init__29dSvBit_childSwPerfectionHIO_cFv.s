lbl_8025BBAC:
/* 8025BBAC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8025BBB0  7C 08 02 A6 */	mflr r0
/* 8025BBB4  90 01 00 24 */	stw r0, 0x24(r1)
/* 8025BBB8  39 61 00 20 */	addi r11, r1, 0x20
/* 8025BBBC  48 10 66 21 */	bl _savegpr_29
/* 8025BBC0  7C 7D 1B 78 */	mr r29, r3
/* 8025BBC4  3B C0 00 00 */	li r30, 0
/* 8025BBC8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8025BBCC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8025BBD0  3B E3 09 58 */	addi r31, r3, 0x958
lbl_8025BBD4:
/* 8025BBD4  7F E3 FB 78 */	mr r3, r31
/* 8025BBD8  7F C4 F3 78 */	mr r4, r30
/* 8025BBDC  4B DD 8C 85 */	bl isSwitch__12dSv_memBit_cCFi
/* 8025BBE0  7C 9D F2 14 */	add r4, r29, r30
/* 8025BBE4  98 64 00 05 */	stb r3, 5(r4)
/* 8025BBE8  88 04 00 05 */	lbz r0, 5(r4)
/* 8025BBEC  98 04 00 85 */	stb r0, 0x85(r4)
/* 8025BBF0  3B DE 00 01 */	addi r30, r30, 1
/* 8025BBF4  2C 1E 00 80 */	cmpwi r30, 0x80
/* 8025BBF8  41 80 FF DC */	blt lbl_8025BBD4
/* 8025BBFC  39 61 00 20 */	addi r11, r1, 0x20
/* 8025BC00  48 10 66 29 */	bl _restgpr_29
/* 8025BC04  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8025BC08  7C 08 03 A6 */	mtlr r0
/* 8025BC0C  38 21 00 20 */	addi r1, r1, 0x20
/* 8025BC10  4E 80 00 20 */	blr 
