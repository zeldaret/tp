lbl_801D9ED4:
/* 801D9ED4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801D9ED8  7C 08 02 A6 */	mflr r0
/* 801D9EDC  90 01 00 14 */	stw r0, 0x14(r1)
/* 801D9EE0  54 64 06 3E */	clrlwi r4, r3, 0x18
/* 801D9EE4  28 04 00 C0 */	cmplwi r4, 0xc0
/* 801D9EE8  41 80 00 40 */	blt lbl_801D9F28
/* 801D9EEC  28 04 00 D7 */	cmplwi r4, 0xd7
/* 801D9EF0  41 81 00 38 */	bgt lbl_801D9F28
/* 801D9EF4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 801D9EF8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 801D9EFC  38 63 07 F0 */	addi r3, r3, 0x7f0
/* 801D9F00  38 04 00 D1 */	addi r0, r4, 0xd1
/* 801D9F04  54 00 08 3C */	slwi r0, r0, 1
/* 801D9F08  3C 80 80 3A */	lis r4, saveBitLabels__16dSv_event_flag_c@ha
/* 801D9F0C  38 84 72 88 */	addi r4, r4, saveBitLabels__16dSv_event_flag_c@l
/* 801D9F10  7C 84 02 2E */	lhzx r4, r4, r0
/* 801D9F14  4B E5 AA A9 */	bl isEventBit__11dSv_event_cCFUs
/* 801D9F18  30 03 FF FF */	addic r0, r3, -1
/* 801D9F1C  7C 00 19 10 */	subfe r0, r0, r3
/* 801D9F20  54 03 06 3E */	clrlwi r3, r0, 0x18
/* 801D9F24  48 00 00 08 */	b lbl_801D9F2C
lbl_801D9F28:
/* 801D9F28  38 60 00 00 */	li r3, 0
lbl_801D9F2C:
/* 801D9F2C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801D9F30  7C 08 03 A6 */	mtlr r0
/* 801D9F34  38 21 00 10 */	addi r1, r1, 0x10
/* 801D9F38  4E 80 00 20 */	blr 
