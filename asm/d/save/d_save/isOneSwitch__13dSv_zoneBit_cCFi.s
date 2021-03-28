lbl_80034DE0:
/* 80034DE0  A0 63 00 04 */	lhz r3, 4(r3)
/* 80034DE4  38 00 00 01 */	li r0, 1
/* 80034DE8  7C 00 20 30 */	slw r0, r0, r4
/* 80034DEC  7C 63 00 38 */	and r3, r3, r0
/* 80034DF0  30 03 FF FF */	addic r0, r3, -1
/* 80034DF4  7C 60 19 10 */	subfe r3, r0, r3
/* 80034DF8  4E 80 00 20 */	blr 
