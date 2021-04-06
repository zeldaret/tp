lbl_801ADD00:
/* 801ADD00  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801ADD04  7C 08 02 A6 */	mflr r0
/* 801ADD08  90 01 00 14 */	stw r0, 0x14(r1)
/* 801ADD0C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 801ADD10  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 801ADD14  38 63 0D D8 */	addi r3, r3, 0xdd8
/* 801ADD18  3C 80 80 38 */	lis r4, tempBitLabels__20dSv_event_tmp_flag_c@ha /* 0x803790C0@ha */
/* 801ADD1C  38 84 90 C0 */	addi r4, r4, tempBitLabels__20dSv_event_tmp_flag_c@l /* 0x803790C0@l */
/* 801ADD20  A0 84 00 B6 */	lhz r4, 0xb6(r4)
/* 801ADD24  4B E8 6C 81 */	bl offEventBit__11dSv_event_cFUs
/* 801ADD28  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801ADD2C  7C 08 03 A6 */	mtlr r0
/* 801ADD30  38 21 00 10 */	addi r1, r1, 0x10
/* 801ADD34  4E 80 00 20 */	blr 
