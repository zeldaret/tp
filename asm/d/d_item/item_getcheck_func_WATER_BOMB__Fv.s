lbl_8009A880:
/* 8009A880  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8009A884  7C 08 02 A6 */	mflr r0
/* 8009A888  90 01 00 14 */	stw r0, 0x14(r1)
/* 8009A88C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8009A890  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8009A894  38 63 00 CC */	addi r3, r3, 0xcc
/* 8009A898  38 80 00 71 */	li r4, 0x71
/* 8009A89C  4B F9 96 2D */	bl isFirstBit__21dSv_player_get_item_cCFUc
/* 8009A8A0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8009A8A4  7C 08 03 A6 */	mtlr r0
/* 8009A8A8  38 21 00 10 */	addi r1, r1, 0x10
/* 8009A8AC  4E 80 00 20 */	blr 
