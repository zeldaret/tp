lbl_80182CB4:
/* 80182CB4  54 84 04 3E */	clrlwi r4, r4, 0x10
/* 80182CB8  80 63 00 10 */	lwz r3, 0x10(r3)
/* 80182CBC  A0 03 00 06 */	lhz r0, 6(r3)
/* 80182CC0  7C 83 00 38 */	and r3, r4, r0
/* 80182CC4  30 03 FF FF */	addic r0, r3, -1
/* 80182CC8  7C 60 19 10 */	subfe r3, r0, r3
/* 80182CCC  4E 80 00 20 */	blr 
