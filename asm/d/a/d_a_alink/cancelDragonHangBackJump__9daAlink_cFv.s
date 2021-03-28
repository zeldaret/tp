lbl_800D0B08:
/* 800D0B08  A0 03 2F E8 */	lhz r0, 0x2fe8(r3)
/* 800D0B0C  28 00 00 DC */	cmplwi r0, 0xdc
/* 800D0B10  4C 82 00 20 */	bnelr 
/* 800D0B14  38 00 FF FF */	li r0, -1
/* 800D0B18  B0 03 30 0E */	sth r0, 0x300e(r3)
/* 800D0B1C  4E 80 00 20 */	blr 
