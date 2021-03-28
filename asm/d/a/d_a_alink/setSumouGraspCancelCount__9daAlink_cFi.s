lbl_800D0984:
/* 800D0984  A0 03 2F E8 */	lhz r0, 0x2fe8(r3)
/* 800D0988  28 00 00 CF */	cmplwi r0, 0xcf
/* 800D098C  4C 82 00 20 */	bnelr 
/* 800D0990  B0 83 30 0C */	sth r4, 0x300c(r3)
/* 800D0994  4E 80 00 20 */	blr 
