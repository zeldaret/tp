lbl_8009A9E8:
/* 8009A9E8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8009A9EC  7C 08 02 A6 */	mflr r0
/* 8009A9F0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8009A9F4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8009A9F8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8009A9FC  38 63 00 9C */	addi r3, r3, 0x9c
/* 8009AA00  38 80 00 79 */	li r4, 0x79
/* 8009AA04  4B F9 8C DD */	bl checkBottle__17dSv_player_item_cFUc
/* 8009AA08  54 63 06 3E */	clrlwi r3, r3, 0x18
/* 8009AA0C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8009AA10  7C 08 03 A6 */	mtlr r0
/* 8009AA14  38 21 00 10 */	addi r1, r1, 0x10
/* 8009AA18  4E 80 00 20 */	blr 
