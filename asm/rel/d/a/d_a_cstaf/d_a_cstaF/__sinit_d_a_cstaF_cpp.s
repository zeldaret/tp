lbl_804DF874:
/* 804DF874  3C 60 80 4E */	lis r3, lit_5096@ha
/* 804DF878  C0 23 F9 9C */	lfs f1, lit_5096@l(r3)
/* 804DF87C  FC 00 08 34 */	frsqrte f0, f1
/* 804DF880  EC 20 00 72 */	fmuls f1, f0, f1
/* 804DF884  3C 60 80 4E */	lis r3, lit_4727@ha
/* 804DF888  C0 03 F9 74 */	lfs f0, lit_4727@l(r3)
/* 804DF88C  EC 00 08 2A */	fadds f0, f0, f1
/* 804DF890  3C 60 80 4E */	lis r3, l_cancelOffset@ha
/* 804DF894  D0 03 FA D8 */	stfs f0, l_cancelOffset@l(r3)
/* 804DF898  4E 80 00 20 */	blr 
