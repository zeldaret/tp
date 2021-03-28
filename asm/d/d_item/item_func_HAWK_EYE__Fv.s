lbl_80098690:
/* 80098690  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80098694  7C 08 02 A6 */	mflr r0
/* 80098698  90 01 00 14 */	stw r0, 0x14(r1)
/* 8009869C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 800986A0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 800986A4  38 63 00 9C */	addi r3, r3, 0x9c
/* 800986A8  38 80 00 05 */	li r4, 5
/* 800986AC  38 A0 00 3E */	li r5, 0x3e
/* 800986B0  4B F9 A9 09 */	bl setItem__17dSv_player_item_cFiUc
/* 800986B4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800986B8  7C 08 03 A6 */	mtlr r0
/* 800986BC  38 21 00 10 */	addi r1, r1, 0x10
/* 800986C0  4E 80 00 20 */	blr 
