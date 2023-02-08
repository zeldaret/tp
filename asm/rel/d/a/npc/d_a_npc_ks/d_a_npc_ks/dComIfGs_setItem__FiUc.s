lbl_80A5DE14:
/* 80A5DE14  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A5DE18  7C 08 02 A6 */	mflr r0
/* 80A5DE1C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A5DE20  7C 60 1B 78 */	mr r0, r3
/* 80A5DE24  7C 85 23 78 */	mr r5, r4
/* 80A5DE28  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80A5DE2C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80A5DE30  38 63 00 9C */	addi r3, r3, 0x9c
/* 80A5DE34  7C 04 03 78 */	mr r4, r0
/* 80A5DE38  4B 5D 51 81 */	bl setItem__17dSv_player_item_cFiUc
/* 80A5DE3C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A5DE40  7C 08 03 A6 */	mtlr r0
/* 80A5DE44  38 21 00 10 */	addi r1, r1, 0x10
/* 80A5DE48  4E 80 00 20 */	blr 
