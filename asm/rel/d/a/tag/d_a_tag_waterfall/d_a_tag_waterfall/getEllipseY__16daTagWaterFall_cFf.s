lbl_80D64724:
/* 80D64724  C0 03 05 6C */	lfs f0, 0x56c(r3)
/* 80D64728  C0 83 05 68 */	lfs f4, 0x568(r3)
/* 80D6472C  EC 60 00 32 */	fmuls f3, f0, f0
/* 80D64730  3C 60 80 D6 */	lis r3, lit_3803@ha /* 0x80D64D80@ha */
/* 80D64734  C0 43 4D 80 */	lfs f2, lit_3803@l(r3)  /* 0x80D64D80@l */
/* 80D64738  EC 21 00 72 */	fmuls f1, f1, f1
/* 80D6473C  EC 04 01 32 */	fmuls f0, f4, f4
/* 80D64740  EC 01 00 24 */	fdivs f0, f1, f0
/* 80D64744  EC 02 00 28 */	fsubs f0, f2, f0
/* 80D64748  EC 23 00 32 */	fmuls f1, f3, f0
/* 80D6474C  3C 60 80 D6 */	lis r3, lit_3758@ha /* 0x80D64D74@ha */
/* 80D64750  C0 03 4D 74 */	lfs f0, lit_3758@l(r3)  /* 0x80D64D74@l */
/* 80D64754  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80D64758  4C 81 00 20 */	blelr 
/* 80D6475C  FC 00 08 34 */	frsqrte f0, f1
/* 80D64760  EC 20 00 72 */	fmuls f1, f0, f1
/* 80D64764  4E 80 00 20 */	blr 
