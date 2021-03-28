lbl_80182BD0:
/* 80182BD0  54 84 04 3E */	clrlwi r4, r4, 0x10
/* 80182BD4  A0 03 00 08 */	lhz r0, 8(r3)
/* 80182BD8  7C 83 00 38 */	and r3, r4, r0
/* 80182BDC  30 03 FF FF */	addic r0, r3, -1
/* 80182BE0  7C 60 19 10 */	subfe r3, r0, r3
/* 80182BE4  4E 80 00 20 */	blr 
