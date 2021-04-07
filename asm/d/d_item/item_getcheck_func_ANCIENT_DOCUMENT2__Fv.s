lbl_8009B428:
/* 8009B428  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8009B42C  7C 08 02 A6 */	mflr r0
/* 8009B430  90 01 00 14 */	stw r0, 0x14(r1)
/* 8009B434  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8009B438  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8009B43C  38 63 00 9C */	addi r3, r3, 0x9c
/* 8009B440  38 80 00 16 */	li r4, 0x16
/* 8009B444  38 A0 00 01 */	li r5, 1
/* 8009B448  4B F9 7B E9 */	bl getItem__17dSv_player_item_cCFib
/* 8009B44C  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 8009B450  20 00 00 EB */	subfic r0, r0, 0xeb
/* 8009B454  7C 00 00 34 */	cntlzw r0, r0
/* 8009B458  54 03 D9 7E */	srwi r3, r0, 5
/* 8009B45C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8009B460  7C 08 03 A6 */	mtlr r0
/* 8009B464  38 21 00 10 */	addi r1, r1, 0x10
/* 8009B468  4E 80 00 20 */	blr 
