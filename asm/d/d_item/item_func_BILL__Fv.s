lbl_80099164:
/* 80099164  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80099168  7C 08 02 A6 */	mflr r0
/* 8009916C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80099170  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80099174  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80099178  38 63 00 9C */	addi r3, r3, 0x9c
/* 8009917C  38 80 00 15 */	li r4, 0x15
/* 80099180  38 A0 00 81 */	li r5, 0x81
/* 80099184  4B F9 9E 35 */	bl setItem__17dSv_player_item_cFiUc
/* 80099188  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8009918C  7C 08 03 A6 */	mtlr r0
/* 80099190  38 21 00 10 */	addi r1, r1, 0x10
/* 80099194  4E 80 00 20 */	blr 
