lbl_80098A48:
/* 80098A48  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80098A4C  7C 08 02 A6 */	mflr r0
/* 80098A50  90 01 00 14 */	stw r0, 0x14(r1)
/* 80098A54  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80098A58  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80098A5C  38 63 00 9C */	addi r3, r3, 0x9c
/* 80098A60  38 80 00 70 */	li r4, 0x70
/* 80098A64  38 A0 00 1E */	li r5, 0x1e
/* 80098A68  4B F9 B0 A1 */	bl setEmptyBombBag__17dSv_player_item_cFUcUc
/* 80098A6C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80098A70  7C 08 03 A6 */	mtlr r0
/* 80098A74  38 21 00 10 */	addi r1, r1, 0x10
/* 80098A78  4E 80 00 20 */	blr 
