lbl_8009A050:
/* 8009A050  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8009A054  7C 08 02 A6 */	mflr r0
/* 8009A058  90 01 00 14 */	stw r0, 0x14(r1)
/* 8009A05C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8009A060  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8009A064  38 63 00 9C */	addi r3, r3, 0x9c
/* 8009A068  38 80 00 01 */	li r4, 1
/* 8009A06C  38 A0 00 01 */	li r5, 1
/* 8009A070  4B F9 8F C1 */	bl getItem__17dSv_player_item_cCFib
/* 8009A074  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 8009A078  20 00 00 48 */	subfic r0, r0, 0x48
/* 8009A07C  7C 00 00 34 */	cntlzw r0, r0
/* 8009A080  54 03 D9 7E */	srwi r3, r0, 5
/* 8009A084  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8009A088  7C 08 03 A6 */	mtlr r0
/* 8009A08C  38 21 00 10 */	addi r1, r1, 0x10
/* 8009A090  4E 80 00 20 */	blr 
