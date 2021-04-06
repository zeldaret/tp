lbl_8009ACE0:
/* 8009ACE0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8009ACE4  7C 08 02 A6 */	mflr r0
/* 8009ACE8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8009ACEC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8009ACF0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8009ACF4  38 63 00 9C */	addi r3, r3, 0x9c
/* 8009ACF8  38 80 00 13 */	li r4, 0x13
/* 8009ACFC  38 A0 00 01 */	li r5, 1
/* 8009AD00  4B F9 83 31 */	bl getItem__17dSv_player_item_cCFib
/* 8009AD04  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 8009AD08  20 00 00 91 */	subfic r0, r0, 0x91
/* 8009AD0C  7C 00 00 34 */	cntlzw r0, r0
/* 8009AD10  54 03 D9 7E */	srwi r3, r0, 5
/* 8009AD14  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8009AD18  7C 08 03 A6 */	mtlr r0
/* 8009AD1C  38 21 00 10 */	addi r1, r1, 0x10
/* 8009AD20  4E 80 00 20 */	blr 
