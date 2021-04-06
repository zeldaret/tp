lbl_80099250:
/* 80099250  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80099254  7C 08 02 A6 */	mflr r0
/* 80099258  90 01 00 14 */	stw r0, 0x14(r1)
/* 8009925C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80099260  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80099264  38 63 00 9C */	addi r3, r3, 0x9c
/* 80099268  38 80 00 13 */	li r4, 0x13
/* 8009926C  38 A0 00 90 */	li r5, 0x90
/* 80099270  4B F9 9D 49 */	bl setItem__17dSv_player_item_cFiUc
/* 80099274  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80099278  7C 08 03 A6 */	mtlr r0
/* 8009927C  38 21 00 10 */	addi r1, r1, 0x10
/* 80099280  4E 80 00 20 */	blr 
