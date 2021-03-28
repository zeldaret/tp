lbl_80041460:
/* 80041460  3C 60 80 45 */	lis r3, __float_max@ha
/* 80041464  C0 23 0A E8 */	lfs f1, __float_max@l(r3)
/* 80041468  D0 2D 88 E8 */	stfs f1, mMinX__8dMpath_c(r13)
/* 8004146C  FC 00 08 50 */	fneg f0, f1
/* 80041470  D0 0D 88 EC */	stfs f0, mMaxX__8dMpath_c(r13)
/* 80041474  D0 2D 88 F0 */	stfs f1, mMinZ__8dMpath_c(r13)
/* 80041478  D0 0D 88 F4 */	stfs f0, mMaxZ__8dMpath_c(r13)
/* 8004147C  4E 80 00 20 */	blr 
