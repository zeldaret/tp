lbl_80098BA4:
/* 80098BA4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80098BA8  7C 08 02 A6 */	mflr r0
/* 80098BAC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80098BB0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80098BB4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80098BB8  38 63 00 9C */	addi r3, r3, 0x9c
/* 80098BBC  38 80 00 63 */	li r4, 0x63
/* 80098BC0  4B F9 A8 91 */	bl setEmptyBottleItemIn__17dSv_player_item_cFUc
/* 80098BC4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80098BC8  7C 08 03 A6 */	mtlr r0
/* 80098BCC  38 21 00 10 */	addi r1, r1, 0x10
/* 80098BD0  4E 80 00 20 */	blr 
