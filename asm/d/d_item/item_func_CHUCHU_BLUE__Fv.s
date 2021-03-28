lbl_80098FE0:
/* 80098FE0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80098FE4  7C 08 02 A6 */	mflr r0
/* 80098FE8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80098FEC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80098FF0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80098FF4  38 63 00 9C */	addi r3, r3, 0x9c
/* 80098FF8  38 80 00 79 */	li r4, 0x79
/* 80098FFC  4B F9 A4 55 */	bl setEmptyBottleItemIn__17dSv_player_item_cFUc
/* 80099000  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80099004  7C 08 03 A6 */	mtlr r0
/* 80099008  38 21 00 10 */	addi r1, r1, 0x10
/* 8009900C  4E 80 00 20 */	blr 
