lbl_80099A70:
/* 80099A70  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80099A74  7C 08 02 A6 */	mflr r0
/* 80099A78  90 01 00 14 */	stw r0, 0x14(r1)
/* 80099A7C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80099A80  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80099A84  38 63 00 9C */	addi r3, r3, 0x9c
/* 80099A88  38 80 00 12 */	li r4, 0x12
/* 80099A8C  38 A0 00 01 */	li r5, 1
/* 80099A90  4B F9 95 A1 */	bl getItem__17dSv_player_item_cCFib
/* 80099A94  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 80099A98  20 00 00 25 */	subfic r0, r0, 0x25
/* 80099A9C  7C 00 00 34 */	cntlzw r0, r0
/* 80099AA0  54 03 D9 7E */	srwi r3, r0, 5
/* 80099AA4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80099AA8  7C 08 03 A6 */	mtlr r0
/* 80099AAC  38 21 00 10 */	addi r1, r1, 0x10
/* 80099AB0  4E 80 00 20 */	blr 
