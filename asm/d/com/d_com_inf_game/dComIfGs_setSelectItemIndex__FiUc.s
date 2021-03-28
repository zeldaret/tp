lbl_8002DCC4:
/* 8002DCC4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8002DCC8  7C 08 02 A6 */	mflr r0
/* 8002DCCC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8002DCD0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8002DCD4  7C 7F 1B 78 */	mr r31, r3
/* 8002DCD8  7C 85 23 78 */	mr r5, r4
/* 8002DCDC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8002DCE0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8002DCE4  7F E4 FB 78 */	mr r4, r31
/* 8002DCE8  48 00 4D 61 */	bl setSelectItemIndex__21dSv_player_status_a_cFiUc
/* 8002DCEC  7F E3 FB 78 */	mr r3, r31
/* 8002DCF0  48 00 01 05 */	bl dComIfGp_setSelectItem__Fi
/* 8002DCF4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8002DCF8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8002DCFC  7C 08 03 A6 */	mtlr r0
/* 8002DD00  38 21 00 10 */	addi r1, r1, 0x10
/* 8002DD04  4E 80 00 20 */	blr 
