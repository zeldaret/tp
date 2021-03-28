lbl_80098DBC:
/* 80098DBC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80098DC0  7C 08 02 A6 */	mflr r0
/* 80098DC4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80098DC8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80098DCC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80098DD0  38 63 00 9C */	addi r3, r3, 0x9c
/* 80098DD4  38 80 00 70 */	li r4, 0x70
/* 80098DD8  38 A0 00 3C */	li r5, 0x3c
/* 80098DDC  4B F9 AD 2D */	bl setEmptyBombBag__17dSv_player_item_cFUcUc
/* 80098DE0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80098DE4  7C 08 03 A6 */	mtlr r0
/* 80098DE8  38 21 00 10 */	addi r1, r1, 0x10
/* 80098DEC  4E 80 00 20 */	blr 
