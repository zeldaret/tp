lbl_8033BEA0:
/* 8033BEA0  BD A3 00 34 */	stmw r13, 0x34(r3)
/* 8033BEA4  7C 11 E2 A6 */	mfspr r0, 0x391
/* 8033BEA8  90 03 01 A8 */	stw r0, 0x1a8(r3)
/* 8033BEAC  7C 12 E2 A6 */	mfspr r0, 0x392
/* 8033BEB0  90 03 01 AC */	stw r0, 0x1ac(r3)
/* 8033BEB4  7C 13 E2 A6 */	mfspr r0, 0x393
/* 8033BEB8  90 03 01 B0 */	stw r0, 0x1b0(r3)
/* 8033BEBC  7C 14 E2 A6 */	mfspr r0, 0x394
/* 8033BEC0  90 03 01 B4 */	stw r0, 0x1b4(r3)
/* 8033BEC4  7C 15 E2 A6 */	mfspr r0, 0x395
/* 8033BEC8  90 03 01 B8 */	stw r0, 0x1b8(r3)
/* 8033BECC  7C 16 E2 A6 */	mfspr r0, 0x396
/* 8033BED0  90 03 01 BC */	stw r0, 0x1bc(r3)
/* 8033BED4  7C 17 E2 A6 */	mfspr r0, 0x397
/* 8033BED8  90 03 01 C0 */	stw r0, 0x1c0(r3)
/* 8033BEDC  7C 00 00 26 */	mfcr r0
/* 8033BEE0  90 03 00 80 */	stw r0, 0x80(r3)
/* 8033BEE4  7C 08 02 A6 */	mflr r0
/* 8033BEE8  90 03 00 84 */	stw r0, 0x84(r3)
/* 8033BEEC  90 03 01 98 */	stw r0, 0x198(r3)
/* 8033BEF0  7C 00 00 A6 */	mfmsr r0
/* 8033BEF4  90 03 01 9C */	stw r0, 0x19c(r3)
/* 8033BEF8  7C 09 02 A6 */	mfctr r0
/* 8033BEFC  90 03 00 88 */	stw r0, 0x88(r3)
/* 8033BF00  7C 01 02 A6 */	mfxer r0
/* 8033BF04  90 03 00 8C */	stw r0, 0x8c(r3)
/* 8033BF08  90 23 00 04 */	stw r1, 4(r3)
/* 8033BF0C  90 43 00 08 */	stw r2, 8(r3)
/* 8033BF10  38 00 00 01 */	li r0, 1
/* 8033BF14  90 03 00 0C */	stw r0, 0xc(r3)
/* 8033BF18  38 60 00 00 */	li r3, 0
/* 8033BF1C  4E 80 00 20 */	blr 
