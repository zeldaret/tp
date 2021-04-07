lbl_8024B918:
/* 8024B918  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8024B91C  7C 08 02 A6 */	mflr r0
/* 8024B920  90 01 00 14 */	stw r0, 0x14(r1)
/* 8024B924  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8024B928  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8024B92C  38 63 00 9C */	addi r3, r3, 0x9c
/* 8024B930  38 80 00 FF */	li r4, 0xff
/* 8024B934  4B DE 82 B9 */	bl checkBombBag__17dSv_player_item_cFUc
/* 8024B938  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 8024B93C  20 00 00 03 */	subfic r0, r0, 3
/* 8024B940  54 03 04 3E */	clrlwi r3, r0, 0x10
/* 8024B944  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8024B948  7C 08 03 A6 */	mtlr r0
/* 8024B94C  38 21 00 10 */	addi r1, r1, 0x10
/* 8024B950  4E 80 00 20 */	blr 
