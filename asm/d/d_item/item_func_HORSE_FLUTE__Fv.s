lbl_8009921C:
/* 8009921C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80099220  7C 08 02 A6 */	mflr r0
/* 80099224  90 01 00 14 */	stw r0, 0x14(r1)
/* 80099228  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8009922C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80099230  38 63 00 9C */	addi r3, r3, 0x9c
/* 80099234  38 80 00 15 */	li r4, 0x15
/* 80099238  38 A0 00 84 */	li r5, 0x84
/* 8009923C  4B F9 9D 7D */	bl setItem__17dSv_player_item_cFiUc
/* 80099240  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80099244  7C 08 03 A6 */	mtlr r0
/* 80099248  38 21 00 10 */	addi r1, r1, 0x10
/* 8009924C  4E 80 00 20 */	blr 
