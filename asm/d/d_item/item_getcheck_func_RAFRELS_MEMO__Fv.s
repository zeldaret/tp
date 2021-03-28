lbl_8009AC9C:
/* 8009AC9C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8009ACA0  7C 08 02 A6 */	mflr r0
/* 8009ACA4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8009ACA8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8009ACAC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8009ACB0  38 63 00 9C */	addi r3, r3, 0x9c
/* 8009ACB4  38 80 00 13 */	li r4, 0x13
/* 8009ACB8  38 A0 00 01 */	li r5, 1
/* 8009ACBC  4B F9 83 75 */	bl getItem__17dSv_player_item_cCFib
/* 8009ACC0  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 8009ACC4  20 00 00 90 */	subfic r0, r0, 0x90
/* 8009ACC8  7C 00 00 34 */	cntlzw r0, r0
/* 8009ACCC  54 03 D9 7E */	srwi r3, r0, 5
/* 8009ACD0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8009ACD4  7C 08 03 A6 */	mtlr r0
/* 8009ACD8  38 21 00 10 */	addi r1, r1, 0x10
/* 8009ACDC  4E 80 00 20 */	blr 
