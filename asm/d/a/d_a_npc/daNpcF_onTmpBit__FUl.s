lbl_801556F4:
/* 801556F4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801556F8  7C 08 02 A6 */	mflr r0
/* 801556FC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80155700  7C 60 1B 78 */	mr r0, r3
/* 80155704  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80155708  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8015570C  38 63 0D D8 */	addi r3, r3, 0xdd8
/* 80155710  54 00 08 3C */	slwi r0, r0, 1
/* 80155714  3C 80 80 38 */	lis r4, tempBitLabels__20dSv_event_tmp_flag_c@ha /* 0x803790C0@ha */
/* 80155718  38 84 90 C0 */	addi r4, r4, tempBitLabels__20dSv_event_tmp_flag_c@l /* 0x803790C0@l */
/* 8015571C  7C 84 02 2E */	lhzx r4, r4, r0
/* 80155720  4B ED F2 6D */	bl onEventBit__11dSv_event_cFUs
/* 80155724  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80155728  7C 08 03 A6 */	mtlr r0
/* 8015572C  38 21 00 10 */	addi r1, r1, 0x10
/* 80155730  4E 80 00 20 */	blr 
