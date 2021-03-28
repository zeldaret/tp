lbl_8009850C:
/* 8009850C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80098510  7C 08 02 A6 */	mflr r0
/* 80098514  90 01 00 14 */	stw r0, 0x14(r1)
/* 80098518  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8009851C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80098520  38 63 00 9C */	addi r3, r3, 0x9c
/* 80098524  38 80 00 12 */	li r4, 0x12
/* 80098528  38 A0 00 2D */	li r5, 0x2d
/* 8009852C  4B F9 AA 8D */	bl setItem__17dSv_player_item_cFiUc
/* 80098530  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80098534  7C 08 03 A6 */	mtlr r0
/* 80098538  38 21 00 10 */	addi r1, r1, 0x10
/* 8009853C  4E 80 00 20 */	blr 
