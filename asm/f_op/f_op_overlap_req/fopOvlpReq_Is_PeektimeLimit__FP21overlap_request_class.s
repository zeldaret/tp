lbl_8001EAB4:
/* 8001EAB4  A0 03 00 06 */	lhz r0, 6(r3)
/* 8001EAB8  7C 00 00 34 */	cntlzw r0, r0
/* 8001EABC  54 03 D9 7E */	srwi r3, r0, 5
/* 8001EAC0  4E 80 00 20 */	blr 
