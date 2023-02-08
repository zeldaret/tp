lbl_801BD1D4:
/* 801BD1D4  88 83 01 71 */	lbz r4, 0x171(r3)
/* 801BD1D8  88 03 01 6C */	lbz r0, 0x16c(r3)
/* 801BD1DC  7C 04 00 50 */	subf r0, r4, r0
/* 801BD1E0  7C 03 07 74 */	extsb r3, r0
/* 801BD1E4  4E 80 00 20 */	blr 
