lbl_800D0A30:
/* 800D0A30  A0 03 2F DC */	lhz r0, 0x2fdc(r3)
/* 800D0A34  20 00 00 46 */	subfic r0, r0, 0x46
/* 800D0A38  7C 00 00 34 */	cntlzw r0, r0
/* 800D0A3C  54 03 D9 7E */	srwi r3, r0, 5
/* 800D0A40  4E 80 00 20 */	blr 
