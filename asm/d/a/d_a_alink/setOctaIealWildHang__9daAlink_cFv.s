lbl_800D0B20:
/* 800D0B20  A0 03 2F E8 */	lhz r0, 0x2fe8(r3)
/* 800D0B24  28 00 00 DC */	cmplwi r0, 0xdc
/* 800D0B28  4C 82 00 20 */	bnelr 
/* 800D0B2C  38 00 00 01 */	li r0, 1
/* 800D0B30  B0 03 30 08 */	sth r0, 0x3008(r3)
/* 800D0B34  4E 80 00 20 */	blr 
