lbl_80098898:
/* 80098898  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8009889C  7C 08 02 A6 */	mflr r0
/* 800988A0  90 01 00 14 */	stw r0, 0x14(r1)
/* 800988A4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800988A8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800988AC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 800988B0  3B E3 00 9C */	addi r31, r3, 0x9c
/* 800988B4  7F E3 FB 78 */	mr r3, r31
/* 800988B8  38 80 00 09 */	li r4, 9
/* 800988BC  38 A0 00 FF */	li r5, 0xff
/* 800988C0  4B F9 A6 F9 */	bl setItem__17dSv_player_item_cFiUc
/* 800988C4  7F E3 FB 78 */	mr r3, r31
/* 800988C8  38 80 00 0A */	li r4, 0xa
/* 800988CC  38 A0 00 47 */	li r5, 0x47
/* 800988D0  4B F9 A6 E9 */	bl setItem__17dSv_player_item_cFiUc
/* 800988D4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800988D8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800988DC  7C 08 03 A6 */	mtlr r0
/* 800988E0  38 21 00 10 */	addi r1, r1, 0x10
/* 800988E4  4E 80 00 20 */	blr 
