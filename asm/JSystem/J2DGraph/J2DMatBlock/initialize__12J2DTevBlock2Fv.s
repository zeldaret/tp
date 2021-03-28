lbl_802EC7A0:
/* 802EC7A0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 802EC7A4  3C 80 00 01 */	lis r4, 0x0001 /* 0x0000FFFF@ha */
/* 802EC7A8  38 04 FF FF */	addi r0, r4, 0xFFFF /* 0x0000FFFF@l */
/* 802EC7AC  B0 03 00 04 */	sth r0, 4(r3)
/* 802EC7B0  B0 03 00 06 */	sth r0, 6(r3)
/* 802EC7B4  B0 03 00 08 */	sth r0, 8(r3)
/* 802EC7B8  88 02 C7 80 */	lbz r0, j2dDefaultTevOrderInfoNull(r2)
/* 802EC7BC  98 03 00 0A */	stb r0, 0xa(r3)
/* 802EC7C0  38 82 C7 80 */	la r4, j2dDefaultTevOrderInfoNull(r2) /* 80456180-_SDA2_BASE_ */
/* 802EC7C4  88 04 00 01 */	lbz r0, 1(r4)
/* 802EC7C8  98 03 00 0B */	stb r0, 0xb(r3)
/* 802EC7CC  88 04 00 02 */	lbz r0, 2(r4)
/* 802EC7D0  98 03 00 0C */	stb r0, 0xc(r3)
/* 802EC7D4  88 02 C7 80 */	lbz r0, j2dDefaultTevOrderInfoNull(r2)
/* 802EC7D8  98 03 00 0E */	stb r0, 0xe(r3)
/* 802EC7DC  88 04 00 01 */	lbz r0, 1(r4)
/* 802EC7E0  98 03 00 0F */	stb r0, 0xf(r3)
/* 802EC7E4  88 04 00 02 */	lbz r0, 2(r4)
/* 802EC7E8  98 03 00 10 */	stb r0, 0x10(r3)
/* 802EC7EC  38 80 00 00 */	li r4, 0
/* 802EC7F0  38 A2 C7 88 */	la r5, j2dDefaultTevColor(r2) /* 80456188-_SDA2_BASE_ */
/* 802EC7F4  A9 02 C7 88 */	lha r8, j2dDefaultTevColor(r2)
/* 802EC7F8  A8 E5 00 02 */	lha r7, 2(r5)
/* 802EC7FC  A8 C5 00 04 */	lha r6, 4(r5)
/* 802EC800  A8 A5 00 06 */	lha r5, 6(r5)
/* 802EC804  38 00 00 04 */	li r0, 4
/* 802EC808  7C 09 03 A6 */	mtctr r0
lbl_802EC80C:
/* 802EC80C  7D 23 22 14 */	add r9, r3, r4
/* 802EC810  B1 09 00 12 */	sth r8, 0x12(r9)
/* 802EC814  B0 E9 00 14 */	sth r7, 0x14(r9)
/* 802EC818  B0 C9 00 16 */	sth r6, 0x16(r9)
/* 802EC81C  B0 A9 00 18 */	sth r5, 0x18(r9)
/* 802EC820  38 84 00 08 */	addi r4, r4, 8
/* 802EC824  42 00 FF E8 */	bdnz lbl_802EC80C
/* 802EC828  38 00 00 01 */	li r0, 1
/* 802EC82C  98 03 00 32 */	stb r0, 0x32(r3)
/* 802EC830  38 00 00 C0 */	li r0, 0xc0
/* 802EC834  98 03 00 33 */	stb r0, 0x33(r3)
/* 802EC838  38 00 00 C1 */	li r0, 0xc1
/* 802EC83C  98 03 00 37 */	stb r0, 0x37(r3)
/* 802EC840  38 00 00 C2 */	li r0, 0xc2
/* 802EC844  98 03 00 3B */	stb r0, 0x3b(r3)
/* 802EC848  38 00 00 C3 */	li r0, 0xc3
/* 802EC84C  98 03 00 3F */	stb r0, 0x3f(r3)
/* 802EC850  38 80 00 00 */	li r4, 0
/* 802EC854  81 02 C7 94 */	lwz r8, j2dDefaultTevKColor(r2)
/* 802EC858  38 00 00 04 */	li r0, 4
/* 802EC85C  7C 09 03 A6 */	mtctr r0
lbl_802EC860:
/* 802EC860  91 01 00 08 */	stw r8, 8(r1)
/* 802EC864  88 E1 00 08 */	lbz r7, 8(r1)
/* 802EC868  98 E1 00 0C */	stb r7, 0xc(r1)
/* 802EC86C  88 C1 00 09 */	lbz r6, 9(r1)
/* 802EC870  98 C1 00 0D */	stb r6, 0xd(r1)
/* 802EC874  88 A1 00 0A */	lbz r5, 0xa(r1)
/* 802EC878  98 A1 00 0E */	stb r5, 0xe(r1)
/* 802EC87C  88 01 00 0B */	lbz r0, 0xb(r1)
/* 802EC880  98 01 00 0F */	stb r0, 0xf(r1)
/* 802EC884  7D 23 22 14 */	add r9, r3, r4
/* 802EC888  98 E9 00 44 */	stb r7, 0x44(r9)
/* 802EC88C  98 C9 00 45 */	stb r6, 0x45(r9)
/* 802EC890  98 A9 00 46 */	stb r5, 0x46(r9)
/* 802EC894  98 09 00 47 */	stb r0, 0x47(r9)
/* 802EC898  38 84 00 04 */	addi r4, r4, 4
/* 802EC89C  42 00 FF C4 */	bdnz lbl_802EC860
/* 802EC8A0  38 00 00 FF */	li r0, 0xff
/* 802EC8A4  98 03 00 54 */	stb r0, 0x54(r3)
/* 802EC8A8  98 03 00 55 */	stb r0, 0x55(r3)
/* 802EC8AC  98 03 00 56 */	stb r0, 0x56(r3)
/* 802EC8B0  98 03 00 57 */	stb r0, 0x57(r3)
/* 802EC8B4  39 20 00 00 */	li r9, 0
/* 802EC8B8  39 02 C7 9C */	la r8, j2dDefaultTevSwapModeTable(r2) /* 8045619C-_SDA2_BASE_ */
/* 802EC8BC  38 00 00 04 */	li r0, 4
/* 802EC8C0  7C 09 03 A6 */	mtctr r0
lbl_802EC8C4:
/* 802EC8C4  88 E8 00 01 */	lbz r7, 1(r8)
/* 802EC8C8  88 C8 00 03 */	lbz r6, 3(r8)
/* 802EC8CC  88 08 00 02 */	lbz r0, 2(r8)
/* 802EC8D0  54 05 15 BA */	rlwinm r5, r0, 2, 0x16, 0x1d
/* 802EC8D4  88 02 C7 9C */	lbz r0, j2dDefaultTevSwapModeTable(r2)
/* 802EC8D8  54 04 34 B2 */	rlwinm r4, r0, 6, 0x12, 0x19
/* 802EC8DC  54 E0 20 36 */	slwi r0, r7, 4
/* 802EC8E0  7C 00 2A 14 */	add r0, r0, r5
/* 802EC8E4  7C 00 32 14 */	add r0, r0, r6
/* 802EC8E8  7C 84 02 14 */	add r4, r4, r0
/* 802EC8EC  38 09 00 58 */	addi r0, r9, 0x58
/* 802EC8F0  7C 83 01 AE */	stbx r4, r3, r0
/* 802EC8F4  39 29 00 01 */	addi r9, r9, 1
/* 802EC8F8  42 00 FF CC */	bdnz lbl_802EC8C4
/* 802EC8FC  3C 80 80 3A */	lis r4, j2dDefaultIndTevStageInfo@ha
/* 802EC900  84 A4 1B F4 */	lwzu r5, j2dDefaultIndTevStageInfo@l(r4)
/* 802EC904  80 04 00 04 */	lwz r0, 4(r4)
/* 802EC908  90 A1 00 1C */	stw r5, 0x1c(r1)
/* 802EC90C  90 01 00 20 */	stw r0, 0x20(r1)
/* 802EC910  80 04 00 08 */	lwz r0, 8(r4)
/* 802EC914  90 01 00 24 */	stw r0, 0x24(r1)
/* 802EC918  89 81 00 1C */	lbz r12, 0x1c(r1)
/* 802EC91C  88 01 00 1D */	lbz r0, 0x1d(r1)
/* 802EC920  54 0B 10 3A */	slwi r11, r0, 2
/* 802EC924  88 01 00 1E */	lbz r0, 0x1e(r1)
/* 802EC928  54 0A 20 36 */	slwi r10, r0, 4
/* 802EC92C  88 01 00 20 */	lbz r0, 0x20(r1)
/* 802EC930  54 09 40 2E */	slwi r9, r0, 8
/* 802EC934  88 01 00 21 */	lbz r0, 0x21(r1)
/* 802EC938  54 08 58 28 */	slwi r8, r0, 0xb
/* 802EC93C  88 01 00 1F */	lbz r0, 0x1f(r1)
/* 802EC940  54 07 80 1E */	slwi r7, r0, 0x10
/* 802EC944  88 01 00 22 */	lbz r0, 0x22(r1)
/* 802EC948  54 06 A0 16 */	slwi r6, r0, 0x14
/* 802EC94C  88 01 00 24 */	lbz r0, 0x24(r1)
/* 802EC950  54 05 B0 12 */	slwi r5, r0, 0x16
/* 802EC954  88 01 00 23 */	lbz r0, 0x23(r1)
/* 802EC958  54 00 A8 14 */	slwi r0, r0, 0x15
/* 802EC95C  7C A0 03 78 */	or r0, r5, r0
/* 802EC960  7C C0 03 78 */	or r0, r6, r0
/* 802EC964  7C E0 03 78 */	or r0, r7, r0
/* 802EC968  7D 00 03 78 */	or r0, r8, r0
/* 802EC96C  7D 20 03 78 */	or r0, r9, r0
/* 802EC970  7D 40 03 78 */	or r0, r10, r0
/* 802EC974  7D 60 03 78 */	or r0, r11, r0
/* 802EC978  7D 80 03 78 */	or r0, r12, r0
/* 802EC97C  90 03 00 5C */	stw r0, 0x5c(r3)
/* 802EC980  80 A4 00 00 */	lwz r5, 0(r4)
/* 802EC984  80 04 00 04 */	lwz r0, 4(r4)
/* 802EC988  90 A1 00 10 */	stw r5, 0x10(r1)
/* 802EC98C  90 01 00 14 */	stw r0, 0x14(r1)
/* 802EC990  80 04 00 08 */	lwz r0, 8(r4)
/* 802EC994  90 01 00 18 */	stw r0, 0x18(r1)
/* 802EC998  89 61 00 10 */	lbz r11, 0x10(r1)
/* 802EC99C  88 01 00 11 */	lbz r0, 0x11(r1)
/* 802EC9A0  54 0A 10 3A */	slwi r10, r0, 2
/* 802EC9A4  88 01 00 12 */	lbz r0, 0x12(r1)
/* 802EC9A8  54 09 20 36 */	slwi r9, r0, 4
/* 802EC9AC  88 01 00 14 */	lbz r0, 0x14(r1)
/* 802EC9B0  54 08 40 2E */	slwi r8, r0, 8
/* 802EC9B4  88 01 00 15 */	lbz r0, 0x15(r1)
/* 802EC9B8  54 07 58 28 */	slwi r7, r0, 0xb
/* 802EC9BC  88 01 00 13 */	lbz r0, 0x13(r1)
/* 802EC9C0  54 06 80 1E */	slwi r6, r0, 0x10
/* 802EC9C4  88 01 00 16 */	lbz r0, 0x16(r1)
/* 802EC9C8  54 05 A0 16 */	slwi r5, r0, 0x14
/* 802EC9CC  88 01 00 18 */	lbz r0, 0x18(r1)
/* 802EC9D0  54 04 B0 12 */	slwi r4, r0, 0x16
/* 802EC9D4  88 01 00 17 */	lbz r0, 0x17(r1)
/* 802EC9D8  54 00 A8 14 */	slwi r0, r0, 0x15
/* 802EC9DC  7C 80 03 78 */	or r0, r4, r0
/* 802EC9E0  7C A0 03 78 */	or r0, r5, r0
/* 802EC9E4  7C C0 03 78 */	or r0, r6, r0
/* 802EC9E8  7C E0 03 78 */	or r0, r7, r0
/* 802EC9EC  7D 00 03 78 */	or r0, r8, r0
/* 802EC9F0  7D 20 03 78 */	or r0, r9, r0
/* 802EC9F4  7D 40 03 78 */	or r0, r10, r0
/* 802EC9F8  7D 60 03 78 */	or r0, r11, r0
/* 802EC9FC  90 03 00 60 */	stw r0, 0x60(r3)
/* 802ECA00  38 00 00 00 */	li r0, 0
/* 802ECA04  90 03 00 6C */	stw r0, 0x6c(r3)
/* 802ECA08  90 03 00 70 */	stw r0, 0x70(r3)
/* 802ECA0C  90 03 00 74 */	stw r0, 0x74(r3)
/* 802ECA10  38 21 00 30 */	addi r1, r1, 0x30
/* 802ECA14  4E 80 00 20 */	blr 
