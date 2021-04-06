lbl_8009841C:
/* 8009841C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80098420  7C 08 02 A6 */	mflr r0
/* 80098424  90 01 00 14 */	stw r0, 0x14(r1)
/* 80098428  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8009842C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80098430  38 63 00 9C */	addi r3, r3, 0x9c
/* 80098434  38 80 00 12 */	li r4, 0x12
/* 80098438  38 A0 00 27 */	li r5, 0x27
/* 8009843C  4B F9 AB 7D */	bl setItem__17dSv_player_item_cFiUc
/* 80098440  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80098444  7C 08 03 A6 */	mtlr r0
/* 80098448  38 21 00 10 */	addi r1, r1, 0x10
/* 8009844C  4E 80 00 20 */	blr 
