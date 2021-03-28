lbl_80293ABC:
/* 80293ABC  A0 A3 00 4E */	lhz r5, 0x4e(r3)
/* 80293AC0  38 00 00 01 */	li r0, 1
/* 80293AC4  7C 04 20 30 */	slw r4, r0, r4
/* 80293AC8  7C A0 20 39 */	and. r0, r5, r4
/* 80293ACC  4D 82 00 20 */	beqlr 
/* 80293AD0  A0 03 00 4C */	lhz r0, 0x4c(r3)
/* 80293AD4  7C 00 23 78 */	or r0, r0, r4
/* 80293AD8  B0 03 00 4C */	sth r0, 0x4c(r3)
/* 80293ADC  4E 80 00 20 */	blr 
