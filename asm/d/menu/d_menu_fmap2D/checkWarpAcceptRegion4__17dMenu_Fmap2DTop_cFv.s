lbl_801D7AB4:
/* 801D7AB4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801D7AB8  7C 08 02 A6 */	mflr r0
/* 801D7ABC  90 01 00 14 */	stw r0, 0x14(r1)
/* 801D7AC0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801D7AC4  7C 7F 1B 78 */	mr r31, r3
/* 801D7AC8  4B E5 73 99 */	bl dComIfGp_getNowLevel__Fv
/* 801D7ACC  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 801D7AD0  28 00 00 04 */	cmplwi r0, 4
/* 801D7AD4  40 82 00 20 */	bne lbl_801D7AF4
/* 801D7AD8  7F E3 FB 78 */	mr r3, r31
/* 801D7ADC  38 80 00 03 */	li r4, 3
/* 801D7AE0  4B FF FF 29 */	bl checkWarpAcceptRegion__17dMenu_Fmap2DTop_cFi
/* 801D7AE4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801D7AE8  40 82 00 0C */	bne lbl_801D7AF4
/* 801D7AEC  38 60 00 00 */	li r3, 0
/* 801D7AF0  48 00 00 54 */	b lbl_801D7B44
lbl_801D7AF4:
/* 801D7AF4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 801D7AF8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 801D7AFC  3B E3 07 F0 */	addi r31, r3, 0x7f0
/* 801D7B00  7F E3 FB 78 */	mr r3, r31
/* 801D7B04  3C 80 80 3A */	lis r4, saveBitLabels__16dSv_event_flag_c@ha
/* 801D7B08  38 84 72 88 */	addi r4, r4, saveBitLabels__16dSv_event_flag_c@l
/* 801D7B0C  A0 84 00 D0 */	lhz r4, 0xd0(r4)
/* 801D7B10  4B E5 CE AD */	bl isEventBit__11dSv_event_cCFUs
/* 801D7B14  2C 03 00 00 */	cmpwi r3, 0
/* 801D7B18  41 82 00 28 */	beq lbl_801D7B40
/* 801D7B1C  7F E3 FB 78 */	mr r3, r31
/* 801D7B20  3C 80 80 3A */	lis r4, saveBitLabels__16dSv_event_flag_c@ha
/* 801D7B24  38 84 72 88 */	addi r4, r4, saveBitLabels__16dSv_event_flag_c@l
/* 801D7B28  A0 84 01 F4 */	lhz r4, 0x1f4(r4)
/* 801D7B2C  4B E5 CE 91 */	bl isEventBit__11dSv_event_cCFUs
/* 801D7B30  2C 03 00 00 */	cmpwi r3, 0
/* 801D7B34  40 82 00 0C */	bne lbl_801D7B40
/* 801D7B38  38 60 00 00 */	li r3, 0
/* 801D7B3C  48 00 00 08 */	b lbl_801D7B44
lbl_801D7B40:
/* 801D7B40  38 60 00 01 */	li r3, 1
lbl_801D7B44:
/* 801D7B44  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801D7B48  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801D7B4C  7C 08 03 A6 */	mtlr r0
/* 801D7B50  38 21 00 10 */	addi r1, r1, 0x10
/* 801D7B54  4E 80 00 20 */	blr 
