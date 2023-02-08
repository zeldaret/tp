lbl_80A5DD00:
/* 80A5DD00  A0 03 00 06 */	lhz r0, 6(r3)
/* 80A5DD04  7C 00 23 78 */	or r0, r0, r4
/* 80A5DD08  B0 03 00 06 */	sth r0, 6(r3)
/* 80A5DD0C  4E 80 00 20 */	blr 
