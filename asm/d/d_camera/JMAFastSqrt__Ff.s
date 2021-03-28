lbl_80182A24:
/* 80182A24  C0 02 9C A0 */	lfs f0, lit_5656(r2)
/* 80182A28  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80182A2C  4C 81 00 20 */	blelr 
/* 80182A30  FC 00 08 34 */	frsqrte f0, f1
/* 80182A34  EC 20 00 72 */	fmuls f1, f0, f1
/* 80182A38  4E 80 00 20 */	blr 
