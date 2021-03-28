lbl_80098A7C:
/* 80098A7C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80098A80  7C 08 02 A6 */	mflr r0
/* 80098A84  90 01 00 14 */	stw r0, 0x14(r1)
/* 80098A88  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80098A8C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80098A90  38 63 00 9C */	addi r3, r3, 0x9c
/* 80098A94  38 80 00 04 */	li r4, 4
/* 80098A98  38 A0 00 53 */	li r5, 0x53
/* 80098A9C  4B F9 A5 1D */	bl setItem__17dSv_player_item_cFiUc
/* 80098AA0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80098AA4  7C 08 03 A6 */	mtlr r0
/* 80098AA8  38 21 00 10 */	addi r1, r1, 0x10
/* 80098AAC  4E 80 00 20 */	blr 
