lbl_800994BC:
/* 800994BC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800994C0  7C 08 02 A6 */	mflr r0
/* 800994C4  90 01 00 14 */	stw r0, 0x14(r1)
/* 800994C8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 800994CC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 800994D0  38 63 00 9C */	addi r3, r3, 0x9c
/* 800994D4  38 80 00 16 */	li r4, 0x16
/* 800994D8  38 A0 00 EA */	li r5, 0xea
/* 800994DC  4B F9 9A DD */	bl setItem__17dSv_player_item_cFiUc
/* 800994E0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800994E4  7C 08 03 A6 */	mtlr r0
/* 800994E8  38 21 00 10 */	addi r1, r1, 0x10
/* 800994EC  4E 80 00 20 */	blr 
