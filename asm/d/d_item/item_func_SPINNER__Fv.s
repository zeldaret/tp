lbl_8009874C:
/* 8009874C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80098750  7C 08 02 A6 */	mflr r0
/* 80098754  90 01 00 14 */	stw r0, 0x14(r1)
/* 80098758  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8009875C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80098760  38 63 00 9C */	addi r3, r3, 0x9c
/* 80098764  38 80 00 02 */	li r4, 2
/* 80098768  38 A0 00 41 */	li r5, 0x41
/* 8009876C  4B F9 A8 4D */	bl setItem__17dSv_player_item_cFiUc
/* 80098770  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80098774  7C 08 03 A6 */	mtlr r0
/* 80098778  38 21 00 10 */	addi r1, r1, 0x10
/* 8009877C  4E 80 00 20 */	blr 
