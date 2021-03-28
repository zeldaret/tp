lbl_800F7C50:
/* 800F7C50  3C 80 80 39 */	lis r4, m__20daAlinkHIO_crouch_c0@ha
/* 800F7C54  38 84 E0 1C */	addi r4, r4, m__20daAlinkHIO_crouch_c0@l
/* 800F7C58  C0 44 00 44 */	lfs f2, 0x44(r4)
/* 800F7C5C  C0 23 33 A8 */	lfs f1, 0x33a8(r3)
/* 800F7C60  C0 04 00 40 */	lfs f0, 0x40(r4)
/* 800F7C64  EC 00 10 28 */	fsubs f0, f0, f2
/* 800F7C68  EC 01 00 32 */	fmuls f0, f1, f0
/* 800F7C6C  EC 22 00 2A */	fadds f1, f2, f0
/* 800F7C70  4E 80 00 20 */	blr 
