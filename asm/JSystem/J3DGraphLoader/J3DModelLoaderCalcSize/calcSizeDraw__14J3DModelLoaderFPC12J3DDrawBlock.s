lbl_80336DA0:
/* 80336DA0  A0 63 00 1A */	lhz r3, 0x1a(r3)
/* 80336DA4  A0 04 00 08 */	lhz r0, 8(r4)
/* 80336DA8  7C 03 00 50 */	subf r0, r3, r0
/* 80336DAC  54 03 08 3C */	slwi r3, r0, 1
/* 80336DB0  4E 80 00 20 */	blr 
