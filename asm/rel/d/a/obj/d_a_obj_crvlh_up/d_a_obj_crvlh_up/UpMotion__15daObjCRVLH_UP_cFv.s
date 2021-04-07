lbl_80BD4FB0:
/* 80BD4FB0  C0 23 05 DC */	lfs f1, 0x5dc(r3)
/* 80BD4FB4  3C 80 80 BD */	lis r4, lit_3681@ha /* 0x80BD5A00@ha */
/* 80BD4FB8  C0 04 5A 00 */	lfs f0, lit_3681@l(r4)  /* 0x80BD5A00@l */
/* 80BD4FBC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80BD4FC0  4D 80 00 20 */	bltlr 
/* 80BD4FC4  3C 80 80 BD */	lis r4, lit_3682@ha /* 0x80BD5A04@ha */
/* 80BD4FC8  C0 04 5A 04 */	lfs f0, lit_3682@l(r4)  /* 0x80BD5A04@l */
/* 80BD4FCC  EC 01 00 2A */	fadds f0, f1, f0
/* 80BD4FD0  D0 03 05 DC */	stfs f0, 0x5dc(r3)
/* 80BD4FD4  4E 80 00 20 */	blr 
