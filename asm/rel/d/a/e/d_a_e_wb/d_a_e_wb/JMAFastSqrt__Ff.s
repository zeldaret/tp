lbl_807E2720:
/* 807E2720  3C 60 80 7E */	lis r3, lit_4476@ha
/* 807E2724  C0 03 29 D4 */	lfs f0, lit_4476@l(r3)
/* 807E2728  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807E272C  4C 81 00 20 */	blelr 
/* 807E2730  FC 00 08 34 */	frsqrte f0, f1
/* 807E2734  EC 20 00 72 */	fmuls f1, f0, f1
/* 807E2738  4E 80 00 20 */	blr 
