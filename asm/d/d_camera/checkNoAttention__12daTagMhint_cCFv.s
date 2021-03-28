lbl_80182D78:
/* 80182D78  88 03 05 6D */	lbz r0, 0x56d(r3)
/* 80182D7C  20 00 00 FF */	subfic r0, r0, 0xff
/* 80182D80  7C 00 00 34 */	cntlzw r0, r0
/* 80182D84  54 03 D9 7E */	srwi r3, r0, 5
/* 80182D88  4E 80 00 20 */	blr 
