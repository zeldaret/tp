lbl_800988E8:
/* 800988E8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800988EC  7C 08 02 A6 */	mflr r0
/* 800988F0  90 01 00 14 */	stw r0, 0x14(r1)
/* 800988F4  38 00 54 60 */	li r0, 0x5460
/* 800988F8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 800988FC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80098900  B0 03 00 06 */	sth r0, 6(r3)
/* 80098904  B0 03 00 08 */	sth r0, 8(r3)
/* 80098908  38 63 00 9C */	addi r3, r3, 0x9c
/* 8009890C  38 80 00 01 */	li r4, 1
/* 80098910  38 A0 00 48 */	li r5, 0x48
/* 80098914  4B F9 A6 A5 */	bl setItem__17dSv_player_item_cFiUc
/* 80098918  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8009891C  7C 08 03 A6 */	mtlr r0
/* 80098920  38 21 00 10 */	addi r1, r1, 0x10
/* 80098924  4E 80 00 20 */	blr 
