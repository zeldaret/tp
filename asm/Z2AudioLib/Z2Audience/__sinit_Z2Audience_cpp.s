lbl_802BDEDC:
/* 802BDEDC  C0 2D 82 5C */	lfs f1, MAX_VOLUME_DISTANCE__7Z2Param(r13)
/* 802BDEE0  C0 0D 82 58 */	lfs f0, DISTANCE_MAX__7Z2Param(r13)
/* 802BDEE4  EC 01 00 24 */	fdivs f0, f1, f0
/* 802BDEE8  D0 0D 8D D0 */	stfs f0, cNearFarRatio(r13)
/* 802BDEEC  4E 80 00 20 */	blr 
