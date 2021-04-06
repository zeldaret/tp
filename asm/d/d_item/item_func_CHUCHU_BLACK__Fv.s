lbl_80099338:
/* 80099338  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8009933C  7C 08 02 A6 */	mflr r0
/* 80099340  90 01 00 14 */	stw r0, 0x14(r1)
/* 80099344  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80099348  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8009934C  38 63 00 9C */	addi r3, r3, 0x9c
/* 80099350  38 80 00 9F */	li r4, 0x9f
/* 80099354  4B F9 A0 FD */	bl setEmptyBottleItemIn__17dSv_player_item_cFUc
/* 80099358  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8009935C  7C 08 03 A6 */	mtlr r0
/* 80099360  38 21 00 10 */	addi r1, r1, 0x10
/* 80099364  4E 80 00 20 */	blr 
