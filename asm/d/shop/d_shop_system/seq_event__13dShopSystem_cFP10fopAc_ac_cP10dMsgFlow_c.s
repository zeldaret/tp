lbl_8019A0C0:
/* 8019A0C0  A0 03 0E 30 */	lhz r0, 0xe30(r3)
/* 8019A0C4  7C 00 00 34 */	cntlzw r0, r0
/* 8019A0C8  54 03 D9 7E */	srwi r3, r0, 5
/* 8019A0CC  4E 80 00 20 */	blr 
