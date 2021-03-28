lbl_801C25C0:
/* 801C25C0  28 04 00 00 */	cmplwi r4, 0
/* 801C25C4  41 82 00 0C */	beq lbl_801C25D0
/* 801C25C8  C0 0D 88 F8 */	lfs f0, mAllCenterX__8dMpath_c(r13)
/* 801C25CC  D0 04 00 00 */	stfs f0, 0(r4)
lbl_801C25D0:
/* 801C25D0  28 05 00 00 */	cmplwi r5, 0
/* 801C25D4  4D 82 00 20 */	beqlr 
/* 801C25D8  C0 0D 88 FC */	lfs f0, mAllCenterZ__8dMpath_c(r13)
/* 801C25DC  D0 05 00 00 */	stfs f0, 0(r5)
/* 801C25E0  4E 80 00 20 */	blr 
