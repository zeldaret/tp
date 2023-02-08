lbl_802F3AB4:
/* 802F3AB4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802F3AB8  80 02 C7 C4 */	lwz r0, lit_2039(r2)
/* 802F3ABC  90 01 00 10 */	stw r0, 0x10(r1)
/* 802F3AC0  90 01 00 0C */	stw r0, 0xc(r1)
/* 802F3AC4  88 01 00 0C */	lbz r0, 0xc(r1)
/* 802F3AC8  98 01 00 14 */	stb r0, 0x14(r1)
/* 802F3ACC  88 01 00 0D */	lbz r0, 0xd(r1)
/* 802F3AD0  98 01 00 15 */	stb r0, 0x15(r1)
/* 802F3AD4  88 01 00 0E */	lbz r0, 0xe(r1)
/* 802F3AD8  98 01 00 16 */	stb r0, 0x16(r1)
/* 802F3ADC  88 01 00 0F */	lbz r0, 0xf(r1)
/* 802F3AE0  98 01 00 17 */	stb r0, 0x17(r1)
/* 802F3AE4  81 04 00 04 */	lwz r8, 4(r4)
/* 802F3AE8  80 E4 00 08 */	lwz r7, 8(r4)
/* 802F3AEC  54 A0 08 3C */	slwi r0, r5, 1
/* 802F3AF0  7C 07 02 2E */	lhzx r0, r7, r0
/* 802F3AF4  1C 00 00 E8 */	mulli r0, r0, 0xe8
/* 802F3AF8  7C A8 02 14 */	add r5, r8, r0
/* 802F3AFC  54 C0 08 3C */	slwi r0, r6, 1
/* 802F3B00  7C A5 02 14 */	add r5, r5, r0
/* 802F3B04  A0 05 00 4A */	lhz r0, 0x4a(r5)
/* 802F3B08  28 00 FF FF */	cmplwi r0, 0xffff
/* 802F3B0C  41 82 00 38 */	beq lbl_802F3B44
/* 802F3B10  80 84 00 3C */	lwz r4, 0x3c(r4)
/* 802F3B14  54 00 13 BA */	rlwinm r0, r0, 2, 0xe, 0x1d
/* 802F3B18  7C 04 00 2E */	lwzx r0, r4, r0
/* 802F3B1C  90 01 00 08 */	stw r0, 8(r1)
/* 802F3B20  88 01 00 08 */	lbz r0, 8(r1)
/* 802F3B24  98 03 00 00 */	stb r0, 0(r3)
/* 802F3B28  88 01 00 09 */	lbz r0, 9(r1)
/* 802F3B2C  98 03 00 01 */	stb r0, 1(r3)
/* 802F3B30  88 01 00 0A */	lbz r0, 0xa(r1)
/* 802F3B34  98 03 00 02 */	stb r0, 2(r3)
/* 802F3B38  88 01 00 0B */	lbz r0, 0xb(r1)
/* 802F3B3C  98 03 00 03 */	stb r0, 3(r3)
/* 802F3B40  48 00 00 0C */	b lbl_802F3B4C
lbl_802F3B44:
/* 802F3B44  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802F3B48  90 03 00 00 */	stw r0, 0(r3)
lbl_802F3B4C:
/* 802F3B4C  38 21 00 20 */	addi r1, r1, 0x20
/* 802F3B50  4E 80 00 20 */	blr 
