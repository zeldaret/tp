lbl_80288AC0:
/* 80288AC0  80 C4 00 00 */	lwz r6, 0(r4)
/* 80288AC4  A0 06 00 0A */	lhz r0, 0xa(r6)
/* 80288AC8  38 86 00 0C */	addi r4, r6, 0xc
/* 80288ACC  90 83 00 00 */	stw r4, 0(r3)
/* 80288AD0  90 03 00 04 */	stw r0, 4(r3)
/* 80288AD4  3C 80 80 3C */	lis r4, __vt__Q37JStudio3stb7TObject@ha
/* 80288AD8  38 04 57 00 */	addi r0, r4, __vt__Q37JStudio3stb7TObject@l
/* 80288ADC  90 03 00 08 */	stw r0, 8(r3)
/* 80288AE0  38 A0 00 00 */	li r5, 0
/* 80288AE4  90 A3 00 0C */	stw r5, 0xc(r3)
/* 80288AE8  90 A3 00 10 */	stw r5, 0x10(r3)
/* 80288AEC  90 A3 00 14 */	stw r5, 0x14(r3)
/* 80288AF0  80 06 00 04 */	lwz r0, 4(r6)
/* 80288AF4  90 03 00 18 */	stw r0, 0x18(r3)
/* 80288AF8  A0 06 00 08 */	lhz r0, 8(r6)
/* 80288AFC  B0 03 00 1C */	sth r0, 0x1c(r3)
/* 80288B00  98 A3 00 1E */	stb r5, 0x1e(r3)
/* 80288B04  90 A3 00 20 */	stw r5, 0x20(r3)
/* 80288B08  90 A3 00 24 */	stw r5, 0x24(r3)
/* 80288B0C  A0 86 00 0A */	lhz r4, 0xa(r6)
/* 80288B10  38 04 00 03 */	addi r0, r4, 3
/* 80288B14  54 04 00 3A */	rlwinm r4, r0, 0, 0, 0x1d
/* 80288B18  38 04 00 0C */	addi r0, r4, 0xc
/* 80288B1C  7C 06 02 14 */	add r0, r6, r0
/* 80288B20  90 03 00 28 */	stw r0, 0x28(r3)
/* 80288B24  90 A3 00 2C */	stw r5, 0x2c(r3)
/* 80288B28  90 A3 00 30 */	stw r5, 0x30(r3)
/* 80288B2C  4E 80 00 20 */	blr 
