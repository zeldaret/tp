lbl_80098EB4:
/* 80098EB4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80098EB8  7C 08 02 A6 */	mflr r0
/* 80098EBC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80098EC0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80098EC4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80098EC8  38 63 00 9C */	addi r3, r3, 0x9c
/* 80098ECC  38 80 00 73 */	li r4, 0x73
/* 80098ED0  4B F9 A6 45 */	bl setEmptyBottle__17dSv_player_item_cFUc
/* 80098ED4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80098ED8  7C 08 03 A6 */	mtlr r0
/* 80098EDC  38 21 00 10 */	addi r1, r1, 0x10
/* 80098EE0  4E 80 00 20 */	blr 
