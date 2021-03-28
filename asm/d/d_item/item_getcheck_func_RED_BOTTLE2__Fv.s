lbl_8009A6E4:
/* 8009A6E4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8009A6E8  7C 08 02 A6 */	mflr r0
/* 8009A6EC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8009A6F0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8009A6F4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8009A6F8  38 63 00 9C */	addi r3, r3, 0x9c
/* 8009A6FC  38 80 00 69 */	li r4, 0x69
/* 8009A700  4B F9 8F E1 */	bl checkBottle__17dSv_player_item_cFUc
/* 8009A704  54 63 06 3E */	clrlwi r3, r3, 0x18
/* 8009A708  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8009A70C  7C 08 03 A6 */	mtlr r0
/* 8009A710  38 21 00 10 */	addi r1, r1, 0x10
/* 8009A714  4E 80 00 20 */	blr 
