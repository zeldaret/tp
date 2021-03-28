lbl_80098830:
/* 80098830  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80098834  7C 08 02 A6 */	mflr r0
/* 80098838  90 01 00 14 */	stw r0, 0x14(r1)
/* 8009883C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80098840  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80098844  38 63 00 9C */	addi r3, r3, 0x9c
/* 80098848  38 80 00 03 */	li r4, 3
/* 8009884C  38 A0 00 45 */	li r5, 0x45
/* 80098850  4B F9 A7 69 */	bl setItem__17dSv_player_item_cFiUc
/* 80098854  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80098858  7C 08 03 A6 */	mtlr r0
/* 8009885C  38 21 00 10 */	addi r1, r1, 0x10
/* 80098860  4E 80 00 20 */	blr 
