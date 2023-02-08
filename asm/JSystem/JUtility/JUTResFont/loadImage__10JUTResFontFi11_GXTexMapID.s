lbl_802DFF60:
/* 802DFF60  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802DFF64  7C 08 02 A6 */	mflr r0
/* 802DFF68  90 01 00 24 */	stw r0, 0x24(r1)
/* 802DFF6C  39 61 00 20 */	addi r11, r1, 0x20
/* 802DFF70  48 08 22 69 */	bl _savegpr_28
/* 802DFF74  7C 7C 1B 78 */	mr r28, r3
/* 802DFF78  7C BD 2B 78 */	mr r29, r5
/* 802DFF7C  3B E0 00 00 */	li r31, 0
/* 802DFF80  38 60 00 00 */	li r3, 0
/* 802DFF84  A0 FC 00 62 */	lhz r7, 0x62(r28)
/* 802DFF88  7C E9 03 A6 */	mtctr r7
/* 802DFF8C  2C 07 00 00 */	cmpwi r7, 0
/* 802DFF90  40 81 00 38 */	ble lbl_802DFFC8
lbl_802DFF94:
/* 802DFF94  80 BC 00 58 */	lwz r5, 0x58(r28)
/* 802DFF98  7C A5 18 2E */	lwzx r5, r5, r3
/* 802DFF9C  A0 C5 00 08 */	lhz r6, 8(r5)
/* 802DFFA0  7C 06 20 00 */	cmpw r6, r4
/* 802DFFA4  41 81 00 18 */	bgt lbl_802DFFBC
/* 802DFFA8  A0 05 00 0A */	lhz r0, 0xa(r5)
/* 802DFFAC  7C 04 00 00 */	cmpw r4, r0
/* 802DFFB0  41 81 00 0C */	bgt lbl_802DFFBC
/* 802DFFB4  7C 86 20 50 */	subf r4, r6, r4
/* 802DFFB8  48 00 00 10 */	b lbl_802DFFC8
lbl_802DFFBC:
/* 802DFFBC  3B FF 00 01 */	addi r31, r31, 1
/* 802DFFC0  38 63 00 04 */	addi r3, r3, 4
/* 802DFFC4  42 00 FF D0 */	bdnz lbl_802DFF94
lbl_802DFFC8:
/* 802DFFC8  7C 1F 38 00 */	cmpw r31, r7
/* 802DFFCC  41 82 00 E0 */	beq lbl_802E00AC
/* 802DFFD0  80 7C 00 58 */	lwz r3, 0x58(r28)
/* 802DFFD4  57 E6 10 3A */	slwi r6, r31, 2
/* 802DFFD8  7C A3 30 2E */	lwzx r5, r3, r6
/* 802DFFDC  A0 65 00 16 */	lhz r3, 0x16(r5)
/* 802DFFE0  A0 05 00 18 */	lhz r0, 0x18(r5)
/* 802DFFE4  7C 03 01 D6 */	mullw r0, r3, r0
/* 802DFFE8  7F C4 03 D6 */	divw r30, r4, r0
/* 802DFFEC  7C 1E 01 D6 */	mullw r0, r30, r0
/* 802DFFF0  7C 80 20 50 */	subf r4, r0, r4
/* 802DFFF4  7C E4 1B D6 */	divw r7, r4, r3
/* 802DFFF8  7C 07 19 D6 */	mullw r0, r7, r3
/* 802DFFFC  7C 60 20 50 */	subf r3, r0, r4
/* 802E0000  A0 05 00 0C */	lhz r0, 0xc(r5)
/* 802E0004  7C 03 01 D6 */	mullw r0, r3, r0
/* 802E0008  90 1C 00 1C */	stw r0, 0x1c(r28)
/* 802E000C  80 7C 00 58 */	lwz r3, 0x58(r28)
/* 802E0010  7C 63 30 2E */	lwzx r3, r3, r6
/* 802E0014  A0 03 00 0E */	lhz r0, 0xe(r3)
/* 802E0018  7C 07 01 D6 */	mullw r0, r7, r0
/* 802E001C  90 1C 00 20 */	stw r0, 0x20(r28)
/* 802E0020  80 1C 00 44 */	lwz r0, 0x44(r28)
/* 802E0024  7C 1E 00 00 */	cmpw r30, r0
/* 802E0028  40 82 00 10 */	bne lbl_802E0038
/* 802E002C  A0 1C 00 66 */	lhz r0, 0x66(r28)
/* 802E0030  7C 1F 00 00 */	cmpw r31, r0
/* 802E0034  41 82 00 6C */	beq lbl_802E00A0
lbl_802E0038:
/* 802E0038  80 7C 00 58 */	lwz r3, 0x58(r28)
/* 802E003C  7C E3 30 2E */	lwzx r7, r3, r6
/* 802E0040  38 7C 00 24 */	addi r3, r28, 0x24
/* 802E0044  80 07 00 10 */	lwz r0, 0x10(r7)
/* 802E0048  7C 9E 01 D6 */	mullw r4, r30, r0
/* 802E004C  38 84 00 20 */	addi r4, r4, 0x20
/* 802E0050  7C 87 22 14 */	add r4, r7, r4
/* 802E0054  A0 A7 00 1A */	lhz r5, 0x1a(r7)
/* 802E0058  A0 C7 00 1C */	lhz r6, 0x1c(r7)
/* 802E005C  A0 E7 00 14 */	lhz r7, 0x14(r7)
/* 802E0060  39 00 00 00 */	li r8, 0
/* 802E0064  39 20 00 00 */	li r9, 0
/* 802E0068  39 40 00 00 */	li r10, 0
/* 802E006C  48 07 DD D5 */	bl GXInitTexObj
/* 802E0070  38 7C 00 24 */	addi r3, r28, 0x24
/* 802E0074  38 80 00 01 */	li r4, 1
/* 802E0078  38 A0 00 01 */	li r5, 1
/* 802E007C  C0 22 C5 F0 */	lfs f1, lit_647(r2)
/* 802E0080  FC 40 08 90 */	fmr f2, f1
/* 802E0084  FC 60 08 90 */	fmr f3, f1
/* 802E0088  38 C0 00 00 */	li r6, 0
/* 802E008C  38 E0 00 00 */	li r7, 0
/* 802E0090  39 00 00 00 */	li r8, 0
/* 802E0094  48 07 E0 41 */	bl GXInitTexObjLOD
/* 802E0098  93 DC 00 44 */	stw r30, 0x44(r28)
/* 802E009C  B3 FC 00 66 */	sth r31, 0x66(r28)
lbl_802E00A0:
/* 802E00A0  38 7C 00 24 */	addi r3, r28, 0x24
/* 802E00A4  7F A4 EB 78 */	mr r4, r29
/* 802E00A8  48 07 E3 6D */	bl GXLoadTexObj
lbl_802E00AC:
/* 802E00AC  39 61 00 20 */	addi r11, r1, 0x20
/* 802E00B0  48 08 21 75 */	bl _restgpr_28
/* 802E00B4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802E00B8  7C 08 03 A6 */	mtlr r0
/* 802E00BC  38 21 00 20 */	addi r1, r1, 0x20
/* 802E00C0  4E 80 00 20 */	blr 
