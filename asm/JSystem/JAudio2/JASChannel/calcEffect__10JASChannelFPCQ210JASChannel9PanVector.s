lbl_8029ABA8:
/* 8029ABA8  C0 43 00 08 */	lfs f2, 8(r3)
/* 8029ABAC  C0 23 00 00 */	lfs f1, 0(r3)
/* 8029ABB0  C0 03 00 04 */	lfs f0, 4(r3)
/* 8029ABB4  EC 01 00 2A */	fadds f0, f1, f0
/* 8029ABB8  EC 22 00 2A */	fadds f1, f2, f0
/* 8029ABBC  4E 80 00 20 */	blr 
