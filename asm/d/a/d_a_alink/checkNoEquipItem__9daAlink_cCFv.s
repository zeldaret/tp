lbl_800D084C:
/* 800D084C  A0 03 2F DC */	lhz r0, 0x2fdc(r3)
/* 800D0850  20 00 00 FF */	subfic r0, r0, 0xff
/* 800D0854  7C 00 00 34 */	cntlzw r0, r0
/* 800D0858  54 03 D9 7E */	srwi r3, r0, 5
/* 800D085C  4E 80 00 20 */	blr 
