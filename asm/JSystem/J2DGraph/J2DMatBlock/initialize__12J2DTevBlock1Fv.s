lbl_802EBA50:
/* 802EBA50  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802EBA54  3C 80 00 01 */	lis r4, 0x0001 /* 0x0000FFFF@ha */
/* 802EBA58  38 04 FF FF */	addi r0, r4, 0xFFFF /* 0x0000FFFF@l */
/* 802EBA5C  B0 03 00 04 */	sth r0, 4(r3)
/* 802EBA60  B0 03 00 06 */	sth r0, 6(r3)
/* 802EBA64  88 02 C7 80 */	lbz r0, j2dDefaultTevOrderInfoNull(r2)
/* 802EBA68  98 03 00 08 */	stb r0, 8(r3)
/* 802EBA6C  38 82 C7 80 */	la r4, j2dDefaultTevOrderInfoNull(r2) /* 80456180-_SDA2_BASE_ */
/* 802EBA70  88 04 00 01 */	lbz r0, 1(r4)
/* 802EBA74  98 03 00 09 */	stb r0, 9(r3)
/* 802EBA78  88 04 00 02 */	lbz r0, 2(r4)
/* 802EBA7C  98 03 00 0A */	stb r0, 0xa(r3)
/* 802EBA80  38 80 00 00 */	li r4, 0
/* 802EBA84  38 A2 C7 88 */	la r5, j2dDefaultTevColor(r2) /* 80456188-_SDA2_BASE_ */
/* 802EBA88  A9 02 C7 88 */	lha r8, j2dDefaultTevColor(r2)
/* 802EBA8C  A8 E5 00 02 */	lha r7, 2(r5)
/* 802EBA90  A8 C5 00 04 */	lha r6, 4(r5)
/* 802EBA94  A8 A5 00 06 */	lha r5, 6(r5)
/* 802EBA98  38 00 00 04 */	li r0, 4
/* 802EBA9C  7C 09 03 A6 */	mtctr r0
lbl_802EBAA0:
/* 802EBAA0  7D 23 22 14 */	add r9, r3, r4
/* 802EBAA4  B1 09 00 0C */	sth r8, 0xc(r9)
/* 802EBAA8  B0 E9 00 0E */	sth r7, 0xe(r9)
/* 802EBAAC  B0 C9 00 10 */	sth r6, 0x10(r9)
/* 802EBAB0  B0 A9 00 12 */	sth r5, 0x12(r9)
/* 802EBAB4  38 84 00 08 */	addi r4, r4, 8
/* 802EBAB8  42 00 FF E8 */	bdnz lbl_802EBAA0
/* 802EBABC  38 00 00 C0 */	li r0, 0xc0
/* 802EBAC0  98 03 00 2C */	stb r0, 0x2c(r3)
/* 802EBAC4  38 00 00 C1 */	li r0, 0xc1
/* 802EBAC8  98 03 00 30 */	stb r0, 0x30(r3)
/* 802EBACC  38 80 00 00 */	li r4, 0
/* 802EBAD0  81 02 C7 94 */	lwz r8, j2dDefaultTevKColor(r2)
/* 802EBAD4  38 00 00 04 */	li r0, 4
/* 802EBAD8  7C 09 03 A6 */	mtctr r0
lbl_802EBADC:
/* 802EBADC  91 01 00 08 */	stw r8, 8(r1)
/* 802EBAE0  88 E1 00 08 */	lbz r7, 8(r1)
/* 802EBAE4  98 E1 00 0C */	stb r7, 0xc(r1)
/* 802EBAE8  88 C1 00 09 */	lbz r6, 9(r1)
/* 802EBAEC  98 C1 00 0D */	stb r6, 0xd(r1)
/* 802EBAF0  88 A1 00 0A */	lbz r5, 0xa(r1)
/* 802EBAF4  98 A1 00 0E */	stb r5, 0xe(r1)
/* 802EBAF8  88 01 00 0B */	lbz r0, 0xb(r1)
/* 802EBAFC  98 01 00 0F */	stb r0, 0xf(r1)
/* 802EBB00  7D 23 22 14 */	add r9, r3, r4
/* 802EBB04  98 E9 00 34 */	stb r7, 0x34(r9)
/* 802EBB08  98 C9 00 35 */	stb r6, 0x35(r9)
/* 802EBB0C  98 A9 00 36 */	stb r5, 0x36(r9)
/* 802EBB10  98 09 00 37 */	stb r0, 0x37(r9)
/* 802EBB14  38 84 00 04 */	addi r4, r4, 4
/* 802EBB18  42 00 FF C4 */	bdnz lbl_802EBADC
/* 802EBB1C  38 00 00 FF */	li r0, 0xff
/* 802EBB20  98 03 00 44 */	stb r0, 0x44(r3)
/* 802EBB24  98 03 00 45 */	stb r0, 0x45(r3)
/* 802EBB28  39 20 00 00 */	li r9, 0
/* 802EBB2C  39 02 C7 9C */	la r8, j2dDefaultTevSwapModeTable(r2) /* 8045619C-_SDA2_BASE_ */
/* 802EBB30  38 00 00 04 */	li r0, 4
/* 802EBB34  7C 09 03 A6 */	mtctr r0
lbl_802EBB38:
/* 802EBB38  88 E8 00 01 */	lbz r7, 1(r8)
/* 802EBB3C  88 C8 00 03 */	lbz r6, 3(r8)
/* 802EBB40  88 08 00 02 */	lbz r0, 2(r8)
/* 802EBB44  54 05 15 BA */	rlwinm r5, r0, 2, 0x16, 0x1d
/* 802EBB48  88 02 C7 9C */	lbz r0, j2dDefaultTevSwapModeTable(r2)
/* 802EBB4C  54 04 34 B2 */	rlwinm r4, r0, 6, 0x12, 0x19
/* 802EBB50  54 E0 20 36 */	slwi r0, r7, 4
/* 802EBB54  7C 00 2A 14 */	add r0, r0, r5
/* 802EBB58  7C 00 32 14 */	add r0, r0, r6
/* 802EBB5C  7C 84 02 14 */	add r4, r4, r0
/* 802EBB60  38 09 00 46 */	addi r0, r9, 0x46
/* 802EBB64  7C 83 01 AE */	stbx r4, r3, r0
/* 802EBB68  39 29 00 01 */	addi r9, r9, 1
/* 802EBB6C  42 00 FF CC */	bdnz lbl_802EBB38
/* 802EBB70  3C 80 80 3A */	lis r4, j2dDefaultIndTevStageInfo@ha /* 0x803A1BF4@ha */
/* 802EBB74  38 A4 1B F4 */	addi r5, r4, j2dDefaultIndTevStageInfo@l /* 0x803A1BF4@l */
/* 802EBB78  80 85 00 00 */	lwz r4, 0(r5)
/* 802EBB7C  80 05 00 04 */	lwz r0, 4(r5)
/* 802EBB80  90 81 00 10 */	stw r4, 0x10(r1)
/* 802EBB84  90 01 00 14 */	stw r0, 0x14(r1)
/* 802EBB88  80 05 00 08 */	lwz r0, 8(r5)
/* 802EBB8C  90 01 00 18 */	stw r0, 0x18(r1)
/* 802EBB90  89 61 00 10 */	lbz r11, 0x10(r1)
/* 802EBB94  88 01 00 11 */	lbz r0, 0x11(r1)
/* 802EBB98  54 0A 10 3A */	slwi r10, r0, 2
/* 802EBB9C  88 01 00 12 */	lbz r0, 0x12(r1)
/* 802EBBA0  54 09 20 36 */	slwi r9, r0, 4
/* 802EBBA4  88 01 00 14 */	lbz r0, 0x14(r1)
/* 802EBBA8  54 08 40 2E */	slwi r8, r0, 8
/* 802EBBAC  88 01 00 15 */	lbz r0, 0x15(r1)
/* 802EBBB0  54 07 58 28 */	slwi r7, r0, 0xb
/* 802EBBB4  88 01 00 13 */	lbz r0, 0x13(r1)
/* 802EBBB8  54 06 80 1E */	slwi r6, r0, 0x10
/* 802EBBBC  88 01 00 16 */	lbz r0, 0x16(r1)
/* 802EBBC0  54 05 A0 16 */	slwi r5, r0, 0x14
/* 802EBBC4  88 01 00 18 */	lbz r0, 0x18(r1)
/* 802EBBC8  54 04 B0 12 */	slwi r4, r0, 0x16
/* 802EBBCC  88 01 00 17 */	lbz r0, 0x17(r1)
/* 802EBBD0  54 00 A8 14 */	slwi r0, r0, 0x15
/* 802EBBD4  7C 80 03 78 */	or r0, r4, r0
/* 802EBBD8  7C A0 03 78 */	or r0, r5, r0
/* 802EBBDC  7C C0 03 78 */	or r0, r6, r0
/* 802EBBE0  7C E0 03 78 */	or r0, r7, r0
/* 802EBBE4  7D 00 03 78 */	or r0, r8, r0
/* 802EBBE8  7D 20 03 78 */	or r0, r9, r0
/* 802EBBEC  7D 40 03 78 */	or r0, r10, r0
/* 802EBBF0  7D 60 03 78 */	or r0, r11, r0
/* 802EBBF4  90 03 00 4C */	stw r0, 0x4c(r3)
/* 802EBBF8  38 00 00 00 */	li r0, 0
/* 802EBBFC  90 03 00 54 */	stw r0, 0x54(r3)
/* 802EBC00  90 03 00 58 */	stw r0, 0x58(r3)
/* 802EBC04  38 21 00 20 */	addi r1, r1, 0x20
/* 802EBC08  4E 80 00 20 */	blr 
