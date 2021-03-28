lbl_80099C94:
/* 80099C94  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80099C98  7C 08 02 A6 */	mflr r0
/* 80099C9C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80099CA0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80099CA4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80099CA8  38 63 01 00 */	addi r3, r3, 0x100
/* 80099CAC  38 80 00 00 */	li r4, 0
/* 80099CB0  38 A0 00 00 */	li r5, 0
/* 80099CB4  4B F9 A5 55 */	bl isCollect__20dSv_player_collect_cCFiUc
/* 80099CB8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80099CBC  7C 08 03 A6 */	mtlr r0
/* 80099CC0  38 21 00 10 */	addi r1, r1, 0x10
/* 80099CC4  4E 80 00 20 */	blr 
