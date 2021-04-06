lbl_80098CC4:
/* 80098CC4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80098CC8  7C 08 02 A6 */	mflr r0
/* 80098CCC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80098CD0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80098CD4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80098CD8  38 63 00 9C */	addi r3, r3, 0x9c
/* 80098CDC  38 80 00 61 */	li r4, 0x61
/* 80098CE0  4B F9 A7 71 */	bl setEmptyBottleItemIn__17dSv_player_item_cFUc
/* 80098CE4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80098CE8  7C 08 03 A6 */	mtlr r0
/* 80098CEC  38 21 00 10 */	addi r1, r1, 0x10
/* 80098CF0  4E 80 00 20 */	blr 
