lbl_80099BC0:
/* 80099BC0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80099BC4  7C 08 02 A6 */	mflr r0
/* 80099BC8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80099BCC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80099BD0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80099BD4  38 63 00 CC */	addi r3, r3, 0xcc
/* 80099BD8  38 80 00 2B */	li r4, 0x2b
/* 80099BDC  4B F9 A2 ED */	bl isFirstBit__21dSv_player_get_item_cCFUc
/* 80099BE0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80099BE4  7C 08 03 A6 */	mtlr r0
/* 80099BE8  38 21 00 10 */	addi r1, r1, 0x10
/* 80099BEC  4E 80 00 20 */	blr 
