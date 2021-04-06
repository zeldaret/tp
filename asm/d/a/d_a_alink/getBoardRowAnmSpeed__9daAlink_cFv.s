lbl_801066B8:
/* 801066B8  3C 80 80 39 */	lis r4, m__19daAlinkHIO_board_c0@ha /* 0x8038E870@ha */
/* 801066BC  38 84 E8 70 */	addi r4, r4, m__19daAlinkHIO_board_c0@l /* 0x8038E870@l */
/* 801066C0  C0 84 00 88 */	lfs f4, 0x88(r4)
/* 801066C4  C0 04 00 78 */	lfs f0, 0x78(r4)
/* 801066C8  EC 60 20 28 */	fsubs f3, f0, f4
/* 801066CC  C0 42 92 B8 */	lfs f2, lit_6040(r2)
/* 801066D0  C0 23 33 98 */	lfs f1, 0x3398(r3)
/* 801066D4  C0 04 00 7C */	lfs f0, 0x7c(r4)
/* 801066D8  EC 01 00 24 */	fdivs f0, f1, f0
/* 801066DC  EC 02 00 28 */	fsubs f0, f2, f0
/* 801066E0  EC 03 00 32 */	fmuls f0, f3, f0
/* 801066E4  EC 24 00 2A */	fadds f1, f4, f0
/* 801066E8  4E 80 00 20 */	blr 
