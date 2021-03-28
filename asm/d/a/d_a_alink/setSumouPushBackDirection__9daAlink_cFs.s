lbl_800D091C:
/* 800D091C  A0 03 2F E8 */	lhz r0, 0x2fe8(r3)
/* 800D0920  28 00 00 CF */	cmplwi r0, 0xcf
/* 800D0924  4C 82 00 20 */	bnelr 
/* 800D0928  B0 83 30 10 */	sth r4, 0x3010(r3)
/* 800D092C  4E 80 00 20 */	blr 
