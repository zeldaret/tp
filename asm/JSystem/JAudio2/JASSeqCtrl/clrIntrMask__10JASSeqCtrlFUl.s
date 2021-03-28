lbl_80293AF0:
/* 80293AF0  A0 03 00 4E */	lhz r0, 0x4e(r3)
/* 80293AF4  7C 00 20 78 */	andc r0, r0, r4
/* 80293AF8  B0 03 00 4E */	sth r0, 0x4e(r3)
/* 80293AFC  4E 80 00 20 */	blr 
