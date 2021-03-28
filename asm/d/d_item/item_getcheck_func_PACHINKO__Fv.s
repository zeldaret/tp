lbl_8009A1FC:
/* 8009A1FC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8009A200  7C 08 02 A6 */	mflr r0
/* 8009A204  90 01 00 14 */	stw r0, 0x14(r1)
/* 8009A208  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8009A20C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8009A210  38 63 00 9C */	addi r3, r3, 0x9c
/* 8009A214  38 80 00 17 */	li r4, 0x17
/* 8009A218  38 A0 00 01 */	li r5, 1
/* 8009A21C  4B F9 8E 15 */	bl getItem__17dSv_player_item_cCFib
/* 8009A220  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 8009A224  20 00 00 4B */	subfic r0, r0, 0x4b
/* 8009A228  7C 00 00 34 */	cntlzw r0, r0
/* 8009A22C  54 03 D9 7E */	srwi r3, r0, 5
/* 8009A230  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8009A234  7C 08 03 A6 */	mtlr r0
/* 8009A238  38 21 00 10 */	addi r1, r1, 0x10
/* 8009A23C  4E 80 00 20 */	blr 
