lbl_8009A648:
/* 8009A648  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8009A64C  7C 08 02 A6 */	mflr r0
/* 8009A650  90 01 00 14 */	stw r0, 0x14(r1)
/* 8009A654  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8009A658  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8009A65C  38 63 00 9C */	addi r3, r3, 0x9c
/* 8009A660  38 80 00 66 */	li r4, 0x66
/* 8009A664  4B F9 90 7D */	bl checkBottle__17dSv_player_item_cFUc
/* 8009A668  54 63 06 3E */	clrlwi r3, r3, 0x18
/* 8009A66C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8009A670  7C 08 03 A6 */	mtlr r0
/* 8009A674  38 21 00 10 */	addi r1, r1, 0x10
/* 8009A678  4E 80 00 20 */	blr 
