lbl_80BF50CC:
/* 80BF50CC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BF50D0  7C 08 02 A6 */	mflr r0
/* 80BF50D4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BF50D8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BF50DC  7C 7F 1B 78 */	mr r31, r3
/* 80BF50E0  A0 03 05 7A */	lhz r0, 0x57a(r3)
/* 80BF50E4  28 00 03 FF */	cmplwi r0, 0x3ff
/* 80BF50E8  41 82 00 2C */	beq lbl_80BF5114
/* 80BF50EC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80BF50F0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80BF50F4  38 63 07 F0 */	addi r3, r3, 0x7f0
/* 80BF50F8  54 00 0B FC */	rlwinm r0, r0, 1, 0xf, 0x1e
/* 80BF50FC  3C 80 80 3A */	lis r4, saveBitLabels__16dSv_event_flag_c@ha
/* 80BF5100  38 84 72 88 */	addi r4, r4, saveBitLabels__16dSv_event_flag_c@l
/* 80BF5104  7C 84 02 2E */	lhzx r4, r4, r0
/* 80BF5108  4B 43 F8 B4 */	b isEventBit__11dSv_event_cCFUs
/* 80BF510C  2C 03 00 00 */	cmpwi r3, 0
/* 80BF5110  40 82 00 38 */	bne lbl_80BF5148
lbl_80BF5114:
/* 80BF5114  A0 1F 05 78 */	lhz r0, 0x578(r31)
/* 80BF5118  28 00 03 FF */	cmplwi r0, 0x3ff
/* 80BF511C  41 82 00 34 */	beq lbl_80BF5150
/* 80BF5120  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80BF5124  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80BF5128  38 63 07 F0 */	addi r3, r3, 0x7f0
/* 80BF512C  54 00 0B FC */	rlwinm r0, r0, 1, 0xf, 0x1e
/* 80BF5130  3C 80 80 3A */	lis r4, saveBitLabels__16dSv_event_flag_c@ha
/* 80BF5134  38 84 72 88 */	addi r4, r4, saveBitLabels__16dSv_event_flag_c@l
/* 80BF5138  7C 84 02 2E */	lhzx r4, r4, r0
/* 80BF513C  4B 43 F8 80 */	b isEventBit__11dSv_event_cCFUs
/* 80BF5140  2C 03 00 00 */	cmpwi r3, 0
/* 80BF5144  40 82 00 0C */	bne lbl_80BF5150
lbl_80BF5148:
/* 80BF5148  38 60 00 00 */	li r3, 0
/* 80BF514C  48 00 00 08 */	b lbl_80BF5154
lbl_80BF5150:
/* 80BF5150  38 60 00 01 */	li r3, 1
lbl_80BF5154:
/* 80BF5154  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BF5158  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BF515C  7C 08 03 A6 */	mtlr r0
/* 80BF5160  38 21 00 10 */	addi r1, r1, 0x10
/* 80BF5164  4E 80 00 20 */	blr 
