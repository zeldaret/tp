lbl_80099D8C:
/* 80099D8C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80099D90  7C 08 02 A6 */	mflr r0
/* 80099D94  90 01 00 14 */	stw r0, 0x14(r1)
/* 80099D98  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80099D9C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80099DA0  38 63 00 9C */	addi r3, r3, 0x9c
/* 80099DA4  38 80 00 14 */	li r4, 0x14
/* 80099DA8  38 A0 00 01 */	li r5, 1
/* 80099DAC  4B F9 92 85 */	bl getItem__17dSv_player_item_cCFib
/* 80099DB0  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 80099DB4  20 00 00 3D */	subfic r0, r0, 0x3d
/* 80099DB8  7C 00 00 34 */	cntlzw r0, r0
/* 80099DBC  54 03 D9 7E */	srwi r3, r0, 5
/* 80099DC0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80099DC4  7C 08 03 A6 */	mtlr r0
/* 80099DC8  38 21 00 10 */	addi r1, r1, 0x10
/* 80099DCC  4E 80 00 20 */	blr 
