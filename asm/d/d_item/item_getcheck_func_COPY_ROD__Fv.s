lbl_80099FC8:
/* 80099FC8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80099FCC  7C 08 02 A6 */	mflr r0
/* 80099FD0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80099FD4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80099FD8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80099FDC  38 63 00 9C */	addi r3, r3, 0x9c
/* 80099FE0  38 80 00 08 */	li r4, 8
/* 80099FE4  38 A0 00 01 */	li r5, 1
/* 80099FE8  4B F9 90 49 */	bl getItem__17dSv_player_item_cCFib
/* 80099FEC  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 80099FF0  20 00 00 46 */	subfic r0, r0, 0x46
/* 80099FF4  7C 00 00 34 */	cntlzw r0, r0
/* 80099FF8  54 03 D9 7E */	srwi r3, r0, 5
/* 80099FFC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8009A000  7C 08 03 A6 */	mtlr r0
/* 8009A004  38 21 00 10 */	addi r1, r1, 0x10
/* 8009A008  4E 80 00 20 */	blr 
