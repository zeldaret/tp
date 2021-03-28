lbl_800994F0:
/* 800994F0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800994F4  7C 08 02 A6 */	mflr r0
/* 800994F8  90 01 00 14 */	stw r0, 0x14(r1)
/* 800994FC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80099500  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80099504  38 63 00 9C */	addi r3, r3, 0x9c
/* 80099508  38 80 00 16 */	li r4, 0x16
/* 8009950C  38 A0 00 EB */	li r5, 0xeb
/* 80099510  4B F9 9A A9 */	bl setItem__17dSv_player_item_cFiUc
/* 80099514  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80099518  7C 08 03 A6 */	mtlr r0
/* 8009951C  38 21 00 10 */	addi r1, r1, 0x10
/* 80099520  4E 80 00 20 */	blr 
