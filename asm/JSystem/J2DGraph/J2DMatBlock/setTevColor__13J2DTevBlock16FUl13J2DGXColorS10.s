lbl_802F1D94:
/* 802F1D94  A8 05 00 00 */	lha r0, 0(r5)
/* 802F1D98  54 84 18 38 */	slwi r4, r4, 3
/* 802F1D9C  7C 63 22 14 */	add r3, r3, r4
/* 802F1DA0  B0 03 00 56 */	sth r0, 0x56(r3)
/* 802F1DA4  A8 05 00 02 */	lha r0, 2(r5)
/* 802F1DA8  B0 03 00 58 */	sth r0, 0x58(r3)
/* 802F1DAC  A8 05 00 04 */	lha r0, 4(r5)
/* 802F1DB0  B0 03 00 5A */	sth r0, 0x5a(r3)
/* 802F1DB4  A8 05 00 06 */	lha r0, 6(r5)
/* 802F1DB8  B0 03 00 5C */	sth r0, 0x5c(r3)
/* 802F1DBC  4E 80 00 20 */	blr 
