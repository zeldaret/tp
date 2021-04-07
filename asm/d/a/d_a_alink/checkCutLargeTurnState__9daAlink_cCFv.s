lbl_800D2ABC:
/* 800D2ABC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800D2AC0  7C 08 02 A6 */	mflr r0
/* 800D2AC4  90 01 00 24 */	stw r0, 0x24(r1)
/* 800D2AC8  39 61 00 20 */	addi r11, r1, 0x20
/* 800D2ACC  48 28 F7 0D */	bl _savegpr_28
/* 800D2AD0  7C 7C 1B 78 */	mr r28, r3
/* 800D2AD4  3B C0 00 01 */	li r30, 1
/* 800D2AD8  3B A0 00 00 */	li r29, 0
/* 800D2ADC  7F DF F3 78 */	mr r31, r30
/* 800D2AE0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800D2AE4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 800D2AE8  38 63 07 F0 */	addi r3, r3, 0x7f0
/* 800D2AEC  38 80 2A 20 */	li r4, 0x2a20
/* 800D2AF0  4B F6 1E CD */	bl isEventBit__11dSv_event_cCFUs
/* 800D2AF4  2C 03 00 00 */	cmpwi r3, 0
/* 800D2AF8  40 82 00 14 */	bne lbl_800D2B0C
/* 800D2AFC  80 1C 05 7C */	lwz r0, 0x57c(r28)
/* 800D2B00  54 00 05 EF */	rlwinm. r0, r0, 0, 0x17, 0x17
/* 800D2B04  40 82 00 08 */	bne lbl_800D2B0C
/* 800D2B08  3B E0 00 00 */	li r31, 0
lbl_800D2B0C:
/* 800D2B0C  57 E0 06 3F */	clrlwi. r0, r31, 0x18
/* 800D2B10  41 82 00 28 */	beq lbl_800D2B38
/* 800D2B14  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800D2B18  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 800D2B1C  A3 E3 00 02 */	lhz r31, 2(r3)
/* 800D2B20  4B F5 B1 89 */	bl dComIfGs_getMaxLifeGauge__Fv
/* 800D2B24  54 63 04 3E */	clrlwi r3, r3, 0x10
/* 800D2B28  57 E0 04 3E */	clrlwi r0, r31, 0x10
/* 800D2B2C  7C 00 18 40 */	cmplw r0, r3
/* 800D2B30  40 82 00 08 */	bne lbl_800D2B38
/* 800D2B34  3B A0 00 01 */	li r29, 1
lbl_800D2B38:
/* 800D2B38  57 A0 06 3F */	clrlwi. r0, r29, 0x18
/* 800D2B3C  40 82 00 30 */	bne lbl_800D2B6C
/* 800D2B40  38 60 00 00 */	li r3, 0
/* 800D2B44  80 1C 06 14 */	lwz r0, 0x614(r28)
/* 800D2B48  28 00 00 24 */	cmplwi r0, 0x24
/* 800D2B4C  40 82 00 14 */	bne lbl_800D2B60
/* 800D2B50  80 1C 06 0C */	lwz r0, 0x60c(r28)
/* 800D2B54  2C 00 00 33 */	cmpwi r0, 0x33
/* 800D2B58  40 82 00 08 */	bne lbl_800D2B60
/* 800D2B5C  38 60 00 01 */	li r3, 1
lbl_800D2B60:
/* 800D2B60  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800D2B64  40 82 00 08 */	bne lbl_800D2B6C
/* 800D2B68  3B C0 00 00 */	li r30, 0
lbl_800D2B6C:
/* 800D2B6C  57 C3 06 3E */	clrlwi r3, r30, 0x18
/* 800D2B70  39 61 00 20 */	addi r11, r1, 0x20
/* 800D2B74  48 28 F6 B1 */	bl _restgpr_28
/* 800D2B78  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800D2B7C  7C 08 03 A6 */	mtlr r0
/* 800D2B80  38 21 00 20 */	addi r1, r1, 0x20
/* 800D2B84  4E 80 00 20 */	blr 
