lbl_80BB09C8:
/* 80BB09C8  3C 80 80 BB */	lis r4, lit_4250@ha
/* 80BB09CC  C0 04 38 30 */	lfs f0, lit_4250@l(r4)
/* 80BB09D0  D0 03 05 2C */	stfs f0, 0x52c(r3)
/* 80BB09D4  38 00 00 01 */	li r0, 1
/* 80BB09D8  90 03 10 AC */	stw r0, 0x10ac(r3)
/* 80BB09DC  4E 80 00 20 */	blr 
