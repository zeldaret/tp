lbl_80099E74:
/* 80099E74  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80099E78  7C 08 02 A6 */	mflr r0
/* 80099E7C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80099E80  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80099E84  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80099E88  38 63 00 9C */	addi r3, r3, 0x9c
/* 80099E8C  38 80 00 02 */	li r4, 2
/* 80099E90  38 A0 00 01 */	li r5, 1
/* 80099E94  4B F9 91 9D */	bl getItem__17dSv_player_item_cCFib
/* 80099E98  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 80099E9C  20 00 00 41 */	subfic r0, r0, 0x41
/* 80099EA0  7C 00 00 34 */	cntlzw r0, r0
/* 80099EA4  54 03 D9 7E */	srwi r3, r0, 5
/* 80099EA8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80099EAC  7C 08 03 A6 */	mtlr r0
/* 80099EB0  38 21 00 10 */	addi r1, r1, 0x10
/* 80099EB4  4E 80 00 20 */	blr 
