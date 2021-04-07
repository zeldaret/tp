lbl_8009B3A0:
/* 8009B3A0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8009B3A4  7C 08 02 A6 */	mflr r0
/* 8009B3A8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8009B3AC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8009B3B0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8009B3B4  38 63 00 9C */	addi r3, r3, 0x9c
/* 8009B3B8  38 80 00 16 */	li r4, 0x16
/* 8009B3BC  38 A0 00 01 */	li r5, 1
/* 8009B3C0  4B F9 7C 71 */	bl getItem__17dSv_player_item_cCFib
/* 8009B3C4  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 8009B3C8  20 00 00 E9 */	subfic r0, r0, 0xe9
/* 8009B3CC  7C 00 00 34 */	cntlzw r0, r0
/* 8009B3D0  54 03 D9 7E */	srwi r3, r0, 5
/* 8009B3D4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8009B3D8  7C 08 03 A6 */	mtlr r0
/* 8009B3DC  38 21 00 10 */	addi r1, r1, 0x10
/* 8009B3E0  4E 80 00 20 */	blr 
