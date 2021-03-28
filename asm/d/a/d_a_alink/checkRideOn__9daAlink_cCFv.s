lbl_800CFEB0:
/* 800CFEB0  88 63 2F AA */	lbz r3, 0x2faa(r3)
/* 800CFEB4  30 03 FF FF */	addic r0, r3, -1
/* 800CFEB8  7C 00 19 10 */	subfe r0, r0, r3
/* 800CFEBC  54 03 06 3E */	clrlwi r3, r0, 0x18
/* 800CFEC0  4E 80 00 20 */	blr 
