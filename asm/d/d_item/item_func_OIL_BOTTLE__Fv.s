lbl_80098C34:
/* 80098C34  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80098C38  7C 08 02 A6 */	mflr r0
/* 80098C3C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80098C40  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80098C44  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80098C48  38 63 00 9C */	addi r3, r3, 0x9c
/* 80098C4C  38 80 00 66 */	li r4, 0x66
/* 80098C50  4B F9 A8 01 */	bl setEmptyBottleItemIn__17dSv_player_item_cFUc
/* 80098C54  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80098C58  7C 08 03 A6 */	mtlr r0
/* 80098C5C  38 21 00 10 */	addi r1, r1, 0x10
/* 80098C60  4E 80 00 20 */	blr 
