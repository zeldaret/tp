lbl_804BB2D4:
/* 804BB2D4  3C 60 80 4C */	lis r3, lit_4882@ha
/* 804BB2D8  C0 03 B5 8C */	lfs f0, lit_4882@l(r3)
/* 804BB2DC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804BB2E0  4C 81 00 20 */	blelr 
/* 804BB2E4  FC 00 08 34 */	frsqrte f0, f1
/* 804BB2E8  EC 20 00 72 */	fmuls f1, f0, f1
/* 804BB2EC  4E 80 00 20 */	blr 
