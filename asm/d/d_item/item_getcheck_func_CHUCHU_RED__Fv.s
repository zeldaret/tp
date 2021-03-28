lbl_8009A9B4:
/* 8009A9B4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8009A9B8  7C 08 02 A6 */	mflr r0
/* 8009A9BC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8009A9C0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8009A9C4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8009A9C8  38 63 00 9C */	addi r3, r3, 0x9c
/* 8009A9CC  38 80 00 78 */	li r4, 0x78
/* 8009A9D0  4B F9 8D 11 */	bl checkBottle__17dSv_player_item_cFUc
/* 8009A9D4  54 63 06 3E */	clrlwi r3, r3, 0x18
/* 8009A9D8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8009A9DC  7C 08 03 A6 */	mtlr r0
/* 8009A9E0  38 21 00 10 */	addi r1, r1, 0x10
/* 8009A9E4  4E 80 00 20 */	blr 
