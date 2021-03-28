lbl_802BD704:
/* 802BD704  88 03 01 DC */	lbz r0, 0x1dc(r3)
/* 802BD708  28 00 00 00 */	cmplwi r0, 0
/* 802BD70C  4D 82 00 20 */	beqlr 
/* 802BD710  C0 03 00 04 */	lfs f0, 4(r3)
/* 802BD714  EC 21 00 32 */	fmuls f1, f1, f0
/* 802BD718  4E 80 00 20 */	blr 
