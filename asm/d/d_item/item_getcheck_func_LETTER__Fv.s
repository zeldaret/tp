lbl_8009AB48:
/* 8009AB48  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8009AB4C  7C 08 02 A6 */	mflr r0
/* 8009AB50  90 01 00 14 */	stw r0, 0x14(r1)
/* 8009AB54  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8009AB58  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8009AB5C  38 63 00 9C */	addi r3, r3, 0x9c
/* 8009AB60  38 80 00 15 */	li r4, 0x15
/* 8009AB64  38 A0 00 01 */	li r5, 1
/* 8009AB68  4B F9 84 C9 */	bl getItem__17dSv_player_item_cCFib
/* 8009AB6C  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 8009AB70  20 00 00 80 */	subfic r0, r0, 0x80
/* 8009AB74  7C 00 00 34 */	cntlzw r0, r0
/* 8009AB78  54 03 D9 7E */	srwi r3, r0, 5
/* 8009AB7C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8009AB80  7C 08 03 A6 */	mtlr r0
/* 8009AB84  38 21 00 10 */	addi r1, r1, 0x10
/* 8009AB88  4E 80 00 20 */	blr 
