lbl_80BB0DA8:
/* 80BB0DA8  3C 80 80 BB */	lis r4, lit_4250@ha
/* 80BB0DAC  C0 04 38 30 */	lfs f0, lit_4250@l(r4)
/* 80BB0DB0  D0 03 05 2C */	stfs f0, 0x52c(r3)
/* 80BB0DB4  38 00 00 02 */	li r0, 2
/* 80BB0DB8  90 03 10 AC */	stw r0, 0x10ac(r3)
/* 80BB0DBC  4E 80 00 20 */	blr 
