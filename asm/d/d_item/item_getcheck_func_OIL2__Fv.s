lbl_8009A7E8:
/* 8009A7E8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8009A7EC  7C 08 02 A6 */	mflr r0
/* 8009A7F0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8009A7F4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8009A7F8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8009A7FC  38 63 00 9C */	addi r3, r3, 0x9c
/* 8009A800  38 80 00 6E */	li r4, 0x6e
/* 8009A804  4B F9 8E DD */	bl checkBottle__17dSv_player_item_cFUc
/* 8009A808  54 63 06 3E */	clrlwi r3, r3, 0x18
/* 8009A80C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8009A810  7C 08 03 A6 */	mtlr r0
/* 8009A814  38 21 00 10 */	addi r1, r1, 0x10
/* 8009A818  4E 80 00 20 */	blr 
