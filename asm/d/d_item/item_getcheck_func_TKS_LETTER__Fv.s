lbl_80099C20:
/* 80099C20  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80099C24  7C 08 02 A6 */	mflr r0
/* 80099C28  90 01 00 14 */	stw r0, 0x14(r1)
/* 80099C2C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80099C30  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80099C34  38 63 00 9C */	addi r3, r3, 0x9c
/* 80099C38  38 80 00 12 */	li r4, 0x12
/* 80099C3C  38 A0 00 01 */	li r5, 1
/* 80099C40  4B F9 93 F1 */	bl getItem__17dSv_player_item_cCFib
/* 80099C44  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 80099C48  20 00 00 2D */	subfic r0, r0, 0x2d
/* 80099C4C  7C 00 00 34 */	cntlzw r0, r0
/* 80099C50  54 03 D9 7E */	srwi r3, r0, 5
/* 80099C54  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80099C58  7C 08 03 A6 */	mtlr r0
/* 80099C5C  38 21 00 10 */	addi r1, r1, 0x10
/* 80099C60  4E 80 00 20 */	blr 
