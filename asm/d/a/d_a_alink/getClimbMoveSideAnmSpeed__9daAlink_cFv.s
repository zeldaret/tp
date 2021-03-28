lbl_800FE034:
/* 800FE034  3C 80 80 39 */	lis r4, m__20daAlinkHIO_ladder_c0@ha
/* 800FE038  38 84 EB 8C */	addi r4, r4, m__20daAlinkHIO_ladder_c0@l
/* 800FE03C  C0 44 00 5C */	lfs f2, 0x5c(r4)
/* 800FE040  C0 23 33 A8 */	lfs f1, 0x33a8(r3)
/* 800FE044  C0 04 00 60 */	lfs f0, 0x60(r4)
/* 800FE048  EC 00 10 28 */	fsubs f0, f0, f2
/* 800FE04C  EC 01 00 32 */	fmuls f0, f1, f0
/* 800FE050  EC 22 00 2A */	fadds f1, f2, f0
/* 800FE054  4E 80 00 20 */	blr 
