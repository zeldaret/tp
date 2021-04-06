lbl_80099EFC:
/* 80099EFC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80099F00  7C 08 02 A6 */	mflr r0
/* 80099F04  90 01 00 14 */	stw r0, 0x14(r1)
/* 80099F08  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80099F0C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80099F10  38 63 00 9C */	addi r3, r3, 0x9c
/* 80099F14  38 80 00 04 */	li r4, 4
/* 80099F18  38 A0 00 00 */	li r5, 0
/* 80099F1C  4B F9 91 15 */	bl getItem__17dSv_player_item_cCFib
/* 80099F20  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 80099F24  20 00 00 43 */	subfic r0, r0, 0x43
/* 80099F28  7C 00 00 34 */	cntlzw r0, r0
/* 80099F2C  54 03 D9 7E */	srwi r3, r0, 5
/* 80099F30  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80099F34  7C 08 03 A6 */	mtlr r0
/* 80099F38  38 21 00 10 */	addi r1, r1, 0x10
/* 80099F3C  4E 80 00 20 */	blr 
