lbl_80459D0C:
/* 80459D0C  C0 44 05 3C */	lfs f2, 0x53c(r4)
/* 80459D10  3C A0 80 46 */	lis r5, lit_3823@ha /* 0x8045C9FC@ha */
/* 80459D14  C0 25 C9 FC */	lfs f1, lit_3823@l(r5)  /* 0x8045C9FC@l */
/* 80459D18  C0 03 05 18 */	lfs f0, 0x518(r3)
/* 80459D1C  EC 01 00 32 */	fmuls f0, f1, f0
/* 80459D20  EC 02 00 2A */	fadds f0, f2, f0
/* 80459D24  D0 04 05 3C */	stfs f0, 0x53c(r4)
/* 80459D28  C0 24 05 54 */	lfs f1, 0x554(r4)
/* 80459D2C  C0 03 05 18 */	lfs f0, 0x518(r3)
/* 80459D30  EC 01 00 2A */	fadds f0, f1, f0
/* 80459D34  D0 04 05 54 */	stfs f0, 0x554(r4)
/* 80459D38  4E 80 00 20 */	blr 
