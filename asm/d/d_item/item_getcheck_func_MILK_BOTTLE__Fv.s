lbl_8009A5E0:
/* 8009A5E0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8009A5E4  7C 08 02 A6 */	mflr r0
/* 8009A5E8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8009A5EC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8009A5F0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8009A5F4  38 63 00 9C */	addi r3, r3, 0x9c
/* 8009A5F8  38 80 00 64 */	li r4, 0x64
/* 8009A5FC  4B F9 90 E5 */	bl checkBottle__17dSv_player_item_cFUc
/* 8009A600  54 63 06 3E */	clrlwi r3, r3, 0x18
/* 8009A604  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8009A608  7C 08 03 A6 */	mtlr r0
/* 8009A60C  38 21 00 10 */	addi r1, r1, 0x10
/* 8009A610  4E 80 00 20 */	blr 
