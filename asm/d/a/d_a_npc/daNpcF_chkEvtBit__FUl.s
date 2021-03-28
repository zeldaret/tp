lbl_80155634:
/* 80155634  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80155638  7C 08 02 A6 */	mflr r0
/* 8015563C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80155640  7C 60 1B 78 */	mr r0, r3
/* 80155644  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80155648  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8015564C  38 63 07 F0 */	addi r3, r3, 0x7f0
/* 80155650  54 00 08 3C */	slwi r0, r0, 1
/* 80155654  3C 80 80 3A */	lis r4, saveBitLabels__16dSv_event_flag_c@ha
/* 80155658  38 84 72 88 */	addi r4, r4, saveBitLabels__16dSv_event_flag_c@l
/* 8015565C  7C 84 02 2E */	lhzx r4, r4, r0
/* 80155660  4B ED F3 5D */	bl isEventBit__11dSv_event_cCFUs
/* 80155664  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80155668  7C 08 03 A6 */	mtlr r0
/* 8015566C  38 21 00 10 */	addi r1, r1, 0x10
/* 80155670  4E 80 00 20 */	blr 
