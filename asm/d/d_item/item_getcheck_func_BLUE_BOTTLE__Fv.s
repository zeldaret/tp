lbl_8009A5AC:
/* 8009A5AC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8009A5B0  7C 08 02 A6 */	mflr r0
/* 8009A5B4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8009A5B8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8009A5BC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8009A5C0  38 63 00 9C */	addi r3, r3, 0x9c
/* 8009A5C4  38 80 00 63 */	li r4, 0x63
/* 8009A5C8  4B F9 91 19 */	bl checkBottle__17dSv_player_item_cFUc
/* 8009A5CC  54 63 06 3E */	clrlwi r3, r3, 0x18
/* 8009A5D0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8009A5D4  7C 08 03 A6 */	mtlr r0
/* 8009A5D8  38 21 00 10 */	addi r1, r1, 0x10
/* 8009A5DC  4E 80 00 20 */	blr 
