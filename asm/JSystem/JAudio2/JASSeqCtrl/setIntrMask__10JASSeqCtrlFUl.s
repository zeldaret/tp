lbl_80293AE0:
/* 80293AE0  A0 03 00 4E */	lhz r0, 0x4e(r3)
/* 80293AE4  7C 00 23 78 */	or r0, r0, r4
/* 80293AE8  B0 03 00 4E */	sth r0, 0x4e(r3)
/* 80293AEC  4E 80 00 20 */	blr 
