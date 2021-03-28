lbl_8014CB2C:
/* 8014CB2C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8014CB30  7C 08 02 A6 */	mflr r0
/* 8014CB34  90 01 00 14 */	stw r0, 0x14(r1)
/* 8014CB38  7C 60 1B 78 */	mr r0, r3
/* 8014CB3C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8014CB40  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8014CB44  38 63 0D D8 */	addi r3, r3, 0xdd8
/* 8014CB48  54 00 08 3C */	slwi r0, r0, 1
/* 8014CB4C  3C 80 80 38 */	lis r4, tempBitLabels__20dSv_event_tmp_flag_c@ha
/* 8014CB50  38 84 90 C0 */	addi r4, r4, tempBitLabels__20dSv_event_tmp_flag_c@l
/* 8014CB54  7C 84 02 2E */	lhzx r4, r4, r0
/* 8014CB58  4B EE 7E 4D */	bl offEventBit__11dSv_event_cFUs
/* 8014CB5C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8014CB60  7C 08 03 A6 */	mtlr r0
/* 8014CB64  38 21 00 10 */	addi r1, r1, 0x10
/* 8014CB68  4E 80 00 20 */	blr 
