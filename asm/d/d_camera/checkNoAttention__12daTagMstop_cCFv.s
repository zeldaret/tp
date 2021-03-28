lbl_80182D64:
/* 80182D64  88 03 05 6B */	lbz r0, 0x56b(r3)
/* 80182D68  20 00 00 FF */	subfic r0, r0, 0xff
/* 80182D6C  7C 00 00 34 */	cntlzw r0, r0
/* 80182D70  54 03 D9 7E */	srwi r3, r0, 5
/* 80182D74  4E 80 00 20 */	blr 
