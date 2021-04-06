lbl_80099010:
/* 80099010  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80099014  7C 08 02 A6 */	mflr r0
/* 80099018  90 01 00 14 */	stw r0, 0x14(r1)
/* 8009901C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80099020  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80099024  38 63 00 9C */	addi r3, r3, 0x9c
/* 80099028  38 80 00 7A */	li r4, 0x7a
/* 8009902C  4B F9 A4 25 */	bl setEmptyBottleItemIn__17dSv_player_item_cFUc
/* 80099030  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80099034  7C 08 03 A6 */	mtlr r0
/* 80099038  38 21 00 10 */	addi r1, r1, 0x10
/* 8009903C  4E 80 00 20 */	blr 
