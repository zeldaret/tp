lbl_80099284:
/* 80099284  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80099288  7C 08 02 A6 */	mflr r0
/* 8009928C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80099290  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80099294  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80099298  38 63 00 9C */	addi r3, r3, 0x9c
/* 8009929C  38 80 00 13 */	li r4, 0x13
/* 800992A0  38 A0 00 91 */	li r5, 0x91
/* 800992A4  4B F9 9D 15 */	bl setItem__17dSv_player_item_cFiUc
/* 800992A8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800992AC  7C 08 03 A6 */	mtlr r0
/* 800992B0  38 21 00 10 */	addi r1, r1, 0x10
/* 800992B4  4E 80 00 20 */	blr 
