lbl_802FEA60:
/* 802FEA60  C0 23 00 00 */	lfs f1, 0(r3)
/* 802FEA64  C0 04 00 00 */	lfs f0, 0(r4)
/* 802FEA68  D0 03 00 00 */	stfs f0, 0(r3)
/* 802FEA6C  D0 24 00 00 */	stfs f1, 0(r4)
/* 802FEA70  4E 80 00 20 */	blr 
