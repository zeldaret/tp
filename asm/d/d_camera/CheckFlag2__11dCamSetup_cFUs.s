lbl_80182BB8:
/* 80182BB8  54 84 04 3E */	clrlwi r4, r4, 0x10
/* 80182BBC  A0 03 00 0A */	lhz r0, 0xa(r3)
/* 80182BC0  7C 83 00 38 */	and r3, r4, r0
/* 80182BC4  30 03 FF FF */	addic r0, r3, -1
/* 80182BC8  7C 60 19 10 */	subfe r3, r0, r3
/* 80182BCC  4E 80 00 20 */	blr 
