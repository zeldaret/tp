lbl_80A1D824:
/* 80A1D824  2C 04 00 00 */	cmpwi r4, 0
/* 80A1D828  4D 80 00 20 */	bltlr 
/* 80A1D82C  2C 04 00 04 */	cmpwi r4, 4
/* 80A1D830  4C 80 00 20 */	bgelr 
/* 80A1D834  A8 03 14 3C */	lha r0, 0x143c(r3)
/* 80A1D838  7C 04 00 00 */	cmpw r4, r0
/* 80A1D83C  4D 82 00 20 */	beqlr 
/* 80A1D840  B0 83 14 3C */	sth r4, 0x143c(r3)
/* 80A1D844  4E 80 00 20 */	blr 
