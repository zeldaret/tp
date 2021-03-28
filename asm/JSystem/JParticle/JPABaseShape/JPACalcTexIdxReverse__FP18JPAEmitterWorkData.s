lbl_80277ACC:
/* 80277ACC  80 83 00 04 */	lwz r4, 4(r3)
/* 80277AD0  80 84 00 1C */	lwz r4, 0x1c(r4)
/* 80277AD4  80 A3 00 00 */	lwz r5, 0(r3)
/* 80277AD8  80 C5 01 00 */	lwz r6, 0x100(r5)
/* 80277ADC  80 64 00 00 */	lwz r3, 0(r4)
/* 80277AE0  88 63 00 1F */	lbz r3, 0x1f(r3)
/* 80277AE4  38 E3 FF FF */	addi r7, r3, -1
/* 80277AE8  7C 66 3B D6 */	divw r3, r6, r7
/* 80277AEC  7C 03 39 D6 */	mullw r0, r3, r7
/* 80277AF0  7C C0 30 50 */	subf r6, r0, r6
/* 80277AF4  80 84 00 08 */	lwz r4, 8(r4)
/* 80277AF8  54 63 07 FE */	clrlwi r3, r3, 0x1f
/* 80277AFC  54 C0 08 3C */	slwi r0, r6, 1
/* 80277B00  7C 00 38 50 */	subf r0, r0, r7
/* 80277B04  7C 03 01 D6 */	mullw r0, r3, r0
/* 80277B08  7C 06 02 14 */	add r0, r6, r0
/* 80277B0C  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 80277B10  7C 04 00 AE */	lbzx r0, r4, r0
/* 80277B14  98 05 01 11 */	stb r0, 0x111(r5)
/* 80277B18  4E 80 00 20 */	blr 
