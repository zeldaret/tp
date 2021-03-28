lbl_80099524:
/* 80099524  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80099528  7C 08 02 A6 */	mflr r0
/* 8009952C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80099530  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80099534  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80099538  38 63 00 9C */	addi r3, r3, 0x9c
/* 8009953C  38 80 00 12 */	li r4, 0x12
/* 80099540  38 A0 00 EC */	li r5, 0xec
/* 80099544  4B F9 9A 75 */	bl setItem__17dSv_player_item_cFiUc
/* 80099548  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8009954C  7C 08 03 A6 */	mtlr r0
/* 80099550  38 21 00 10 */	addi r1, r1, 0x10
/* 80099554  4E 80 00 20 */	blr 
