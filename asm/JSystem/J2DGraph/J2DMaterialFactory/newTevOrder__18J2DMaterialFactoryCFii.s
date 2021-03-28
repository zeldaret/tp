lbl_802F39A8:
/* 802F39A8  81 04 00 04 */	lwz r8, 4(r4)
/* 802F39AC  80 E4 00 08 */	lwz r7, 8(r4)
/* 802F39B0  54 A0 08 3C */	slwi r0, r5, 1
/* 802F39B4  7C 07 02 2E */	lhzx r0, r7, r0
/* 802F39B8  1C 00 00 E8 */	mulli r0, r0, 0xe8
/* 802F39BC  7C A8 02 14 */	add r5, r8, r0
/* 802F39C0  54 C0 08 3C */	slwi r0, r6, 1
/* 802F39C4  7C A5 02 14 */	add r5, r5, r0
/* 802F39C8  A0 05 00 72 */	lhz r0, 0x72(r5)
/* 802F39CC  28 00 FF FF */	cmplwi r0, 0xffff
/* 802F39D0  41 82 00 2C */	beq lbl_802F39FC
/* 802F39D4  80 84 00 34 */	lwz r4, 0x34(r4)
/* 802F39D8  54 00 13 BA */	rlwinm r0, r0, 2, 0xe, 0x1d
/* 802F39DC  7C 84 02 14 */	add r4, r4, r0
/* 802F39E0  88 04 00 00 */	lbz r0, 0(r4)
/* 802F39E4  98 03 00 00 */	stb r0, 0(r3)
/* 802F39E8  88 04 00 01 */	lbz r0, 1(r4)
/* 802F39EC  98 03 00 01 */	stb r0, 1(r3)
/* 802F39F0  88 04 00 02 */	lbz r0, 2(r4)
/* 802F39F4  98 03 00 02 */	stb r0, 2(r3)
/* 802F39F8  4E 80 00 20 */	blr 
lbl_802F39FC:
/* 802F39FC  88 02 C7 80 */	lbz r0, j2dDefaultTevOrderInfoNull(r2)
/* 802F3A00  98 03 00 00 */	stb r0, 0(r3)
/* 802F3A04  38 82 C7 80 */	la r4, j2dDefaultTevOrderInfoNull(r2) /* 80456180-_SDA2_BASE_ */
/* 802F3A08  88 04 00 01 */	lbz r0, 1(r4)
/* 802F3A0C  98 03 00 01 */	stb r0, 1(r3)
/* 802F3A10  88 04 00 02 */	lbz r0, 2(r4)
/* 802F3A14  98 03 00 02 */	stb r0, 2(r3)
/* 802F3A18  4E 80 00 20 */	blr 
