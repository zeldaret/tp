lbl_80203A08:
/* 80203A08  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80203A0C  7C 08 02 A6 */	mflr r0
/* 80203A10  90 01 00 24 */	stw r0, 0x24(r1)
/* 80203A14  39 61 00 20 */	addi r11, r1, 0x20
/* 80203A18  48 15 E7 C5 */	bl _savegpr_29
/* 80203A1C  7C 7E 1B 78 */	mr r30, r3
/* 80203A20  7C 9F 23 78 */	mr r31, r4
/* 80203A24  7C BD 2B 78 */	mr r29, r5
/* 80203A28  54 80 04 63 */	rlwinm. r0, r4, 0, 0x11, 0x11
/* 80203A2C  40 82 00 A0 */	bne lbl_80203ACC
/* 80203A30  48 03 47 FD */	bl getStatus__12dMsgObject_cFv
/* 80203A34  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 80203A38  20 60 00 01 */	subfic r3, r0, 1
/* 80203A3C  30 03 FF FF */	addic r0, r3, -1
/* 80203A40  7C 00 19 10 */	subfe r0, r0, r3
/* 80203A44  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 80203A48  40 82 00 84 */	bne lbl_80203ACC
/* 80203A4C  57 A0 06 3F */	clrlwi. r0, r29, 0x18
/* 80203A50  41 82 00 7C */	beq lbl_80203ACC
/* 80203A54  A8 1E 04 94 */	lha r0, 0x494(r30)
/* 80203A58  2C 00 00 00 */	cmpwi r0, 0
/* 80203A5C  41 81 00 70 */	bgt lbl_80203ACC
/* 80203A60  57 E0 06 31 */	rlwinm. r0, r31, 0, 0x18, 0x18
/* 80203A64  40 82 00 68 */	bne lbl_80203ACC
/* 80203A68  57 E0 00 43 */	rlwinm. r0, r31, 0, 1, 1
/* 80203A6C  40 82 00 60 */	bne lbl_80203ACC
/* 80203A70  57 E0 04 E7 */	rlwinm. r0, r31, 0, 0x13, 0x13
/* 80203A74  40 82 00 58 */	bne lbl_80203ACC
/* 80203A78  57 E0 06 73 */	rlwinm. r0, r31, 0, 0x19, 0x19
/* 80203A7C  41 82 00 30 */	beq lbl_80203AAC
/* 80203A80  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80203A84  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80203A88  88 03 4F AD */	lbz r0, 0x4fad(r3)
/* 80203A8C  28 00 00 00 */	cmplwi r0, 0
/* 80203A90  41 82 00 10 */	beq lbl_80203AA0
/* 80203A94  A0 03 4F A4 */	lhz r0, 0x4fa4(r3)
/* 80203A98  54 00 07 FE */	clrlwi r0, r0, 0x1f
/* 80203A9C  48 00 00 08 */	b lbl_80203AA4
lbl_80203AA0:
/* 80203AA0  38 00 00 00 */	li r0, 0
lbl_80203AA4:
/* 80203AA4  54 00 04 3F */	clrlwi. r0, r0, 0x10
/* 80203AA8  40 82 00 24 */	bne lbl_80203ACC
lbl_80203AAC:
/* 80203AAC  57 E0 05 EF */	rlwinm. r0, r31, 0, 0x17, 0x17
/* 80203AB0  40 82 00 1C */	bne lbl_80203ACC
/* 80203AB4  57 E0 07 39 */	rlwinm. r0, r31, 0, 0x1c, 0x1c
/* 80203AB8  40 82 00 14 */	bne lbl_80203ACC
/* 80203ABC  57 E0 06 F7 */	rlwinm. r0, r31, 0, 0x1b, 0x1b
/* 80203AC0  40 82 00 0C */	bne lbl_80203ACC
/* 80203AC4  57 E0 06 B5 */	rlwinm. r0, r31, 0, 0x1a, 0x1a
/* 80203AC8  41 82 00 1C */	beq lbl_80203AE4
lbl_80203ACC:
/* 80203ACC  7F C3 F3 78 */	mr r3, r30
/* 80203AD0  48 00 42 51 */	bl setAlphaButtonYAnimeMin__14dMeterButton_cFv
/* 80203AD4  A0 1E 04 B0 */	lhz r0, 0x4b0(r30)
/* 80203AD8  54 00 06 2C */	rlwinm r0, r0, 0, 0x18, 0x16
/* 80203ADC  B0 1E 04 B0 */	sth r0, 0x4b0(r30)
/* 80203AE0  48 00 00 20 */	b lbl_80203B00
lbl_80203AE4:
/* 80203AE4  7F C3 F3 78 */	mr r3, r30
/* 80203AE8  48 00 42 C9 */	bl setAlphaButtonYAnimeMax__14dMeterButton_cFv
/* 80203AEC  A0 1E 04 B0 */	lhz r0, 0x4b0(r30)
/* 80203AF0  60 00 01 00 */	ori r0, r0, 0x100
/* 80203AF4  B0 1E 04 B0 */	sth r0, 0x4b0(r30)
/* 80203AF8  38 60 00 01 */	li r3, 1
/* 80203AFC  48 00 00 08 */	b lbl_80203B04
lbl_80203B00:
/* 80203B00  38 60 00 00 */	li r3, 0
lbl_80203B04:
/* 80203B04  39 61 00 20 */	addi r11, r1, 0x20
/* 80203B08  48 15 E7 21 */	bl _restgpr_29
/* 80203B0C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80203B10  7C 08 03 A6 */	mtlr r0
/* 80203B14  38 21 00 20 */	addi r1, r1, 0x20
/* 80203B18  4E 80 00 20 */	blr 
