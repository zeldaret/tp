lbl_80D64090:
/* 80D64090  3C 80 80 D6 */	lis r4, lit_3680@ha
/* 80D64094  C0 24 42 00 */	lfs f1, lit_3680@l(r4)
/* 80D64098  C0 03 04 EC */	lfs f0, 0x4ec(r3)
/* 80D6409C  EC 01 00 32 */	fmuls f0, f1, f0
/* 80D640A0  D0 03 05 6C */	stfs f0, 0x56c(r3)
/* 80D640A4  C0 03 05 6C */	lfs f0, 0x56c(r3)
/* 80D640A8  EC 00 00 32 */	fmuls f0, f0, f0
/* 80D640AC  D0 03 05 70 */	stfs f0, 0x570(r3)
/* 80D640B0  4E 80 00 20 */	blr 
