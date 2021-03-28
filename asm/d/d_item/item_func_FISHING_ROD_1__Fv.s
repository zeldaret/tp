lbl_80098968:
/* 80098968  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8009896C  7C 08 02 A6 */	mflr r0
/* 80098970  90 01 00 14 */	stw r0, 0x14(r1)
/* 80098974  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80098978  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8009897C  38 63 00 9C */	addi r3, r3, 0x9c
/* 80098980  38 80 00 14 */	li r4, 0x14
/* 80098984  38 A0 00 4A */	li r5, 0x4a
/* 80098988  4B F9 A6 31 */	bl setItem__17dSv_player_item_cFiUc
/* 8009898C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80098990  7C 08 03 A6 */	mtlr r0
/* 80098994  38 21 00 10 */	addi r1, r1, 0x10
/* 80098998  4E 80 00 20 */	blr 
