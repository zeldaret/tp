lbl_800D0AC8:
/* 800D0AC8  38 80 00 00 */	li r4, 0
/* 800D0ACC  A0 03 2F E8 */	lhz r0, 0x2fe8(r3)
/* 800D0AD0  28 00 00 DC */	cmplwi r0, 0xdc
/* 800D0AD4  40 82 00 14 */	bne lbl_800D0AE8
/* 800D0AD8  80 03 32 CC */	lwz r0, 0x32cc(r3)
/* 800D0ADC  28 00 00 00 */	cmplwi r0, 0
/* 800D0AE0  40 82 00 08 */	bne lbl_800D0AE8
/* 800D0AE4  38 80 00 01 */	li r4, 1
lbl_800D0AE8:
/* 800D0AE8  7C 83 23 78 */	mr r3, r4
/* 800D0AEC  4E 80 00 20 */	blr 
