lbl_80099F84:
/* 80099F84  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80099F88  7C 08 02 A6 */	mflr r0
/* 80099F8C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80099F90  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80099F94  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80099F98  38 63 00 9C */	addi r3, r3, 0x9c
/* 80099F9C  38 80 00 03 */	li r4, 3
/* 80099FA0  38 A0 00 01 */	li r5, 1
/* 80099FA4  4B F9 90 8D */	bl getItem__17dSv_player_item_cCFib
/* 80099FA8  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 80099FAC  20 00 00 45 */	subfic r0, r0, 0x45
/* 80099FB0  7C 00 00 34 */	cntlzw r0, r0
/* 80099FB4  54 03 D9 7E */	srwi r3, r0, 5
/* 80099FB8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80099FBC  7C 08 03 A6 */	mtlr r0
/* 80099FC0  38 21 00 10 */	addi r1, r1, 0x10
/* 80099FC4  4E 80 00 20 */	blr 
