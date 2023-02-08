lbl_800FE010:
/* 800FE010  3C 80 80 39 */	lis r4, m__20daAlinkHIO_ladder_c0@ha /* 0x8038EB8C@ha */
/* 800FE014  38 84 EB 8C */	addi r4, r4, m__20daAlinkHIO_ladder_c0@l /* 0x8038EB8C@l */
/* 800FE018  C0 44 00 64 */	lfs f2, 0x64(r4)
/* 800FE01C  C0 23 33 A8 */	lfs f1, 0x33a8(r3)
/* 800FE020  C0 04 00 68 */	lfs f0, 0x68(r4)
/* 800FE024  EC 00 10 28 */	fsubs f0, f0, f2
/* 800FE028  EC 01 00 32 */	fmuls f0, f1, f0
/* 800FE02C  EC 22 00 2A */	fadds f1, f2, f0
/* 800FE030  4E 80 00 20 */	blr 
