lbl_802EDAC4:
/* 802EDAC4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 802EDAC8  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 802EDACC  38 80 00 00 */	li r4, 0
/* 802EDAD0  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000FFFF@ha */
/* 802EDAD4  38 A5 FF FF */	addi r5, r5, 0xFFFF /* 0x0000FFFF@l */
/* 802EDAD8  38 00 00 04 */	li r0, 4
/* 802EDADC  7C 09 03 A6 */	mtctr r0
lbl_802EDAE0:
/* 802EDAE0  38 04 00 04 */	addi r0, r4, 4
/* 802EDAE4  7C A3 03 2E */	sthx r5, r3, r0
/* 802EDAE8  38 84 00 02 */	addi r4, r4, 2
/* 802EDAEC  42 00 FF F4 */	bdnz lbl_802EDAE0
/* 802EDAF0  3C 80 00 01 */	lis r4, 0x0001 /* 0x0000FFFF@ha */
/* 802EDAF4  38 04 FF FF */	addi r0, r4, 0xFFFF /* 0x0000FFFF@l */
/* 802EDAF8  B0 03 00 0C */	sth r0, 0xc(r3)
/* 802EDAFC  38 80 00 00 */	li r4, 0
/* 802EDB00  38 A2 C7 80 */	la r5, j2dDefaultTevOrderInfoNull(r2) /* 80456180-_SDA2_BASE_ */
/* 802EDB04  38 00 00 04 */	li r0, 4
/* 802EDB08  7C 09 03 A6 */	mtctr r0
lbl_802EDB0C:
/* 802EDB0C  88 02 C7 80 */	lbz r0, j2dDefaultTevOrderInfoNull(r2)
/* 802EDB10  7C C3 22 14 */	add r6, r3, r4
/* 802EDB14  98 06 00 0E */	stb r0, 0xe(r6)
/* 802EDB18  88 05 00 01 */	lbz r0, 1(r5)
/* 802EDB1C  98 06 00 0F */	stb r0, 0xf(r6)
/* 802EDB20  88 05 00 02 */	lbz r0, 2(r5)
/* 802EDB24  98 06 00 10 */	stb r0, 0x10(r6)
/* 802EDB28  38 84 00 04 */	addi r4, r4, 4
/* 802EDB2C  42 00 FF E0 */	bdnz lbl_802EDB0C
/* 802EDB30  38 80 00 00 */	li r4, 0
/* 802EDB34  38 A2 C7 88 */	la r5, j2dDefaultTevColor(r2) /* 80456188-_SDA2_BASE_ */
/* 802EDB38  A9 02 C7 88 */	lha r8, j2dDefaultTevColor(r2)
/* 802EDB3C  A8 E5 00 02 */	lha r7, 2(r5)
/* 802EDB40  A8 C5 00 04 */	lha r6, 4(r5)
/* 802EDB44  A8 A5 00 06 */	lha r5, 6(r5)
/* 802EDB48  38 00 00 04 */	li r0, 4
/* 802EDB4C  7C 09 03 A6 */	mtctr r0
lbl_802EDB50:
/* 802EDB50  7D 23 22 14 */	add r9, r3, r4
/* 802EDB54  B1 09 00 1E */	sth r8, 0x1e(r9)
/* 802EDB58  B0 E9 00 20 */	sth r7, 0x20(r9)
/* 802EDB5C  B0 C9 00 22 */	sth r6, 0x22(r9)
/* 802EDB60  B0 A9 00 24 */	sth r5, 0x24(r9)
/* 802EDB64  38 84 00 08 */	addi r4, r4, 8
/* 802EDB68  42 00 FF E8 */	bdnz lbl_802EDB50
/* 802EDB6C  38 00 00 01 */	li r0, 1
/* 802EDB70  98 03 00 3E */	stb r0, 0x3e(r3)
/* 802EDB74  38 80 00 00 */	li r4, 0
/* 802EDB78  38 A0 00 00 */	li r5, 0
/* 802EDB7C  38 00 00 04 */	li r0, 4
/* 802EDB80  7C 09 03 A6 */	mtctr r0
lbl_802EDB84:
/* 802EDB84  38 05 00 C0 */	addi r0, r5, 0xc0
/* 802EDB88  7C C3 22 14 */	add r6, r3, r4
/* 802EDB8C  98 06 00 3F */	stb r0, 0x3f(r6)
/* 802EDB90  38 05 00 C1 */	addi r0, r5, 0xc1
/* 802EDB94  98 06 00 43 */	stb r0, 0x43(r6)
/* 802EDB98  38 84 00 08 */	addi r4, r4, 8
/* 802EDB9C  38 A5 00 02 */	addi r5, r5, 2
/* 802EDBA0  42 00 FF E4 */	bdnz lbl_802EDB84
/* 802EDBA4  38 80 00 00 */	li r4, 0
/* 802EDBA8  81 02 C7 94 */	lwz r8, j2dDefaultTevKColor(r2)
/* 802EDBAC  38 00 00 04 */	li r0, 4
/* 802EDBB0  7C 09 03 A6 */	mtctr r0
lbl_802EDBB4:
/* 802EDBB4  91 01 00 08 */	stw r8, 8(r1)
/* 802EDBB8  88 E1 00 08 */	lbz r7, 8(r1)
/* 802EDBBC  98 E1 00 0C */	stb r7, 0xc(r1)
/* 802EDBC0  88 C1 00 09 */	lbz r6, 9(r1)
/* 802EDBC4  98 C1 00 0D */	stb r6, 0xd(r1)
/* 802EDBC8  88 A1 00 0A */	lbz r5, 0xa(r1)
/* 802EDBCC  98 A1 00 0E */	stb r5, 0xe(r1)
/* 802EDBD0  88 01 00 0B */	lbz r0, 0xb(r1)
/* 802EDBD4  98 01 00 0F */	stb r0, 0xf(r1)
/* 802EDBD8  7D 23 22 14 */	add r9, r3, r4
/* 802EDBDC  98 E9 00 60 */	stb r7, 0x60(r9)
/* 802EDBE0  98 C9 00 61 */	stb r6, 0x61(r9)
/* 802EDBE4  98 A9 00 62 */	stb r5, 0x62(r9)
/* 802EDBE8  98 09 00 63 */	stb r0, 0x63(r9)
/* 802EDBEC  38 84 00 04 */	addi r4, r4, 4
/* 802EDBF0  42 00 FF C4 */	bdnz lbl_802EDBB4
/* 802EDBF4  38 C0 00 00 */	li r6, 0
/* 802EDBF8  38 80 00 FF */	li r4, 0xff
/* 802EDBFC  38 00 00 04 */	li r0, 4
/* 802EDC00  7C 09 03 A6 */	mtctr r0
lbl_802EDC04:
/* 802EDC04  7C A3 32 14 */	add r5, r3, r6
/* 802EDC08  98 85 00 70 */	stb r4, 0x70(r5)
/* 802EDC0C  98 85 00 74 */	stb r4, 0x74(r5)
/* 802EDC10  38 C6 00 01 */	addi r6, r6, 1
/* 802EDC14  42 00 FF F0 */	bdnz lbl_802EDC04
/* 802EDC18  39 20 00 00 */	li r9, 0
/* 802EDC1C  39 02 C7 9C */	la r8, j2dDefaultTevSwapModeTable(r2) /* 8045619C-_SDA2_BASE_ */
/* 802EDC20  38 00 00 04 */	li r0, 4
/* 802EDC24  7C 09 03 A6 */	mtctr r0
lbl_802EDC28:
/* 802EDC28  88 E8 00 01 */	lbz r7, 1(r8)
/* 802EDC2C  88 C8 00 03 */	lbz r6, 3(r8)
/* 802EDC30  88 08 00 02 */	lbz r0, 2(r8)
/* 802EDC34  54 05 15 BA */	rlwinm r5, r0, 2, 0x16, 0x1d
/* 802EDC38  88 02 C7 9C */	lbz r0, j2dDefaultTevSwapModeTable(r2)
/* 802EDC3C  54 04 34 B2 */	rlwinm r4, r0, 6, 0x12, 0x19
/* 802EDC40  54 E0 20 36 */	slwi r0, r7, 4
/* 802EDC44  7C 00 2A 14 */	add r0, r0, r5
/* 802EDC48  7C 00 32 14 */	add r0, r0, r6
/* 802EDC4C  7C 84 02 14 */	add r4, r4, r0
/* 802EDC50  38 09 00 78 */	addi r0, r9, 0x78
/* 802EDC54  7C 83 01 AE */	stbx r4, r3, r0
/* 802EDC58  39 29 00 01 */	addi r9, r9, 1
/* 802EDC5C  42 00 FF CC */	bdnz lbl_802EDC28
/* 802EDC60  38 A0 00 00 */	li r5, 0
/* 802EDC64  3C 80 80 3A */	lis r4, j2dDefaultIndTevStageInfo@ha /* 0x803A1BF4@ha */
/* 802EDC68  38 84 1B F4 */	addi r4, r4, j2dDefaultIndTevStageInfo@l /* 0x803A1BF4@l */
/* 802EDC6C  38 00 00 04 */	li r0, 4
/* 802EDC70  7C 09 03 A6 */	mtctr r0
lbl_802EDC74:
/* 802EDC74  80 C4 00 00 */	lwz r6, 0(r4)
/* 802EDC78  80 04 00 04 */	lwz r0, 4(r4)
/* 802EDC7C  90 C1 00 10 */	stw r6, 0x10(r1)
/* 802EDC80  90 01 00 14 */	stw r0, 0x14(r1)
/* 802EDC84  80 04 00 08 */	lwz r0, 8(r4)
/* 802EDC88  90 01 00 18 */	stw r0, 0x18(r1)
/* 802EDC8C  8B E1 00 10 */	lbz r31, 0x10(r1)
/* 802EDC90  88 01 00 11 */	lbz r0, 0x11(r1)
/* 802EDC94  54 0C 10 3A */	slwi r12, r0, 2
/* 802EDC98  88 01 00 12 */	lbz r0, 0x12(r1)
/* 802EDC9C  54 0B 20 36 */	slwi r11, r0, 4
/* 802EDCA0  88 01 00 14 */	lbz r0, 0x14(r1)
/* 802EDCA4  54 0A 40 2E */	slwi r10, r0, 8
/* 802EDCA8  88 01 00 15 */	lbz r0, 0x15(r1)
/* 802EDCAC  54 09 58 28 */	slwi r9, r0, 0xb
/* 802EDCB0  88 01 00 13 */	lbz r0, 0x13(r1)
/* 802EDCB4  54 08 80 1E */	slwi r8, r0, 0x10
/* 802EDCB8  88 01 00 16 */	lbz r0, 0x16(r1)
/* 802EDCBC  54 07 A0 16 */	slwi r7, r0, 0x14
/* 802EDCC0  88 01 00 18 */	lbz r0, 0x18(r1)
/* 802EDCC4  54 06 B0 12 */	slwi r6, r0, 0x16
/* 802EDCC8  88 01 00 17 */	lbz r0, 0x17(r1)
/* 802EDCCC  54 00 A8 14 */	slwi r0, r0, 0x15
/* 802EDCD0  7C C0 03 78 */	or r0, r6, r0
/* 802EDCD4  7C E0 03 78 */	or r0, r7, r0
/* 802EDCD8  7D 00 03 78 */	or r0, r8, r0
/* 802EDCDC  7D 20 03 78 */	or r0, r9, r0
/* 802EDCE0  7D 40 03 78 */	or r0, r10, r0
/* 802EDCE4  7D 60 03 78 */	or r0, r11, r0
/* 802EDCE8  7D 80 03 78 */	or r0, r12, r0
/* 802EDCEC  7F E6 03 78 */	or r6, r31, r0
/* 802EDCF0  38 05 00 7C */	addi r0, r5, 0x7c
/* 802EDCF4  7C C3 01 2E */	stwx r6, r3, r0
/* 802EDCF8  38 A5 00 04 */	addi r5, r5, 4
/* 802EDCFC  42 00 FF 78 */	bdnz lbl_802EDC74
/* 802EDD00  38 80 00 00 */	li r4, 0
/* 802EDD04  38 A0 00 00 */	li r5, 0
/* 802EDD08  38 00 00 04 */	li r0, 4
/* 802EDD0C  7C 09 03 A6 */	mtctr r0
lbl_802EDD10:
/* 802EDD10  38 04 00 9C */	addi r0, r4, 0x9c
/* 802EDD14  7C A3 01 2E */	stwx r5, r3, r0
/* 802EDD18  38 84 00 04 */	addi r4, r4, 4
/* 802EDD1C  42 00 FF F4 */	bdnz lbl_802EDD10
/* 802EDD20  38 00 00 00 */	li r0, 0
/* 802EDD24  90 03 00 AC */	stw r0, 0xac(r3)
/* 802EDD28  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 802EDD2C  38 21 00 30 */	addi r1, r1, 0x30
/* 802EDD30  4E 80 00 20 */	blr 
