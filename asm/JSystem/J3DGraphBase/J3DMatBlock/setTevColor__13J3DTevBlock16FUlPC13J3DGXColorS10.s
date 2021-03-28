lbl_80321CEC:
/* 80321CEC  A8 05 00 00 */	lha r0, 0(r5)
/* 80321CF0  54 84 18 38 */	slwi r4, r4, 3
/* 80321CF4  7C 63 22 14 */	add r3, r3, r4
/* 80321CF8  B0 03 00 DA */	sth r0, 0xda(r3)
/* 80321CFC  A8 05 00 02 */	lha r0, 2(r5)
/* 80321D00  B0 03 00 DC */	sth r0, 0xdc(r3)
/* 80321D04  A8 05 00 04 */	lha r0, 4(r5)
/* 80321D08  B0 03 00 DE */	sth r0, 0xde(r3)
/* 80321D0C  A8 05 00 06 */	lha r0, 6(r5)
/* 80321D10  B0 03 00 E0 */	sth r0, 0xe0(r3)
/* 80321D14  4E 80 00 20 */	blr 
