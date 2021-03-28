lbl_8003FE54:
/* 8003FE54  88 03 00 30 */	lbz r0, 0x30(r3)
/* 8003FE58  7C 00 07 74 */	extsb r0, r0
/* 8003FE5C  7C 04 00 50 */	subf r0, r4, r0
/* 8003FE60  7C 00 00 34 */	cntlzw r0, r0
/* 8003FE64  54 03 D9 7E */	srwi r3, r0, 5
/* 8003FE68  4E 80 00 20 */	blr 
