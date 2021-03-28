lbl_802A7CD4:
/* 802A7CD4  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 802A7CD8  7C 08 02 A6 */	mflr r0
/* 802A7CDC  90 01 00 74 */	stw r0, 0x74(r1)
/* 802A7CE0  39 61 00 70 */	addi r11, r1, 0x70
/* 802A7CE4  48 0B A4 ED */	bl _savegpr_26
/* 802A7CE8  7C 7B 1B 78 */	mr r27, r3
/* 802A7CEC  7C 9C 23 78 */	mr r28, r4
/* 802A7CF0  7C BD 2B 78 */	mr r29, r5
/* 802A7CF4  7C DE 33 78 */	mr r30, r6
/* 802A7CF8  83 E3 00 08 */	lwz r31, 8(r3)
/* 802A7CFC  28 1F 00 00 */	cmplwi r31, 0
/* 802A7D00  41 82 00 30 */	beq lbl_802A7D30
/* 802A7D04  7F E3 FB 78 */	mr r3, r31
/* 802A7D08  48 00 0F D5 */	bl toMessageIndex_messageID__Q28JMessage9TResourceCFUlUlPb
/* 802A7D0C  7C 64 1B 78 */	mr r4, r3
/* 802A7D10  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 802A7D14  28 00 FF FF */	cmplwi r0, 0xffff
/* 802A7D18  41 82 00 18 */	beq lbl_802A7D30
/* 802A7D1C  80 7F 00 0C */	lwz r3, 0xc(r31)
/* 802A7D20  A0 03 00 0C */	lhz r0, 0xc(r3)
/* 802A7D24  54 03 80 1E */	slwi r3, r0, 0x10
/* 802A7D28  50 83 04 3E */	rlwimi r3, r4, 0, 0x10, 0x1f
/* 802A7D2C  48 00 00 F4 */	b lbl_802A7E20
lbl_802A7D30:
/* 802A7D30  80 7B 00 04 */	lwz r3, 4(r27)
/* 802A7D34  28 03 00 00 */	cmplwi r3, 0
/* 802A7D38  40 82 00 0C */	bne lbl_802A7D44
/* 802A7D3C  38 60 00 00 */	li r3, 0
/* 802A7D40  48 00 00 08 */	b lbl_802A7D48
lbl_802A7D44:
/* 802A7D44  80 63 00 04 */	lwz r3, 4(r3)
lbl_802A7D48:
/* 802A7D48  28 03 00 00 */	cmplwi r3, 0
/* 802A7D4C  40 82 00 0C */	bne lbl_802A7D58
/* 802A7D50  38 60 FF FF */	li r3, -1
/* 802A7D54  48 00 00 CC */	b lbl_802A7E20
lbl_802A7D58:
/* 802A7D58  38 63 00 0C */	addi r3, r3, 0xc
/* 802A7D5C  90 61 00 24 */	stw r3, 0x24(r1)
/* 802A7D60  90 61 00 20 */	stw r3, 0x20(r1)
/* 802A7D64  90 61 00 3C */	stw r3, 0x3c(r1)
/* 802A7D68  90 61 00 38 */	stw r3, 0x38(r1)
/* 802A7D6C  90 61 00 1C */	stw r3, 0x1c(r1)
/* 802A7D70  90 61 00 4C */	stw r3, 0x4c(r1)
/* 802A7D74  90 61 00 48 */	stw r3, 0x48(r1)
/* 802A7D78  80 03 00 00 */	lwz r0, 0(r3)
/* 802A7D7C  90 01 00 18 */	stw r0, 0x18(r1)
/* 802A7D80  90 01 00 14 */	stw r0, 0x14(r1)
/* 802A7D84  90 01 00 34 */	stw r0, 0x34(r1)
/* 802A7D88  90 01 00 30 */	stw r0, 0x30(r1)
/* 802A7D8C  90 01 00 10 */	stw r0, 0x10(r1)
/* 802A7D90  90 01 00 44 */	stw r0, 0x44(r1)
/* 802A7D94  90 01 00 40 */	stw r0, 0x40(r1)
/* 802A7D98  90 01 00 50 */	stw r0, 0x50(r1)
/* 802A7D9C  90 61 00 54 */	stw r3, 0x54(r1)
/* 802A7DA0  48 00 00 54 */	b lbl_802A7DF4
lbl_802A7DA4:
/* 802A7DA4  83 41 00 50 */	lwz r26, 0x50(r1)
/* 802A7DA8  80 1A 00 00 */	lwz r0, 0(r26)
/* 802A7DAC  90 01 00 50 */	stw r0, 0x50(r1)
/* 802A7DB0  7C 1A F8 40 */	cmplw r26, r31
/* 802A7DB4  41 82 00 40 */	beq lbl_802A7DF4
/* 802A7DB8  7F 43 D3 78 */	mr r3, r26
/* 802A7DBC  7F 84 E3 78 */	mr r4, r28
/* 802A7DC0  7F A5 EB 78 */	mr r5, r29
/* 802A7DC4  7F C6 F3 78 */	mr r6, r30
/* 802A7DC8  48 00 0F 15 */	bl toMessageIndex_messageID__Q28JMessage9TResourceCFUlUlPb
/* 802A7DCC  7C 64 1B 78 */	mr r4, r3
/* 802A7DD0  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 802A7DD4  28 00 FF FF */	cmplwi r0, 0xffff
/* 802A7DD8  41 82 00 1C */	beq lbl_802A7DF4
/* 802A7DDC  93 5B 00 08 */	stw r26, 8(r27)
/* 802A7DE0  80 7A 00 0C */	lwz r3, 0xc(r26)
/* 802A7DE4  A0 03 00 0C */	lhz r0, 0xc(r3)
/* 802A7DE8  54 03 80 1E */	slwi r3, r0, 0x10
/* 802A7DEC  50 83 04 3E */	rlwimi r3, r4, 0, 0x10, 0x1f
/* 802A7DF0  48 00 00 30 */	b lbl_802A7E20
lbl_802A7DF4:
/* 802A7DF4  80 61 00 54 */	lwz r3, 0x54(r1)
/* 802A7DF8  90 61 00 2C */	stw r3, 0x2c(r1)
/* 802A7DFC  80 01 00 50 */	lwz r0, 0x50(r1)
/* 802A7E00  90 01 00 28 */	stw r0, 0x28(r1)
/* 802A7E04  90 61 00 0C */	stw r3, 0xc(r1)
/* 802A7E08  90 01 00 08 */	stw r0, 8(r1)
/* 802A7E0C  7C 00 18 50 */	subf r0, r0, r3
/* 802A7E10  7C 00 00 34 */	cntlzw r0, r0
/* 802A7E14  54 00 DE 3F */	rlwinm. r0, r0, 0x1b, 0x18, 0x1f
/* 802A7E18  41 82 FF 8C */	beq lbl_802A7DA4
/* 802A7E1C  38 60 FF FF */	li r3, -1
lbl_802A7E20:
/* 802A7E20  39 61 00 70 */	addi r11, r1, 0x70
/* 802A7E24  48 0B A3 F9 */	bl _restgpr_26
/* 802A7E28  80 01 00 74 */	lwz r0, 0x74(r1)
/* 802A7E2C  7C 08 03 A6 */	mtlr r0
/* 802A7E30  38 21 00 70 */	addi r1, r1, 0x70
/* 802A7E34  4E 80 00 20 */	blr 
