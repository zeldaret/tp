lbl_800991E8:
/* 800991E8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800991EC  7C 08 02 A6 */	mflr r0
/* 800991F0  90 01 00 14 */	stw r0, 0x14(r1)
/* 800991F4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 800991F8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 800991FC  38 63 00 9C */	addi r3, r3, 0x9c
/* 80099200  38 80 00 15 */	li r4, 0x15
/* 80099204  38 A0 00 83 */	li r5, 0x83
/* 80099208  4B F9 9D B1 */	bl setItem__17dSv_player_item_cFiUc
/* 8009920C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80099210  7C 08 03 A6 */	mtlr r0
/* 80099214  38 21 00 10 */	addi r1, r1, 0x10
/* 80099218  4E 80 00 20 */	blr 
