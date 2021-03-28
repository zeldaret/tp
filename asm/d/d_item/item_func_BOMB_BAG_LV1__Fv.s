lbl_80098A14:
/* 80098A14  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80098A18  7C 08 02 A6 */	mflr r0
/* 80098A1C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80098A20  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80098A24  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80098A28  38 63 00 9C */	addi r3, r3, 0x9c
/* 80098A2C  38 80 00 70 */	li r4, 0x70
/* 80098A30  38 A0 00 1E */	li r5, 0x1e
/* 80098A34  4B F9 B0 D5 */	bl setEmptyBombBag__17dSv_player_item_cFUcUc
/* 80098A38  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80098A3C  7C 08 03 A6 */	mtlr r0
/* 80098A40  38 21 00 10 */	addi r1, r1, 0x10
/* 80098A44  4E 80 00 20 */	blr 
