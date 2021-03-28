lbl_8009A914:
/* 8009A914  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8009A918  7C 08 02 A6 */	mflr r0
/* 8009A91C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8009A920  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8009A924  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8009A928  38 63 00 9C */	addi r3, r3, 0x9c
/* 8009A92C  38 80 00 74 */	li r4, 0x74
/* 8009A930  4B F9 8D B1 */	bl checkBottle__17dSv_player_item_cFUc
/* 8009A934  54 63 06 3E */	clrlwi r3, r3, 0x18
/* 8009A938  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8009A93C  7C 08 03 A6 */	mtlr r0
/* 8009A940  38 21 00 10 */	addi r1, r1, 0x10
/* 8009A944  4E 80 00 20 */	blr 
