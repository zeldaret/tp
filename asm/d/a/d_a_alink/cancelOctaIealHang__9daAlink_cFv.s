lbl_800D0AF0:
/* 800D0AF0  A0 03 2F E8 */	lhz r0, 0x2fe8(r3)
/* 800D0AF4  28 00 00 DC */	cmplwi r0, 0xdc
/* 800D0AF8  4C 82 00 20 */	bnelr 
/* 800D0AFC  38 00 00 01 */	li r0, 1
/* 800D0B00  B0 03 30 0E */	sth r0, 0x300e(r3)
/* 800D0B04  4E 80 00 20 */	blr 
