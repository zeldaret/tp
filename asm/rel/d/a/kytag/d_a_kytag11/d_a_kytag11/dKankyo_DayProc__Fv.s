lbl_80529854:
/* 80529854  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80529858  7C 08 02 A6 */	mflr r0
/* 8052985C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80529860  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80529864  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80529868  38 63 0D D8 */	addi r3, r3, 0xdd8
/* 8052986C  3C 80 80 38 */	lis r4, tempBitLabels__20dSv_event_tmp_flag_c@ha
/* 80529870  38 84 90 C0 */	addi r4, r4, tempBitLabels__20dSv_event_tmp_flag_c@l
/* 80529874  A0 84 00 B6 */	lhz r4, 0xb6(r4)
/* 80529878  4B B0 B1 2C */	b offEventBit__11dSv_event_cFUs
/* 8052987C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80529880  7C 08 03 A6 */	mtlr r0
/* 80529884  38 21 00 10 */	addi r1, r1, 0x10
/* 80529888  4E 80 00 20 */	blr 
