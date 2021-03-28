lbl_8048ADEC:
/* 8048ADEC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8048ADF0  7C 08 02 A6 */	mflr r0
/* 8048ADF4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8048ADF8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8048ADFC  7C 7F 1B 78 */	mr r31, r3
/* 8048AE00  4B FF FF 81 */	bl getSwbit2__13daTag_Event_cFv
/* 8048AE04  54 64 06 3E */	clrlwi r4, r3, 0x18
/* 8048AE08  2C 04 00 FF */	cmpwi r4, 0xff
/* 8048AE0C  41 82 00 28 */	beq lbl_8048AE34
/* 8048AE10  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8048AE14  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8048AE18  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 8048AE1C  7C 05 07 74 */	extsb r5, r0
/* 8048AE20  4B BA A5 40 */	b isSwitch__10dSv_info_cCFii
/* 8048AE24  2C 03 00 00 */	cmpwi r3, 0
/* 8048AE28  40 82 00 0C */	bne lbl_8048AE34
/* 8048AE2C  38 60 00 00 */	li r3, 0
/* 8048AE30  48 00 00 A8 */	b lbl_8048AED8
lbl_8048AE34:
/* 8048AE34  7F E3 FB 78 */	mr r3, r31
/* 8048AE38  4B FF FF 61 */	bl getInvalidEventFlag__13daTag_Event_cFv
/* 8048AE3C  7C 64 1B 78 */	mr r4, r3
/* 8048AE40  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 8048AE44  28 00 7F FF */	cmplwi r0, 0x7fff
/* 8048AE48  41 82 00 3C */	beq lbl_8048AE84
/* 8048AE4C  28 00 00 00 */	cmplwi r0, 0
/* 8048AE50  41 82 00 34 */	beq lbl_8048AE84
/* 8048AE54  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8048AE58  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8048AE5C  38 63 07 F0 */	addi r3, r3, 0x7f0
/* 8048AE60  54 80 0B FC */	rlwinm r0, r4, 1, 0xf, 0x1e
/* 8048AE64  3C 80 80 3A */	lis r4, saveBitLabels__16dSv_event_flag_c@ha
/* 8048AE68  38 84 72 88 */	addi r4, r4, saveBitLabels__16dSv_event_flag_c@l
/* 8048AE6C  7C 84 02 2E */	lhzx r4, r4, r0
/* 8048AE70  4B BA 9B 4C */	b isEventBit__11dSv_event_cCFUs
/* 8048AE74  2C 03 00 00 */	cmpwi r3, 0
/* 8048AE78  41 82 00 0C */	beq lbl_8048AE84
/* 8048AE7C  38 60 00 00 */	li r3, 0
/* 8048AE80  48 00 00 58 */	b lbl_8048AED8
lbl_8048AE84:
/* 8048AE84  7F E3 FB 78 */	mr r3, r31
/* 8048AE88  4B FF FF 29 */	bl getValidEventFlag__13daTag_Event_cFv
/* 8048AE8C  7C 64 1B 78 */	mr r4, r3
/* 8048AE90  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 8048AE94  28 00 FF FF */	cmplwi r0, 0xffff
/* 8048AE98  41 82 00 3C */	beq lbl_8048AED4
/* 8048AE9C  28 00 00 00 */	cmplwi r0, 0
/* 8048AEA0  41 82 00 34 */	beq lbl_8048AED4
/* 8048AEA4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8048AEA8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8048AEAC  38 63 07 F0 */	addi r3, r3, 0x7f0
/* 8048AEB0  54 80 0B FC */	rlwinm r0, r4, 1, 0xf, 0x1e
/* 8048AEB4  3C 80 80 3A */	lis r4, saveBitLabels__16dSv_event_flag_c@ha
/* 8048AEB8  38 84 72 88 */	addi r4, r4, saveBitLabels__16dSv_event_flag_c@l
/* 8048AEBC  7C 84 02 2E */	lhzx r4, r4, r0
/* 8048AEC0  4B BA 9A FC */	b isEventBit__11dSv_event_cCFUs
/* 8048AEC4  2C 03 00 00 */	cmpwi r3, 0
/* 8048AEC8  40 82 00 0C */	bne lbl_8048AED4
/* 8048AECC  38 60 00 00 */	li r3, 0
/* 8048AED0  48 00 00 08 */	b lbl_8048AED8
lbl_8048AED4:
/* 8048AED4  38 60 00 01 */	li r3, 1
lbl_8048AED8:
/* 8048AED8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8048AEDC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8048AEE0  7C 08 03 A6 */	mtlr r0
/* 8048AEE4  38 21 00 10 */	addi r1, r1, 0x10
/* 8048AEE8  4E 80 00 20 */	blr 
