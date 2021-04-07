lbl_80099488:
/* 80099488  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8009948C  7C 08 02 A6 */	mflr r0
/* 80099490  90 01 00 14 */	stw r0, 0x14(r1)
/* 80099494  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80099498  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8009949C  38 63 00 9C */	addi r3, r3, 0x9c
/* 800994A0  38 80 00 16 */	li r4, 0x16
/* 800994A4  38 A0 00 E9 */	li r5, 0xe9
/* 800994A8  4B F9 9B 11 */	bl setItem__17dSv_player_item_cFiUc
/* 800994AC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800994B0  7C 08 03 A6 */	mtlr r0
/* 800994B4  38 21 00 10 */	addi r1, r1, 0x10
/* 800994B8  4E 80 00 20 */	blr 
