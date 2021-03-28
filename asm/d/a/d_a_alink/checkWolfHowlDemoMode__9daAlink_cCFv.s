lbl_800D04A4:
/* 800D04A4  A0 03 2F E8 */	lhz r0, 0x2fe8(r3)
/* 800D04A8  20 00 00 ED */	subfic r0, r0, 0xed
/* 800D04AC  7C 00 00 34 */	cntlzw r0, r0
/* 800D04B0  54 03 D9 7E */	srwi r3, r0, 5
/* 800D04B4  4E 80 00 20 */	blr 
