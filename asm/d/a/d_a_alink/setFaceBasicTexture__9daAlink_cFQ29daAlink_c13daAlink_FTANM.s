lbl_800AF8A0:
/* 800AF8A0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800AF8A4  7C 08 02 A6 */	mflr r0
/* 800AF8A8  90 01 00 24 */	stw r0, 0x24(r1)
/* 800AF8AC  39 61 00 20 */	addi r11, r1, 0x20
/* 800AF8B0  48 2B 29 2D */	bl _savegpr_29
/* 800AF8B4  7C 7D 1B 78 */	mr r29, r3
/* 800AF8B8  7C 9E 23 78 */	mr r30, r4
/* 800AF8BC  38 80 00 00 */	li r4, 0
/* 800AF8C0  4B FF 81 2D */	bl checkWindSpeedOnAngleAnime__9daAlink_cCFi
/* 800AF8C4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800AF8C8  41 82 00 24 */	beq lbl_800AF8EC
/* 800AF8CC  2C 1E 00 00 */	cmpwi r30, 0
/* 800AF8D0  40 82 00 0C */	bne lbl_800AF8DC
/* 800AF8D4  3B C0 00 39 */	li r30, 0x39
/* 800AF8D8  48 00 00 5C */	b lbl_800AF934
lbl_800AF8DC:
/* 800AF8DC  2C 1E 00 8B */	cmpwi r30, 0x8b
/* 800AF8E0  40 82 00 54 */	bne lbl_800AF934
/* 800AF8E4  3B C0 00 98 */	li r30, 0x98
/* 800AF8E8  48 00 00 4C */	b lbl_800AF934
lbl_800AF8EC:
/* 800AF8EC  A0 1D 06 04 */	lhz r0, 0x604(r29)
/* 800AF8F0  2C 00 00 00 */	cmpwi r0, 0
/* 800AF8F4  40 82 00 18 */	bne lbl_800AF90C
/* 800AF8F8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 800AF8FC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 800AF900  A0 03 00 02 */	lhz r0, 2(r3)
/* 800AF904  28 00 00 04 */	cmplwi r0, 4
/* 800AF908  40 81 00 10 */	ble lbl_800AF918
lbl_800AF90C:
/* 800AF90C  80 1D 06 14 */	lwz r0, 0x614(r29)
/* 800AF910  28 00 00 12 */	cmplwi r0, 0x12
/* 800AF914  40 82 00 20 */	bne lbl_800AF934
lbl_800AF918:
/* 800AF918  2C 1E 00 00 */	cmpwi r30, 0
/* 800AF91C  40 82 00 0C */	bne lbl_800AF928
/* 800AF920  3B C0 00 01 */	li r30, 1
/* 800AF924  48 00 00 10 */	b lbl_800AF934
lbl_800AF928:
/* 800AF928  2C 1E 00 8B */	cmpwi r30, 0x8b
/* 800AF92C  40 82 00 08 */	bne lbl_800AF934
/* 800AF930  3B C0 00 8C */	li r30, 0x8c
lbl_800AF934:
/* 800AF934  80 1D 05 74 */	lwz r0, 0x574(r29)
/* 800AF938  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 800AF93C  41 82 00 10 */	beq lbl_800AF94C
/* 800AF940  2C 1E 00 00 */	cmpwi r30, 0
/* 800AF944  40 82 00 08 */	bne lbl_800AF94C
/* 800AF948  3B C0 00 8B */	li r30, 0x8b
lbl_800AF94C:
/* 800AF94C  7F A3 EB 78 */	mr r3, r29
/* 800AF950  57 C5 10 3A */	slwi r5, r30, 2
/* 800AF954  3C 80 80 39 */	lis r4, m_faceTexDataTable__9daAlink_c@ha
/* 800AF958  38 04 14 A8 */	addi r0, r4, m_faceTexDataTable__9daAlink_c@l
/* 800AF95C  7F E0 2A 14 */	add r31, r0, r5
/* 800AF960  A0 9F 00 00 */	lhz r4, 0(r31)
/* 800AF964  38 A0 00 00 */	li r5, 0
/* 800AF968  3C C0 00 01 */	lis r6, 0x0001 /* 0x0000FFFF@ha */
/* 800AF96C  38 C6 FF FF */	addi r6, r6, 0xFFFF /* 0x0000FFFF@l */
/* 800AF970  4B FF FC AD */	bl setFaceBtp__9daAlink_cFUsiUs
/* 800AF974  7F A3 EB 78 */	mr r3, r29
/* 800AF978  A0 9F 00 02 */	lhz r4, 2(r31)
/* 800AF97C  38 A0 00 00 */	li r5, 0
/* 800AF980  3C C0 00 01 */	lis r6, 0x0001 /* 0x0000FFFF@ha */
/* 800AF984  38 C6 FF FF */	addi r6, r6, 0xFFFF /* 0x0000FFFF@l */
/* 800AF988  4B FF FE 49 */	bl setFaceBtk__9daAlink_cFUsiUs
/* 800AF98C  7F C3 F3 78 */	mr r3, r30
/* 800AF990  39 61 00 20 */	addi r11, r1, 0x20
/* 800AF994  48 2B 28 95 */	bl _restgpr_29
/* 800AF998  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800AF99C  7C 08 03 A6 */	mtlr r0
/* 800AF9A0  38 21 00 20 */	addi r1, r1, 0x20
/* 800AF9A4  4E 80 00 20 */	blr 
