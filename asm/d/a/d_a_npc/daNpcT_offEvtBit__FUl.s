lbl_8014CA6C:
/* 8014CA6C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8014CA70  7C 08 02 A6 */	mflr r0
/* 8014CA74  90 01 00 14 */	stw r0, 0x14(r1)
/* 8014CA78  7C 60 1B 78 */	mr r0, r3
/* 8014CA7C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8014CA80  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8014CA84  38 63 07 F0 */	addi r3, r3, 0x7f0
/* 8014CA88  54 00 08 3C */	slwi r0, r0, 1
/* 8014CA8C  3C 80 80 3A */	lis r4, saveBitLabels__16dSv_event_flag_c@ha
/* 8014CA90  38 84 72 88 */	addi r4, r4, saveBitLabels__16dSv_event_flag_c@l
/* 8014CA94  7C 84 02 2E */	lhzx r4, r4, r0
/* 8014CA98  4B EE 7F 0D */	bl offEventBit__11dSv_event_cFUs
/* 8014CA9C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8014CAA0  7C 08 03 A6 */	mtlr r0
/* 8014CAA4  38 21 00 10 */	addi r1, r1, 0x10
/* 8014CAA8  4E 80 00 20 */	blr 
