lbl_80099AE4:
/* 80099AE4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80099AE8  7C 08 02 A6 */	mflr r0
/* 80099AEC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80099AF0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80099AF4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80099AF8  38 63 00 9C */	addi r3, r3, 0x9c
/* 80099AFC  38 80 00 12 */	li r4, 0x12
/* 80099B00  38 A0 00 01 */	li r5, 1
/* 80099B04  4B F9 95 2D */	bl getItem__17dSv_player_item_cCFib
/* 80099B08  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 80099B0C  20 00 00 27 */	subfic r0, r0, 0x27
/* 80099B10  7C 00 00 34 */	cntlzw r0, r0
/* 80099B14  54 03 D9 7E */	srwi r3, r0, 5
/* 80099B18  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80099B1C  7C 08 03 A6 */	mtlr r0
/* 80099B20  38 21 00 10 */	addi r1, r1, 0x10
/* 80099B24  4E 80 00 20 */	blr 
