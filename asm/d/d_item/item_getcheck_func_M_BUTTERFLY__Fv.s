lbl_8009AF70:
/* 8009AF70  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8009AF74  7C 08 02 A6 */	mflr r0
/* 8009AF78  90 01 00 14 */	stw r0, 0x14(r1)
/* 8009AF7C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8009AF80  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8009AF84  38 63 00 CC */	addi r3, r3, 0xcc
/* 8009AF88  38 80 00 C2 */	li r4, 0xc2
/* 8009AF8C  4B F9 8F 3D */	bl isFirstBit__21dSv_player_get_item_cCFUc
/* 8009AF90  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8009AF94  7C 08 03 A6 */	mtlr r0
/* 8009AF98  38 21 00 10 */	addi r1, r1, 0x10
/* 8009AF9C  4E 80 00 20 */	blr 
