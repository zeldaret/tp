lbl_802EEF6C:
/* 802EEF6C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 802EEF70  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 802EEF74  38 80 00 00 */	li r4, 0
/* 802EEF78  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000FFFF@ha */
/* 802EEF7C  38 A5 FF FF */	addi r5, r5, 0xFFFF /* 0x0000FFFF@l */
/* 802EEF80  38 00 00 08 */	li r0, 8
/* 802EEF84  7C 09 03 A6 */	mtctr r0
lbl_802EEF88:
/* 802EEF88  38 04 00 04 */	addi r0, r4, 4
/* 802EEF8C  7C A3 03 2E */	sthx r5, r3, r0
/* 802EEF90  38 84 00 02 */	addi r4, r4, 2
/* 802EEF94  42 00 FF F4 */	bdnz lbl_802EEF88
/* 802EEF98  3C 80 00 01 */	lis r4, 0x0001 /* 0x0000FFFF@ha */
/* 802EEF9C  38 04 FF FF */	addi r0, r4, 0xFFFF /* 0x0000FFFF@l */
/* 802EEFA0  B0 03 00 14 */	sth r0, 0x14(r3)
/* 802EEFA4  38 80 00 00 */	li r4, 0
/* 802EEFA8  38 A2 C7 80 */	la r5, j2dDefaultTevOrderInfoNull(r2) /* 80456180-_SDA2_BASE_ */
/* 802EEFAC  38 00 00 08 */	li r0, 8
/* 802EEFB0  7C 09 03 A6 */	mtctr r0
lbl_802EEFB4:
/* 802EEFB4  88 02 C7 80 */	lbz r0, j2dDefaultTevOrderInfoNull(r2)
/* 802EEFB8  7C C3 22 14 */	add r6, r3, r4
/* 802EEFBC  98 06 00 16 */	stb r0, 0x16(r6)
/* 802EEFC0  88 05 00 01 */	lbz r0, 1(r5)
/* 802EEFC4  98 06 00 17 */	stb r0, 0x17(r6)
/* 802EEFC8  88 05 00 02 */	lbz r0, 2(r5)
/* 802EEFCC  98 06 00 18 */	stb r0, 0x18(r6)
/* 802EEFD0  38 84 00 04 */	addi r4, r4, 4
/* 802EEFD4  42 00 FF E0 */	bdnz lbl_802EEFB4
/* 802EEFD8  38 80 00 00 */	li r4, 0
/* 802EEFDC  38 A2 C7 88 */	la r5, j2dDefaultTevColor(r2) /* 80456188-_SDA2_BASE_ */
/* 802EEFE0  A9 02 C7 88 */	lha r8, j2dDefaultTevColor(r2)
/* 802EEFE4  A8 E5 00 02 */	lha r7, 2(r5)
/* 802EEFE8  A8 C5 00 04 */	lha r6, 4(r5)
/* 802EEFEC  A8 A5 00 06 */	lha r5, 6(r5)
/* 802EEFF0  38 00 00 04 */	li r0, 4
/* 802EEFF4  7C 09 03 A6 */	mtctr r0
lbl_802EEFF8:
/* 802EEFF8  7D 23 22 14 */	add r9, r3, r4
/* 802EEFFC  B1 09 00 36 */	sth r8, 0x36(r9)
/* 802EF000  B0 E9 00 38 */	sth r7, 0x38(r9)
/* 802EF004  B0 C9 00 3A */	sth r6, 0x3a(r9)
/* 802EF008  B0 A9 00 3C */	sth r5, 0x3c(r9)
/* 802EF00C  38 84 00 08 */	addi r4, r4, 8
/* 802EF010  42 00 FF E8 */	bdnz lbl_802EEFF8
/* 802EF014  38 00 00 01 */	li r0, 1
/* 802EF018  98 03 00 56 */	stb r0, 0x56(r3)
/* 802EF01C  38 80 00 00 */	li r4, 0
/* 802EF020  38 A0 00 00 */	li r5, 0
/* 802EF024  38 00 00 08 */	li r0, 8
/* 802EF028  7C 09 03 A6 */	mtctr r0
lbl_802EF02C:
/* 802EF02C  38 05 00 C0 */	addi r0, r5, 0xc0
/* 802EF030  7C C3 22 14 */	add r6, r3, r4
/* 802EF034  98 06 00 57 */	stb r0, 0x57(r6)
/* 802EF038  38 05 00 C1 */	addi r0, r5, 0xc1
/* 802EF03C  98 06 00 5B */	stb r0, 0x5b(r6)
/* 802EF040  38 84 00 08 */	addi r4, r4, 8
/* 802EF044  38 A5 00 02 */	addi r5, r5, 2
/* 802EF048  42 00 FF E4 */	bdnz lbl_802EF02C
/* 802EF04C  38 80 00 00 */	li r4, 0
/* 802EF050  81 02 C7 94 */	lwz r8, j2dDefaultTevKColor(r2)
/* 802EF054  38 00 00 04 */	li r0, 4
/* 802EF058  7C 09 03 A6 */	mtctr r0
lbl_802EF05C:
/* 802EF05C  91 01 00 08 */	stw r8, 8(r1)
/* 802EF060  88 E1 00 08 */	lbz r7, 8(r1)
/* 802EF064  98 E1 00 0C */	stb r7, 0xc(r1)
/* 802EF068  88 C1 00 09 */	lbz r6, 9(r1)
/* 802EF06C  98 C1 00 0D */	stb r6, 0xd(r1)
/* 802EF070  88 A1 00 0A */	lbz r5, 0xa(r1)
/* 802EF074  98 A1 00 0E */	stb r5, 0xe(r1)
/* 802EF078  88 01 00 0B */	lbz r0, 0xb(r1)
/* 802EF07C  98 01 00 0F */	stb r0, 0xf(r1)
/* 802EF080  7D 23 22 14 */	add r9, r3, r4
/* 802EF084  98 E9 00 98 */	stb r7, 0x98(r9)
/* 802EF088  98 C9 00 99 */	stb r6, 0x99(r9)
/* 802EF08C  98 A9 00 9A */	stb r5, 0x9a(r9)
/* 802EF090  98 09 00 9B */	stb r0, 0x9b(r9)
/* 802EF094  38 84 00 04 */	addi r4, r4, 4
/* 802EF098  42 00 FF C4 */	bdnz lbl_802EF05C
/* 802EF09C  38 C0 00 00 */	li r6, 0
/* 802EF0A0  38 80 00 FF */	li r4, 0xff
/* 802EF0A4  38 00 00 08 */	li r0, 8
/* 802EF0A8  7C 09 03 A6 */	mtctr r0
lbl_802EF0AC:
/* 802EF0AC  7C A3 32 14 */	add r5, r3, r6
/* 802EF0B0  98 85 00 A8 */	stb r4, 0xa8(r5)
/* 802EF0B4  98 85 00 B0 */	stb r4, 0xb0(r5)
/* 802EF0B8  38 C6 00 01 */	addi r6, r6, 1
/* 802EF0BC  42 00 FF F0 */	bdnz lbl_802EF0AC
/* 802EF0C0  39 20 00 00 */	li r9, 0
/* 802EF0C4  39 02 C7 9C */	la r8, j2dDefaultTevSwapModeTable(r2) /* 8045619C-_SDA2_BASE_ */
/* 802EF0C8  38 00 00 04 */	li r0, 4
/* 802EF0CC  7C 09 03 A6 */	mtctr r0
lbl_802EF0D0:
/* 802EF0D0  88 E8 00 01 */	lbz r7, 1(r8)
/* 802EF0D4  88 C8 00 03 */	lbz r6, 3(r8)
/* 802EF0D8  88 08 00 02 */	lbz r0, 2(r8)
/* 802EF0DC  54 05 15 BA */	rlwinm r5, r0, 2, 0x16, 0x1d
/* 802EF0E0  88 02 C7 9C */	lbz r0, j2dDefaultTevSwapModeTable(r2)
/* 802EF0E4  54 04 34 B2 */	rlwinm r4, r0, 6, 0x12, 0x19
/* 802EF0E8  54 E0 20 36 */	slwi r0, r7, 4
/* 802EF0EC  7C 00 2A 14 */	add r0, r0, r5
/* 802EF0F0  7C 00 32 14 */	add r0, r0, r6
/* 802EF0F4  7C 84 02 14 */	add r4, r4, r0
/* 802EF0F8  38 09 00 B8 */	addi r0, r9, 0xb8
/* 802EF0FC  7C 83 01 AE */	stbx r4, r3, r0
/* 802EF100  39 29 00 01 */	addi r9, r9, 1
/* 802EF104  42 00 FF CC */	bdnz lbl_802EF0D0
/* 802EF108  38 A0 00 00 */	li r5, 0
/* 802EF10C  3C 80 80 3A */	lis r4, j2dDefaultIndTevStageInfo@ha
/* 802EF110  38 84 1B F4 */	addi r4, r4, j2dDefaultIndTevStageInfo@l
/* 802EF114  38 00 00 08 */	li r0, 8
/* 802EF118  7C 09 03 A6 */	mtctr r0
lbl_802EF11C:
/* 802EF11C  80 C4 00 00 */	lwz r6, 0(r4)
/* 802EF120  80 04 00 04 */	lwz r0, 4(r4)
/* 802EF124  90 C1 00 10 */	stw r6, 0x10(r1)
/* 802EF128  90 01 00 14 */	stw r0, 0x14(r1)
/* 802EF12C  80 04 00 08 */	lwz r0, 8(r4)
/* 802EF130  90 01 00 18 */	stw r0, 0x18(r1)
/* 802EF134  8B E1 00 10 */	lbz r31, 0x10(r1)
/* 802EF138  88 01 00 11 */	lbz r0, 0x11(r1)
/* 802EF13C  54 0C 10 3A */	slwi r12, r0, 2
/* 802EF140  88 01 00 12 */	lbz r0, 0x12(r1)
/* 802EF144  54 0B 20 36 */	slwi r11, r0, 4
/* 802EF148  88 01 00 14 */	lbz r0, 0x14(r1)
/* 802EF14C  54 0A 40 2E */	slwi r10, r0, 8
/* 802EF150  88 01 00 15 */	lbz r0, 0x15(r1)
/* 802EF154  54 09 58 28 */	slwi r9, r0, 0xb
/* 802EF158  88 01 00 13 */	lbz r0, 0x13(r1)
/* 802EF15C  54 08 80 1E */	slwi r8, r0, 0x10
/* 802EF160  88 01 00 16 */	lbz r0, 0x16(r1)
/* 802EF164  54 07 A0 16 */	slwi r7, r0, 0x14
/* 802EF168  88 01 00 18 */	lbz r0, 0x18(r1)
/* 802EF16C  54 06 B0 12 */	slwi r6, r0, 0x16
/* 802EF170  88 01 00 17 */	lbz r0, 0x17(r1)
/* 802EF174  54 00 A8 14 */	slwi r0, r0, 0x15
/* 802EF178  7C C0 03 78 */	or r0, r6, r0
/* 802EF17C  7C E0 03 78 */	or r0, r7, r0
/* 802EF180  7D 00 03 78 */	or r0, r8, r0
/* 802EF184  7D 20 03 78 */	or r0, r9, r0
/* 802EF188  7D 40 03 78 */	or r0, r10, r0
/* 802EF18C  7D 60 03 78 */	or r0, r11, r0
/* 802EF190  7D 80 03 78 */	or r0, r12, r0
/* 802EF194  7F E6 03 78 */	or r6, r31, r0
/* 802EF198  38 05 00 BC */	addi r0, r5, 0xbc
/* 802EF19C  7C C3 01 2E */	stwx r6, r3, r0
/* 802EF1A0  38 A5 00 04 */	addi r5, r5, 4
/* 802EF1A4  42 00 FF 78 */	bdnz lbl_802EF11C
/* 802EF1A8  38 80 00 00 */	li r4, 0
/* 802EF1AC  38 A0 00 00 */	li r5, 0
/* 802EF1B0  38 00 00 08 */	li r0, 8
/* 802EF1B4  7C 09 03 A6 */	mtctr r0
lbl_802EF1B8:
/* 802EF1B8  38 04 00 FC */	addi r0, r4, 0xfc
/* 802EF1BC  7C A3 01 2E */	stwx r5, r3, r0
/* 802EF1C0  38 84 00 04 */	addi r4, r4, 4
/* 802EF1C4  42 00 FF F4 */	bdnz lbl_802EF1B8
/* 802EF1C8  38 00 00 00 */	li r0, 0
/* 802EF1CC  90 03 01 1C */	stw r0, 0x11c(r3)
/* 802EF1D0  98 03 01 21 */	stb r0, 0x121(r3)
/* 802EF1D4  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 802EF1D8  38 21 00 30 */	addi r1, r1, 0x30
/* 802EF1DC  4E 80 00 20 */	blr 
