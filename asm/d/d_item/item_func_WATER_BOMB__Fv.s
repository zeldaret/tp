lbl_80098DF0:
/* 80098DF0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80098DF4  7C 08 02 A6 */	mflr r0
/* 80098DF8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80098DFC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80098E00  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80098E04  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80098E08  3B E3 00 9C */	addi r31, r3, 0x9c
/* 80098E0C  7F E3 FB 78 */	mr r3, r31
/* 80098E10  4B F9 AC 79 */	bl setEmptyBombBag__17dSv_player_item_cFv
/* 80098E14  7F E3 FB 78 */	mr r3, r31
/* 80098E18  38 80 00 71 */	li r4, 0x71
/* 80098E1C  38 A0 00 01 */	li r5, 1
/* 80098E20  4B F9 AC 01 */	bl setEmptyBombBagItemIn__17dSv_player_item_cFUcb
/* 80098E24  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80098E28  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80098E2C  7C 08 03 A6 */	mtlr r0
/* 80098E30  38 21 00 10 */	addi r1, r1, 0x10
/* 80098E34  4E 80 00 20 */	blr 
