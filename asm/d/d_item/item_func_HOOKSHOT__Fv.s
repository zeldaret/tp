lbl_800987FC:
/* 800987FC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80098800  7C 08 02 A6 */	mflr r0
/* 80098804  90 01 00 14 */	stw r0, 0x14(r1)
/* 80098808  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8009880C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80098810  38 63 00 9C */	addi r3, r3, 0x9c
/* 80098814  38 80 00 09 */	li r4, 9
/* 80098818  38 A0 00 44 */	li r5, 0x44
/* 8009881C  4B F9 A7 9D */	bl setItem__17dSv_player_item_cFiUc
/* 80098820  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80098824  7C 08 03 A6 */	mtlr r0
/* 80098828  38 21 00 10 */	addi r1, r1, 0x10
/* 8009882C  4E 80 00 20 */	blr 
