lbl_8009B2D0:
/* 8009B2D0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8009B2D4  7C 08 02 A6 */	mflr r0
/* 8009B2D8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8009B2DC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8009B2E0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8009B2E4  38 63 00 CC */	addi r3, r3, 0xcc
/* 8009B2E8  38 80 00 D4 */	li r4, 0xd4
/* 8009B2EC  4B F9 8B DD */	bl isFirstBit__21dSv_player_get_item_cCFUc
/* 8009B2F0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8009B2F4  7C 08 03 A6 */	mtlr r0
/* 8009B2F8  38 21 00 10 */	addi r1, r1, 0x10
/* 8009B2FC  4E 80 00 20 */	blr 
