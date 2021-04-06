lbl_800989DC:
/* 800989DC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800989E0  7C 08 02 A6 */	mflr r0
/* 800989E4  90 01 00 14 */	stw r0, 0x14(r1)
/* 800989E8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800989EC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 800989F0  38 63 00 9C */	addi r3, r3, 0x9c
/* 800989F4  38 80 00 08 */	li r4, 8
/* 800989F8  38 A0 00 46 */	li r5, 0x46
/* 800989FC  4B F9 A5 BD */	bl setItem__17dSv_player_item_cFiUc
/* 80098A00  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80098A04  7C 08 03 A6 */	mtlr r0
/* 80098A08  38 21 00 10 */	addi r1, r1, 0x10
/* 80098A0C  4E 80 00 20 */	blr 
