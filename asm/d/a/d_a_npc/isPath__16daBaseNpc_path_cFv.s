lbl_8014D9A8:
/* 8014D9A8  80 63 00 04 */	lwz r3, 4(r3)
/* 8014D9AC  30 03 FF FF */	addic r0, r3, -1
/* 8014D9B0  7C 00 19 10 */	subfe r0, r0, r3
/* 8014D9B4  54 03 06 3E */	clrlwi r3, r0, 0x18
/* 8014D9B8  4E 80 00 20 */	blr 
