lbl_8007E6E0:
/* 8007E6E0  A8 03 00 0C */	lha r0, 0xc(r3)
/* 8007E6E4  7C 00 20 50 */	subf r0, r0, r4
/* 8007E6E8  B0 03 00 0E */	sth r0, 0xe(r3)
/* 8007E6EC  B0 83 00 0C */	sth r4, 0xc(r3)
/* 8007E6F0  4E 80 00 20 */	blr 
