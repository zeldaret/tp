lbl_800D0998:
/* 800D0998  A0 03 2F DC */	lhz r0, 0x2fdc(r3)
/* 800D099C  20 00 01 03 */	subfic r0, r0, 0x103
/* 800D09A0  7C 00 00 34 */	cntlzw r0, r0
/* 800D09A4  54 03 D9 7E */	srwi r3, r0, 5
/* 800D09A8  4E 80 00 20 */	blr 
