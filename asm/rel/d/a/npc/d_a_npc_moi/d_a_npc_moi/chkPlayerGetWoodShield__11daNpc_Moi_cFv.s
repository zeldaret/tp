lbl_80A766A0:
/* 80A766A0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A766A4  7C 08 02 A6 */	mflr r0
/* 80A766A8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A766AC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80A766B0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80A766B4  38 63 00 CC */	addi r3, r3, 0xcc
/* 80A766B8  38 80 00 2A */	li r4, 0x2a
/* 80A766BC  4B 5B D8 0D */	bl isFirstBit__21dSv_player_get_item_cCFUc
/* 80A766C0  30 03 FF FF */	addic r0, r3, -1
/* 80A766C4  7C 00 19 10 */	subfe r0, r0, r3
/* 80A766C8  54 03 06 3E */	clrlwi r3, r0, 0x18
/* 80A766CC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A766D0  7C 08 03 A6 */	mtlr r0
/* 80A766D4  38 21 00 10 */	addi r1, r1, 0x10
/* 80A766D8  4E 80 00 20 */	blr 
