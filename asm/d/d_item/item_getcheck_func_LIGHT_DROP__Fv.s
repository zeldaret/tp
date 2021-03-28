lbl_8009AD9C:
/* 8009AD9C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8009ADA0  7C 08 02 A6 */	mflr r0
/* 8009ADA4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8009ADA8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8009ADAC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8009ADB0  38 63 00 CC */	addi r3, r3, 0xcc
/* 8009ADB4  38 80 00 A0 */	li r4, 0xa0
/* 8009ADB8  4B F9 91 11 */	bl isFirstBit__21dSv_player_get_item_cCFUc
/* 8009ADBC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8009ADC0  7C 08 03 A6 */	mtlr r0
/* 8009ADC4  38 21 00 10 */	addi r1, r1, 0x10
/* 8009ADC8  4E 80 00 20 */	blr 
