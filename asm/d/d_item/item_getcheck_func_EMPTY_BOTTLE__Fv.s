lbl_8009A510:
/* 8009A510  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8009A514  7C 08 02 A6 */	mflr r0
/* 8009A518  90 01 00 14 */	stw r0, 0x14(r1)
/* 8009A51C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8009A520  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8009A524  38 63 00 9C */	addi r3, r3, 0x9c
/* 8009A528  38 80 00 60 */	li r4, 0x60
/* 8009A52C  4B F9 91 B5 */	bl checkBottle__17dSv_player_item_cFUc
/* 8009A530  54 63 06 3E */	clrlwi r3, r3, 0x18
/* 8009A534  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8009A538  7C 08 03 A6 */	mtlr r0
/* 8009A53C  38 21 00 10 */	addi r1, r1, 0x10
/* 8009A540  4E 80 00 20 */	blr 
