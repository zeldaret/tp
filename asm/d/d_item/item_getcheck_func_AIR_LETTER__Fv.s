lbl_8009B3E4:
/* 8009B3E4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8009B3E8  7C 08 02 A6 */	mflr r0
/* 8009B3EC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8009B3F0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8009B3F4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8009B3F8  38 63 00 9C */	addi r3, r3, 0x9c
/* 8009B3FC  38 80 00 16 */	li r4, 0x16
/* 8009B400  38 A0 00 01 */	li r5, 1
/* 8009B404  4B F9 7C 2D */	bl getItem__17dSv_player_item_cCFib
/* 8009B408  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 8009B40C  20 00 00 EA */	subfic r0, r0, 0xea
/* 8009B410  7C 00 00 34 */	cntlzw r0, r0
/* 8009B414  54 03 D9 7E */	srwi r3, r0, 5
/* 8009B418  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8009B41C  7C 08 03 A6 */	mtlr r0
/* 8009B420  38 21 00 10 */	addi r1, r1, 0x10
/* 8009B424  4E 80 00 20 */	blr 
