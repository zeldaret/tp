lbl_80098C04:
/* 80098C04  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80098C08  7C 08 02 A6 */	mflr r0
/* 80098C0C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80098C10  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80098C14  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80098C18  38 63 00 9C */	addi r3, r3, 0x9c
/* 80098C1C  38 80 00 65 */	li r4, 0x65
/* 80098C20  4B F9 A8 F5 */	bl setEmptyBottle__17dSv_player_item_cFUc
/* 80098C24  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80098C28  7C 08 03 A6 */	mtlr r0
/* 80098C2C  38 21 00 10 */	addi r1, r1, 0x10
/* 80098C30  4E 80 00 20 */	blr 
